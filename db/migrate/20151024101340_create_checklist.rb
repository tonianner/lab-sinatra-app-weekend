class CreateChecklist < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.string :item_name
      t.string :importance
      t.string :location
      t.string :person_involved

      t.timestamps
    end
  end
end
