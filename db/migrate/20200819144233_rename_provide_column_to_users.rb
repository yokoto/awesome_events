class RenameProvideColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :provide, :provider
  end
end
