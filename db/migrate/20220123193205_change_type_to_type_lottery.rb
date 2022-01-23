class ChangeTypeToTypeLottery < ActiveRecord::Migration[6.0]
  def change
    rename_column :type_lotteries, :type, :type_name
  end
end
