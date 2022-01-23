class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.references :lottery
      t.integer :number
      t.integer :amount
      t.string :client_name

      t.timestamps
    end
  end
end
