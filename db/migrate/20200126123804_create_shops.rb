class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name, null: false, length: 50
      t.text :description, null: false, length: 1000
      t.string :tel, length: 15
      t.string :address, length: 100
      t.text :homepage, length: 1000
      t.time :opentime, length: 20
      t.time :closetime, length: 20
      t.string :holiday, length: 30

      t.timestamps
    end
  end
end
