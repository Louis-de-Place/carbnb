class RenameCommentsToReviews < ActiveRecord::Migration[7.1]
  def change
    rename_table :comments, :reviews
  end
end
