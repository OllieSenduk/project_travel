class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.string :speciality
      t.integer :age
      t.string :phone_number
      t.references :user, foreign_key: true, index: true
      t.string :address
      t.string :postal_code
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
