RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end

a = build(:admin)
puts a
