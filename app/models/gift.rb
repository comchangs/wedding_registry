class Gift < ApplicationRecord

    belongs_to :guest
    has_many :registries

end

