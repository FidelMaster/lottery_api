class CreateRestrictionLotteries < ActiveRecord::Migration[6.0]
  def change
    create_table :restriction_lotteries do |t|
      t.references :lottery
      t.integer :number
      t.integer :max_valua
      t.boolean :state
      t.timestamps
    end
  end
end
