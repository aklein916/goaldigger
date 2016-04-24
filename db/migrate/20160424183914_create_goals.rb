class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.text :description
      t.date :deadline
      t.text :steps
      t.boolean :complete
    end
  end
end
