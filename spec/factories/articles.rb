# == Schema Information
#
# Table name: articles
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  body        :text
#  journal_id  :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :string
#


FactoryBot.define do
  factory :article do
    journal { create(:journal) }
    name {Faker::Hacker.say_something_smart.first(50)}
    description {Faker::Matz.quote.first(300)}
    body {Faker::Matz.quote.first(300)}
  end
end
