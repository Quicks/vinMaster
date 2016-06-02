FactoryGirl.define do
  factory :customer_user,class: User do
    email 'test@gmail.com'
    roles :customer
    nick_name 'customer'
    password 'Passw0rd'
    password_confirmation 'Passw0rd'
  end
end