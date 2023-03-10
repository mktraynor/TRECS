class AddCoordinatesToRecs < ActiveRecord::Migration[7.0]
  def change
    add_column :recs, :latitude, :float
    add_column :recs, :longitude, :float
  end
end
