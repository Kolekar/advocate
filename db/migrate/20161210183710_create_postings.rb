class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.date :posting_date
      t.text :bussness
      t.text :short_order
      t.integer :previous_posting_id
      t.text :posting_purpose
      t.integer :case_id

      t.timestamps
    end
  end
end
