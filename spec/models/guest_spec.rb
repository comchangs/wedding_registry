require 'rails_helper'

RSpec.describe Guest, :type => :model do

    it "creates a guest" do
        wedding = Wedding.create(name: "Jones-Richards")
        guest = Guest.create(name: "Keith Richards", wedding_id: wedding.id)
        expect(guest.name).to eq( 'Keith Richards')

    end

end

