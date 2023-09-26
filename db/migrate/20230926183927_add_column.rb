class AddColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :videos, :user_id, :string
  end
end
