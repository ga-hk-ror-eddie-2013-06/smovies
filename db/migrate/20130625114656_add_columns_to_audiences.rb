class AddColumnsToAudiences < ActiveRecord::Migration
  def change
    add_column :audiences, :provider, :string
    add_column :audiences, :uid, :string
    add_column :audiences, :name, :string
  end
end
