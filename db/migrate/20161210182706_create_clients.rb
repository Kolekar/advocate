class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :mobile
      t.string :name
      t.string :email
      t.text :address
      t.string :city
      t.integer :district_id
      t.integer :user_id

      t.timestamps
    end
  end
end
