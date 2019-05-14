class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :pin_code
      t.string :name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
