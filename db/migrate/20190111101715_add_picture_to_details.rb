class AddPictureToDetails < ActiveRecord::Migration[5.0]
  def change
    add_column :details, :picture, :string
  end
end
