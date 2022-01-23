class CreateTypeLotteries < ActiveRecord::Migration[6.0]
  def change
    create_table :type_lotteries do |t|
      t.string :type
      t.boolean :status
    end
  end
end
