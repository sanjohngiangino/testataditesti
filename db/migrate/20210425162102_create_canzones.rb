class CreateCanzones < ActiveRecord::Migration[6.1]
  def change
    create_table :canzones do |t|
      t.text :testos
      t.references :songgoer, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
