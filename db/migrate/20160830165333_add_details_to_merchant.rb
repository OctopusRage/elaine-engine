class AddDetailsToMerchant < ActiveRecord::Migration
  def change
    add_column :merchants, :authentication_token, :string
    add_column :merchants, :name, :string
    add_column :merchants, :gender, :string
    add_column :merchants, :date_of_birth, :date
    add_column :merchants, :phone_number, :string
    add_column :merchants, :verified, :boolean, default: false
    add_column :merchants, :image, :text
    add_column :merchants, :city, :string
    add_index  :merchants, :authentication_token, unique: true
  end
end
