class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :username
      t.text :description
      t.string :street
      t.string :zipcode
      t.string :city
      t.string :country
      t.string :phone
      t.string :siret
      t.string :email
      t.string :website
      t.references :domain, foreign_key: true

      t.timestamps
    end
  end
end
