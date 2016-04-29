class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.date :todays_date
      t.integer :age
      t.string :photo_url
      t.string :email
      t.string :title
      t.date :deadline
      t.text :description
      t.text :step1
      t.text :step2
      t.text :step3
      t.boolean :complete
      t.integer :user_id
      t.references :category, null: false, index:true
    end
  end
end
