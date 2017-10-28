class RenamePublicationFromBooks < ActiveRecord::Migration[5.1]
  def change
    rename_column :books, :publication, :publication_date
  end
end
