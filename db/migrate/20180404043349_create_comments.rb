class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :video, foreign_key: true
      t.references :user, foreign_key: true
      t.text :body
      t.string :current_duration

      t.timestamps
    end
  end
end
