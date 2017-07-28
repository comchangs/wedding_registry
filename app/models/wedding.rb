class Wedding < ApplicationRecord

    has_many :guests

    def self.search(search)
        if search
           Wedding.where(:name => search).first
        end

    end

    def self.detail(id)
        Wedding.find(id)
    end

    def self.get_gifts(wedding)
        registry = Registry.where(:wedding_id => wedding)
        Gift.where(:registry_id => registry)

    end

    def self.get_guests(wedding)
        Guest.where(:wedding_id => wedding)
    end



end