class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :catname
      t.string :money
      t.string :career
      t.string :health
      t.string :fun
      t.string :personal 
    end
  end
end
