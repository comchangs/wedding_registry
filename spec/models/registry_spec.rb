require 'rails_helper'

RSpec.describe Registry, :type => :model do

    it "creates a registry" do
        wedding = Wedding.create(name: "Jones-Richards")
        registry = Registry.create( wedding_id: wedding.id)
        expect( registry.wedding_id).to eq (wedding.id)

    end


end

