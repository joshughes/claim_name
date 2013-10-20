# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
     sequence(:name)                       {|n| "Stokes ##{n}" }
  end

end
