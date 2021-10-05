class RemoveUrlsFromPhoto < ActiveRecord::Migration[6.1]
  def change
    remove_column :photos, :urls, :string
  end
end
