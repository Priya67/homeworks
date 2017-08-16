class CreateHouseTable < ActiveRecord::Migration[5.1]
  def change
    create_table :house_tables do |t|
      t.string :address

      t.timestamps
    end
  end
end
