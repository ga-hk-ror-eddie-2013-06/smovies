class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :price
      t.datetime :started_at

      t.timestamps
    end
  end
end
