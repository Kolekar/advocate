class CreateOppositions < ActiveRecord::Migration
  def change
    create_table :oppositions do |t|
      t.string :advocate
      t.string :mobile
      t.string :name
      t.string :email
      t.text :address
      t.string :city
      t.integer :district_id
      t.integer :case_id

      t.timestamps
    end
  end
end
