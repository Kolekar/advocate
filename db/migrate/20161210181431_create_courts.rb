class CreateCourts < ActiveRecord::Migration
  def change
    create_table :courts do |t|
      t.integer :court_complex_id
      t.string :name
      t.string :court_id

      t.timestamps
    end
  end
end
