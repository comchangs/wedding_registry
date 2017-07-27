wedding1 = Wedding.create(name: 'Smith-Jones')
wedding2 = Wedding.create(name: 'Davis-Davis')
registry1 = Registry.create(wedding_id: wedding1.id)
registry2 = Registry.create(wedding_id: wedding2.id)
guest1 = Guest.create(name: "Sharon King", wedding_id: wedding1.id)
guest2 = Guest.create(name: "Nancy Dough", wedding_id: wedding2.id)
gift1 = Gift.create(name: "toaster", registry_id: registry1.id)
gift2 = Gift.create(name: "blender", registry_id: registry1.id)
gift3 = Gift.create(name: "mixer", registry_id: registry2.id)
gift4 = Gift.create(name: "dishes", registry_id: registry2.id)
wedding1.update_attribute(:registry_id, registry1.id)
wedding2.update_attribute(:registry_id, registry2.id)
gift1.update_attribute(:guest_id, guest1.id)
gift3.update_attribute(:guest_id, guest2.id)





