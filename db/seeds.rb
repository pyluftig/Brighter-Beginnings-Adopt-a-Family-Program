# encoding: utf-8
Drive.create!(year: 2014, blurb: "<p>Thanks to an overwhelming response, Adopt-a-Family 2013 is now closed. Please contact us at adopt-a-family@brighter-beginnings.org for other ways to support our families this holiday season. </p><p>Years ago, we realized that many of our client families were struggling during the holiday season. To address this need, we launched our Adopt-A-Family program, inviting community members and local companies to 'adopt' one or more families and purchase 'gifts from the heart'. How It Works - Through this 'adoption' process, low-income families are matched with a donor who purchases seasonal gifts and drops them off at one of our centers in Alameda or Contra Costa County. Last year, 250 families, and nearly 1,000 family members had their wish lists fulfilled. Donors contributed time and funds gathering holiday gifts, while others came to our two volunteer wrapping events to add sparkle and holiday magic to the gift bundles before our Staff delivered them to families in need.</p>", start_date: "November 30th, 2014", end_date: "December 25th, 2014", fundraising_url: "http://giftdriver.herokuapp.com")

User.create!(:email => 'pyluftig@gmail.com', :password => 'password', :password_confirmation => 'password')
User.create!(:email => 'ajob@brighter-beginnings.org', :password => 'password', :password_confirmation => 'password')
User.create!(:email => 'bvillafuerte@brighter-beginnings.org', :password => 'password', :password_confirmation => 'password')
User.create!(:email => 'cfong@brighter-beginnings.org', :password => 'password', :password_confirmation => 'password')
User.create!(:email => 'kpatterson-hall@brighter-beginnings.org', :password => 'password', :password_confirmation => 'password')
User.create!(:email => 'ccesena@brighter-beginnings.org', :password => 'password', :password_confirmation => 'password')
User.create!(:email => 'iferrey@brighter-beginnings.org', :password => 'password', :password_confirmation => 'password')
User.create!(:email => 'nhunter@brighter-beginnings.org', :password => 'password', :password_confirmation => 'password')
User.create!(:email => 'dwinokur@brighter-beginnings.org', :password => 'password', :password_confirmation => 'password')

User.create!(:email => 'p@me.com', :password => 'password', :password_confirmation => 'password')
User.create!(:email => 'jlove@me.com', :password => 'password', :password_confirmation => 'password')
User.create!(:email => 'j@me.com', :password => 'password', :password_confirmation => 'password')

SuperAdmin.create!(email: 'pyluftig@gmail.com', user_id: 1, drive_id: Drive.last.id)
SuperAdmin.create!(email: 'ajob@brighter-beginnings.org', user_id: 2, drive_id: Drive.last.id)
SuperAdmin.create!(email: 'bvillafuerte@brighter-beginnings.org', user_id: 3, drive_id: Drive.last.id)

Admin.create!(email: 'cfong@brighter-beginnings.org', user_id: 4, drive_id: Drive.last.id)
Admin.create!(email: 'kpatterson-hall@brighter-beginnings.org', user_id: 5, drive_id: Drive.last.id)
Admin.create!(email: 'ccesena@brighter-beginnings.org', user_id: 6, drive_id: Drive.last.id)
Admin.create!(email: 'iferrey@brighter-beginnings.org', user_id: 7, drive_id: Drive.last.id)
Admin.create!(email: 'nhunter@brighter-beginnings.org', user_id: 8, drive_id: Drive.last.id)
Admin.create!(email: 'dwinokur@brighter-beginnings.org', user_id: 9, drive_id: Drive.last.id)

DropLocation.create!(:drive_id => Drive.last.id, :drop_location_name => 'Richmond', :street => ' 2727 Macdonald Ave', :city => 'Richmond', :state => 'CA', :zipcode => '94804')
DropLocation.create!(:drive_id => Drive.last.id, :drop_location_name => 'Oakland', :street => '2648 International Blvd', :city => 'Oakland', :state => 'CA', :zipcode => '94601')
DropLocation.create!(:drive_id => Drive.last.id, :drop_location_name => 'Antioch', :street => '512 W 5th St', :city => 'Antioch', :state => 'CA', :zipcode => '94509')

DropDate.create!(date: '2014-11-19', start_time: '07:30:00', end_time: '14:30:00', drop_location_id: 1)
DropDate.create!(date: '2014-11-20', start_time: '09:30:00', end_time: '14:00:00', drop_location_id: 1)
DropDate.create!(date: '2014-11-18', start_time: '01:30:00', end_time: '15:00:00', drop_location_id: 2)
DropDate.create!(date: '2014-11-17', start_time: '01:30:00', end_time: '18:30:00', drop_location_id: 2)
DropDate.create!(date: '2014-11-19', start_time: '11:30:00', end_time: '19:30:00', drop_location_id: 3)
DropDate.create!(date: '2014-11-23', start_time: '10:30:00', end_time: '04:30:00', drop_location_id: 3)

Organization.create!(name: "Brighter Beginnings", email: "adopt-a-family@brighter-beginnings.org", phone: "(877) 427-7134", address: "2648 International Blvd, Oakland CA", zip: "94601", website_url: "http://www.brighter-beginnings.org/", blurb: "<p>Thanks to an overwhelming response, Adopt-a-Family 2013 is now closed. Please contact us at adopt-a-family@brighter-beginnings.org for other ways to support our families this holiday season. Years ago, we realized that many of our client families were struggling during the holiday season. To address this need, we launched our Adopt-A-Family program, inviting community members and local companies to 'adopt' one or more families and purchase 'gifts from the heart'.<p/><p>How It Works - Through this 'adoption' process, low-income families are matched with a donor who purchases seasonal gifts and drops them off at one of our centers in Alameda or Contra Costa County. Last year, 250 families, and nearly 1,000 family members had their wish lists fulfilled. Donors contributed time and funds gathering holiday gifts, while others came to our two volunteer wrapping events to add sparkle and holiday magic to the gift bundles before our Staff delivered them to families in need.</p>")

