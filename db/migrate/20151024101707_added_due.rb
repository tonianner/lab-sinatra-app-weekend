class AddedDue < ActiveRecord::Migration
  def change
    add_column :checklists, :date_due, :string
  end
end
