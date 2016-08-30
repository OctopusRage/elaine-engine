class AddDetailsToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :authentication_token, :string
    add_column :customers, :name, :string
    add_column :customers, :gender, :string
    add_column :customers, :date_of_birth, :date
    add_column :customers, :phone_number, :string
    add_column :customers, :verified, :boolean, default: false
    add_column :customers, :image, :text
    add_column :customers, :city, :string
    add_index  :customers, :authentication_token, unique: true
  end
end
