# frozen_string_literal: true

FactoryBot.create(:user, type: Admin)

FactoryBot.create(:client, :tehanov_last_name, :tehanov_first_name, :andrewtehanov_email)

FactoryBot.create(:service, :coloring)
FactoryBot.create(:service, :men_haircut)
FactoryBot.create(:service, :women_short_haircut)
FactoryBot.create(:service, :women_long_haircut)
FactoryBot.create(:service, :gray_cammuffling)
FactoryBot.create(:service, :childre_haircuts)
FactoryBot.create(:service, :mustache_and_beard_haircut)
FactoryBot.create(:service, :highlighting)
FactoryBot.create(:service, :lamination)
FactoryBot.create(:service, :toning)
FactoryBot.create(:service, :balayazh)
FactoryBot.create(:service, :eyebrow_correction)
FactoryBot.create(:service, :women_haircut)

FactoryBot.create(:master, :coloring)
FactoryBot.create(:master, :gray_cammuffling)
FactoryBot.create(:master, :lamination)
