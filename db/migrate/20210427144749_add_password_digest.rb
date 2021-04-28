class AddPasswordDigest < ActiveRecord::Migration[6.1]
  def change
    add_columns :users, :password_digest, type: :string
  end
end
