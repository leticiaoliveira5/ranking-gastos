class LoadData
  require 'csv'

  UF = 'RJ'.freeze

  def initialize(csv_file:)
    @csv_file = csv_file
  end

  def call
    file = File.open(@csv_file)

    deputies = []
    expenditures = []

    CSV.foreach(file, headers: true, col_sep: ';', liberal_parsing: true) do |row|
      next unless row['sgUF'] == UF

      deputies << { name: row['txNomeParlamentar'],
                        registration_id: row['ideCadastro'],
                        portfolio_number: row['nuCarteiraParlamentar'],
                        legislature_number: row['nuLegislatura'],
                        uf_initials: row['sgUF'],
                        party_initials: row['sgPartido'],
                        legislature_code: row['codLegislatura'] }

      expenditures << { deputy_registration_id: row['ideCadastro'],
                        provider_name: row['txtFornecedor'],
                        issue_date: row['datEmissao'],
                        net_amount: row['vlrLiquido'],
                        year: row['numAno'],
                        document_url: row['urlDocumento'] }
    end

    Deputy.insert_all(deputies.uniq)
    Expenditure.insert_all(expenditures)
  end
end
