class AddCreatedUserToPost < ActiveRecord::Migration
  def change
    add_column :posts, :created_user, :string
  end
end
