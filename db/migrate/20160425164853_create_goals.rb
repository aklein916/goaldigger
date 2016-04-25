class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.date :deadline
      t.text :description
      t.string :category
      t.boolean :complete
    end
  end
end
