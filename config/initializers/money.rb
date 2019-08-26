# encoding : utf-8

MoneyRails.configure do |config|

# config/initializers/money.rb

# https://github.com/RubyMoney/money#deprecation
Money.locale_backend = :currency

MoneyRails.configure do |config|
  config.default_currency = :gbp  # or :gbp, :usd, etc.
  # [...]
  end
end
