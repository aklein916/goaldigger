class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :financial
      t.string :health
      t.string :career
      t.string :personal
      t.string :fun 

    end
  end
end
