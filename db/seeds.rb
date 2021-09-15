FactoryBot.create(:user, type: Admin)
FactoryBot.create(:client, :tehanov_last_name, :tehanov_first_name, :andrewtehanov_email)
FactoryBot.create(:master)
User.all.each(&:confirm)
