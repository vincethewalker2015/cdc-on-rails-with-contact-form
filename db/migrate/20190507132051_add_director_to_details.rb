class AddDirectorToDetails < ActiveRecord::Migration[5.0]
  def change
    add_column :details, :employee_name, :string
    add_column :details, :title, :string
  end
end
