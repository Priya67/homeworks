class CreatePersonTable < ActiveRecord::Migration[5.1]
  def change
    create_table :person do |t|
      t.string :name, null: false
      t.integer :house_id
      t.timestamps
    end

  # def down
  #   drop_table :person
  # end
  end
end
