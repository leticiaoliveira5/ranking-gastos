class CreateExpenditures < ActiveRecord::Migration[7.0]
  def change
    create_table :expenditures do |t|

      t.timestamps
      t.integer :deputy_id
      t.string :provider_name
      t.datetime :issue_date
      t.integer :net_amount
      t.integer :year
      t.string :document_url
    end
  end
end
