class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.date :creationdate
      t.integer :age
      t.string :photo_url
      t.string :quote
      t.string :email
      t.text :p1
      t.text :p2
      t.text :p3
      t.text :c1
      t.text :c2
      t.text :c3
      t.text :h1
      t.text :h2
      t.text :h3
      t.text :f1
      t.text :f2
      t.text :f3
      t.text :m1
      t.text :m2
      t.text :m3
    end
  end
end
