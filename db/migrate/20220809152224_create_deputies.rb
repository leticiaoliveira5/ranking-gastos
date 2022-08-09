class CreateDeputies < ActiveRecord::Migration[7.0]
  def change
    create_table :deputies do |t|

      t.timestamps
      t.string  :name
      t.integer :registration_id, unique: true
      t.integer :portfolio_number
      t.integer :legislature_number
      t.integer :legislature_code
      t.string  :uf_initials, limit: 2
      t.string  :party_initials, limit: 10
    end
  end
end
