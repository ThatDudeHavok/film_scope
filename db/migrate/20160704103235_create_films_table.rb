class CreateFilmsTable < ActiveRecord::Migration
  def change
  	create_table :films do |t|
			t.string :name, {null: false}
			t.string :runtime

			t.timestamp(null: false)
  	end
  end
end
