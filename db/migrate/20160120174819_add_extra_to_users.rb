class AddExtraToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :cell_number, :string
    add_column :users, :tax_id, :string,  index: true
    add_column :users, :business_name, :string
    add_column :users, :address1, :string
    add_column :users, :address2, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :zip_code, :string
    add_column :users, :years_in_business, :string
    add_column :users, :account_number, :string, index: true, unique: true
  end
end
