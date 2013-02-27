class AddDuedateToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :duedate, :date
  end
end
