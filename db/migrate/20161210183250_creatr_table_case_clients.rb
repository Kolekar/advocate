class CreatrTableCaseClients < ActiveRecord::Migration
  def change
  	create_table :case_clients do |t|
      t.integer :client_id
      t.integer :case_id

      t.timestamps
    end
  end
end
