class RenameUsersIdColumnToBooks < ActiveRecord::Migration[5.2]
  def change
  	rename_column :books, :users_id, :user_id
  end
end
