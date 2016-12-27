class AddUsernameToUsers < ActiveRecord::Migration
  def change # anything inside of this method, is translated to SQL code and modified the database
    add_column :users, :username, :string # add a new columb to table "users", called "username" and of type "string"
    add_index :users, :username, unique: true # first, index usernames for quick lookup. Second, ensure usernames are ALWAYS unique.
  end
end
