# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :champion do
    name 'MyString'
    active false
    free_to_play false
  end
end
