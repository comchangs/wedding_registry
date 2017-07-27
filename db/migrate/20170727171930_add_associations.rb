class AddAssociations < ActiveRecord::Migration[5.1]
  def change
    add_reference :weddings, :registry, foreign_key: true
    add_reference :gifts, :registry, foreign_key: true
    add_reference :gifts, :guest, foreign_key: true
    add_reference :registries, :wedding, foreign_key: true
    add_reference :guests, :wedding, foreign_key: true
    
  end
end
