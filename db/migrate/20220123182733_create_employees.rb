class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.references :user
      t.string :dni
      t.string :full_name
      t.string :cellphone

      t.timestamps
    end
  end
end
