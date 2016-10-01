class AddPasswordToPilots < ActiveRecord::Migration
  def change
    add_column :pilots, :password_digest, :string
  end
end
