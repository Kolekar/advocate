class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.date :posting_date
      t.text :bussness
      t.text :short_order
      t.integer :next_posting_id
      t.text :next_posting_purpose

      t.timestamps
    end
  end
end
