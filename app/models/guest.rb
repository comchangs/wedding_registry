class Guest < ApplicationRecord

    belongs_to :wedding, optional: true

    def self.search(search)
        if search
           Guest.where(:name => search).first
        end

    end


end