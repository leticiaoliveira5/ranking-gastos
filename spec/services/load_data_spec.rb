require 'rails_helper'

RSpec.describe LoadData, type: :service do

  let(:csv_file_path) { 'spec/fixtures/csv_file.csv' }
  let(:subject) { described_class.new(csv_file: csv_file_path) }

  describe '#call' do
    it 'insere os dados do estado nas tabelas deputy e expenditure' do
      expect{ subject.call }
        .to change(Deputy, :count).by(1)
        .and change(Expenditure, :count).by(2)
    end
  end
end
