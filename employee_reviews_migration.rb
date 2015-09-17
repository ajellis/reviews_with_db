require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'employee_reviews.sqlite3'
)

class EmployeeReviews < ActiveRecord::Migration
  # # def up
  # #   create_table :employees do |t|
  # #     t.integer :department_id
  # #     t.string :name
  # #     t.string :number
  # #     t.string :email
  # #     t.integer :salary
  #
  #
  #
  #   end
  #   #
  #   # create_table :departments do |t|
  #   #   t.string :name
  #   # end
  #
  # end

  def down
    drop_table :employees
  end

  def up
    change_column :employees, :satisfactory, :boolean, default: true
  end

end


EmployeeReviews.migrate(:up)
# EmployeeReviews.migrate(:down)
