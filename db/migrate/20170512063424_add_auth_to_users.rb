class AddAuthToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_admin, :string
  end
end