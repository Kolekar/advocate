class CreateCourtComplexes < ActiveRecord::Migration
  def change
    create_table :court_complexes do |t|
      t.string :name
      t.string :court_complex_id
      t.integer :district_id

      t.timestamps null: false
    end
  end
end
