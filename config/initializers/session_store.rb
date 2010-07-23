# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_head-market_session',
  :secret      => 'fd70c700f693123e1c64e75d5b02e8c755eb8b699e9eb3c22cbd9fbef5f0f945845084c8224f2c81aba5d5d46a2cb1c6fdaabdfab5996cefb2aca6212e0cad12'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
