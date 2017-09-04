FactoryGirl.define do
  factory :message do
    sender_id 1
    receiver_id 1
    content "MyString"
    seen false
  end
end
