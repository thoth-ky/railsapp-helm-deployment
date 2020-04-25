if Rails.env.development?
  Dotenv.require_keys("DB_USERNAME", "DB_PASSWORD")
end