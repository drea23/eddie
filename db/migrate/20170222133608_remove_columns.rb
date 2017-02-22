class RemoveColumns < ActiveRecord::Migration[5.0]
  def self.up
  remove_column :users, :username
  remove_column :artists, :email
  end
end
