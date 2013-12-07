class AddRememberTokenToMerchants < ActiveRecord::Migration
  def change
    add_column :merchants, :remember_token, :string
    add_index  :merchants, :remember_token
  end
end
