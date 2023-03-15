class AddRatingAndWebsiteToRecs < ActiveRecord::Migration[7.0]
  def change
    add_column :recs, :rating, :integer
    add_column :recs, :website, :string
  end
end
