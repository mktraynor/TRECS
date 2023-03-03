class CreateRecs < ActiveRecord::Migration[7.0]
  def change
    create_table :recs do |t|
      t.string :name
      t.string :address
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
