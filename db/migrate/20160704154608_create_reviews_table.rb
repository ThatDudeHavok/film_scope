class CreateReviewsTable < ActiveRecord::Migration
  def change
  	create_table :reviews do |t|
      t.text :review, {null: false}

      t.timestamps(null: false)
  	end
  end
end
