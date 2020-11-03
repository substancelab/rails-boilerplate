# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { "user#{rand(1000)}@example.com" }
    password { "verysecret" }
  end
end
