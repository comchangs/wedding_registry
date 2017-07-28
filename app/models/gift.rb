class Gift < ApplicationRecord

    belongs_to :guest, optional: true

    def self.detail(id)
        Gift.find(id)
    end


end

