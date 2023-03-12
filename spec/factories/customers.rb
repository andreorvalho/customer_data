FactoryBot.define do
  factory :customer, class: 'CustomerData::Customer' do
    name { "Andre Orvalho" }
    place_of_birth { "Portugal" }
    date_of_birth { Time.now - 36.years }
  end
end
