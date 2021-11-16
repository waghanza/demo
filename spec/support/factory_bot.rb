# frozen_string_literal: true

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  DatabaseCleaner.cleaning do
    FactoryBot.lint
  end
end
