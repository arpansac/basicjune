class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email
      t.string :password
      t.integer :age

      t.timestamps
    end
  end
end
