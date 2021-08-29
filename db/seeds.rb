Admin.create(first_name: 'Saloon', last_name: 'Official', email: 'saloonofficial699@gmail.com', phone_number: '+375442504040', password: '111111' ).confirm
Client.create(first_name: 'Andrew', last_name: 'Tehanov', email: 'andrewtehanov@gmail.com', phone_number: '+375447756860', password: '111111' ).confirm
Master.create(first_name: 'Sarah', last_name: "O'nil", email: 'sarah@gmail.com', phone_number: '+375442504111', password: '111111' ).confirm
[["Coloring", "30"],
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
 ["Eyebrow & Eyelash Tint", "19"]].each do |(name, cost)|
  Service.create(master_service: name, cost: cost)
end