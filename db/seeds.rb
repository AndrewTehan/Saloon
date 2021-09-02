def create_user_attributes(first_name: nil, last_name: nil, email: nil, phone_number: nil, password: "111111")
  {
    first_name: first_name || Faker::Name.unique.first_name,
    last_name: last_name || Faker::Name.unique.last_name,
    email: email || Faker::Internet.unique.email,
    phone_number: phone_number || Faker::PhoneNumber.cell_phone_in_e164,
    password: password
  }
end

admin = Admin.create(**create_user_attributes()) 
client = Client.create(**create_user_attributes(first_name: 'Andrew', last_name: 'Tehanov', email: 'andrewtehanov@gmail.com', phone_number: '+375447756860')) 

User.all.each(&:confirm)
service_prices = [["Coloring", "30"],
 ["Men haircut", "15"],
 ["Women short haircut", "20"],
 ["Women long haircut", "25"],
 ["Gray Cammuffling", "10"],
 ["Children's Haircuts", "10"],
 ["Mustache and Beard Haircut", "13"],
 ["Highlighting", "28"],
 ["Lamination", "45"],
 ["Toning", "24"],
 ["Balayazh", "27"],
 ["Eyebrow Correction", "17"],
 ["Eyebrow & Eyelash Tint", "19"]]

services = service_prices.map do |(name, cost)|
  Service.create(master_service: name, cost: cost)
end

services.each_slice(6) do |master_services|
  master_services_attributes = master_services.map do |service|
    {service_id: service.id}
  end

  master = Master.create(
    **create_user_attributes(),
    master_services_attributes: master_services_attributes
  )
end