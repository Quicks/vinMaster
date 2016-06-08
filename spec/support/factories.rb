FactoryGirl.define do
  factory :customer_user,class: User do
    email 'test@gmail.com'
    roles :customer
    nick_name 'customer'
    password 'Passw0rd'
    password_confirmation 'Passw0rd'
  end

  # factory :tender,class Tender do |f|
  #     f.title = 'Title'
  # f.description = 'Description'
  # f.budget = '1232'
  # f.contact_data = 'rqwrwqwqqeqq'
  # f.address = 'qewqeqewqeq'
  # end
end