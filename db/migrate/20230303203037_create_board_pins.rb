class CreateBoardPins < ActiveRecord::Migration[7.0]
  def change
    create_table :board_pins do |t|
      t.references :pin, null: false, foreign_key: true
      t.references :board, null: false, foreign_key: true

      t.timestamps
    end
  end
end
