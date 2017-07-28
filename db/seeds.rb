wedding1 = Wedding.create(name: 'Smith-Jones')
wedding2 = Wedding.create(name: 'Davis-Davis')
registry1 = Registry.create(wedding_id: wedding1.id)
registry2 = Registry.create(wedding_id: wedding2.id)
guest1 = Guest.create(name: "Sharon King", wedding_id: wedding1.id)
guest2 = Guest.create(name: "Nancy Dough", wedding_id: wedding2.id)
gift1 = Gift.create(name: "Toaster", image: "https://images-na.ssl-images-amazon.com/images/I/81B8cmLWq1L._SL1419_.jpg", source: "https://www.amazon.com/Oster-TSSTTRWF4S-4-Slice-Toaster/dp/B007JRUSE0", price: "$39.99", registry_id: registry1.id)
gift2 = Gift.create(name: "Blender", image: "https://images-na.ssl-images-amazon.com/images/I/81XZJqmaOmL._SL1500_.jpg", source: "https://www.amazon.com/Bullet-NutriBullet-12-Piece-High-Speed-Blender/dp/B007TIE0GQ/ref=sr_1_1?s=home-garden&ie=UTF8&qid=1501213013&sr=1-1-spons&keywords=Blender&psc=1", price: "$79.99", registry_id: registry1.id)
gift3 = Gift.create(name: "Mixer", image: "https://images-na.ssl-images-amazon.com/images/I/71jL8qUUFeL._SL1500_.jpg", source: "https://www.amazon.com/KitchenAid-KSM3311XHW-Artisan-Tilt-Head-Honeydew/dp/B01DKR4T24/ref=sr_1_1?s=home-garden&ie=UTF8&qid=1501213077&sr=1-1-spons&keywords=Mixer&psc=1", price: "$100", registry_id: registry2.id)
gift4 = Gift.create(name: "Dishes", image: "https://images-na.ssl-images-amazon.com/images/I/61Rmo6TPAjL._SL1500_.jpg", source: "https://www.amazon.com/AmazonBasics-18-Piece-Dinnerware-Set-Service/dp/B019EEUQ2O/ref=sr_1_1?s=home-garden&ie=UTF8&qid=1501213186&sr=1-1&keywords=Dishes", price: "39.99", registry_id: registry2.id)
wedding1.update_attribute(:registry_id, registry1.id)
wedding2.update_attribute(:registry_id, registry2.id)
gift1.update_attribute(:guest_id, guest1.id)
gift3.update_attribute(:guest_id, guest2.id)
gift1.update_attribute(:status, "claimed")
gift3.update_attribute(:status, "claimed")
