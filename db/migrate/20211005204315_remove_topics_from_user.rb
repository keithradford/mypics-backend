class RemoveTopicsFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :topics, :string
  end
end
