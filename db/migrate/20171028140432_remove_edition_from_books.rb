class RemoveEditionFromBooks < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :edition, :string
  end
end
