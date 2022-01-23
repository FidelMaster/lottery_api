class AddEmployeeToTicket < ActiveRecord::Migration[6.0]
  def change
    add_reference :employees, :employee, foreign_key: true
  end
end
