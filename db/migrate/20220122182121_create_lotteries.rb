class CreateLotteries < ActiveRecord::Migration[6.0]
  def change
    create_table :lotteries do |t|
      t.references :type_lottery
      t.datetime :date_lottery
      t.time :hour
      t.boolean :status
      t.integer :winning_number
      t.timestamps
    end
  end
end
