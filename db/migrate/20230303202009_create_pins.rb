class CreatePins < ActiveRecord::Migration[7.0]
  def change
    create_table :pins do |t|
      t.references :user, null: false, foreign_key: true
      t.references :rec, null: false, foreign_key: true

      t.timestamps
    end
  end
end
