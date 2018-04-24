FactoryBot.define do

  factory :invalid_host_no_user, class: Host do
    speciality "Surfing"
    age 25
    phone_number "0642240312"
    user_id nil
    address "MyString"
    postal_code "MyString"
    city "MyString"
    country "MyString"
  end

  factory :invalid_host_no_attr, class: Host do
    speciality nil
    age 25
    phone_number "0642240312"
    user
    address "MyString"
    postal_code "MyString"
    city "MyString"
    country "MyString"
  end

  factory :invalid_host_wrong_speciality, class: Host do
    speciality "Something else"
    age 25
    phone_number "0642240312"
    user
    address "MyString"
    postal_code "MyString"
    city "MyString"
    country "MyString"
  end

  factory :valid_host, class: Host do
    speciality "Surfing"
    age 25
    phone_number "0642240312"
    user
    address "MyString"
    postal_code "MyString"
    city "MyString"
    country "MyString"
  end
end
