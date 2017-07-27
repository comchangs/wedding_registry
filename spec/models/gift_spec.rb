require 'rails_helper'

RSpec.describe Gift, :type => :model do

    before(:all) do
        @wedding = Wedding.create(name: 'Smith-Jones')
        @guest = Guest.create(name: "Keith Richards", wedding_id: @wedding.id)
        @registry = Registry.create(wedding_id: @wedding.id)
        @gift1 = Gift.create(name: "toaster", registry_id: @registry.id, guest_id: @guest.id)
    end


    it "creates a gift" do
        expect( @gift1.name).to eq ('toaster')
    end

    it "gets the guest name who bought the gift" do
        expect( @gift1.guest.name).to eq( 'Keith Richards')
        end

end

