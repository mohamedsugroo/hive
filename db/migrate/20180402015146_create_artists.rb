class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.string :stage_name
      t.string :birth_place
      t.string :birth_date
      t.text :bio
      t.string :active_status
      t.string :active_from
      t.string :active_to

      t.timestamps
    end
  end
end
