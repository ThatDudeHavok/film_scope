class AddForeignKeyColumnsToReviewsTable < ActiveRecord::Migration
  def change
    add_column :reviews, :reviewer_id, :integer
    add_column :reviews, :film_id, :integer
  end
end
