# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :baby_name do
    sequence(:name)    {|n| "Huie#{n}" }

    ignore do
        users_count 1
    end

    after(:create) do |baby_name, evaluator|
        users = FactoryGirl.create_list(:user, evaluator.users_count)
        users.each do |user|
          user.baby_names << baby_name
        end
    end

  end


end
