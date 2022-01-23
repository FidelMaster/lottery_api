class CreateAwardTabulators < ActiveRecord::Migration[6.0]
  def change
    create_table :award_tabulators do |t|
      t.integer :price
      t.integer :award
      t.boolean :state
    end
  end
end
