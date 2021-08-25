class AddProviderToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :provider, :integer
  end
end
