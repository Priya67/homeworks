class NewPersons < ActiveRecord::Migration[5.1]
  def change
      create_table :persons do |t|
        t.string :name, null: false
        t.integer :house_id
        t.timestamps
      end
  end
end
