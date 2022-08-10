class AddDeputyRegistrationIdToExpenditure < ActiveRecord::Migration[7.0]
  def change
    add_column(:expenditures, :deputy_registration_id, :integer)
  end
end
