class AddUseridOnArtist < ActiveRecord::Migration[5.0]
  def change
    add_reference :artists, :user, index: true
  end
end
