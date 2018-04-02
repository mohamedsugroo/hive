class CreateFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :features do |t|
      t.references :artist, foreign_key: true
      t.references :video, foreign_key: true

      t.timestamps
    end
  end
end
