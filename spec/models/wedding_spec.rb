require 'rails_helper'

RSpec.describe Wedding, :type => :model do

    it "creates a wedding" do
        wedding = Wedding.create(name: "Jones-Richards")
        expect(wedding.name).to eq( "Jones-Richards")
    end

    it "creates a wedding and an associated registry" do
        wedding = Wedding.create(name: "Jones-Richards")
        registry = Registry.create(wedding_id: wedding.id)
        expect( registry.wedding_id).to eq( wedding.id )

    end


end

