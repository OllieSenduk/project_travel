FactoryBot.define do
  factory :host_invalid do
    speciality "Surfing"
    age 25
    phone_number "0642240312"
    user_id nil
    address "MyString"
    postal_code "MyString"
    city "MyString"
    country "MyString"
  end

  factory :host_valid do
    speciality "Surfing"
    age 25
    phone_number "0642240312"
    user_valid
    address "MyString"
    postal_code "MyString"
    city "MyString"
    country "MyString"
  end
end
