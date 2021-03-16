class CreatePaintings < ActiveRecord::Migration[6.1]
  def change
    create_table :paintings do |t|
      t.binary :painting
      t.references :user, null: false, foreign_key: true
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
