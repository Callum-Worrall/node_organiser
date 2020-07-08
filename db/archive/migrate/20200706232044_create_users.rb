class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.date :date_of_birth
      t.integer :phone_number
      t.string :email
      t.string :address
      t.string :password

      t.timestamps
    end
  end
end
