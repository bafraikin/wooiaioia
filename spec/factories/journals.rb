# == Schema Information
#
# Table name: journals
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  nb_articles :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


FactoryBot.define do
  factory :journal do
    name {Faker::Coffee.blend_name}

    trait(:with_article) do 
      after(:create) do |journal|
        create_list(:article, Random.rand(1..4), journal: journal.id)
      end
    end
  end
end
