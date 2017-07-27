class CreateGifts < ActiveRecord::Migration[5.1]
  def change
    create_table :gifts do |t|
      t.string :name
      t.string :image
      t.string :price
      t.string :source
      t.string :status, :default => 'available'
    end
  end
end
