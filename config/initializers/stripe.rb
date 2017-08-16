Rails.configuration.stripe = {
  # :publishable_key => ENV['PUBLISHABLE_KEY'],
  # :secret_key      => ENV['SECRET_KEY'],
  :publishable_key => "pk_test_hm42t6g26r36FRpGhm01qHuT",
  :secret_key      => "sk_test_NT4wtZILi5Ani2AUk9T7wVPe"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]