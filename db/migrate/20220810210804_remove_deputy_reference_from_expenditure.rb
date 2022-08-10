class RemoveDeputyReferenceFromExpenditure < ActiveRecord::Migration[7.0]
  def change
    remove_column(:expenditures, :deputy_id, :integer)
  end
end
