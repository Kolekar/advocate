class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.integer :user_id
      t.integer :status_id
      t.integer :state_id
      t.integer :district_id
      t.integer :cort_id
      t.integer :case_type_id
      t.string :case_no
      t.integer :type_of_client_id
      t.integer :type_of_opposition_id

      t.timestamps
    end
  end
end
