# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ecommerce_session',
  :secret      => 'a9628b35d0241dd974bd7f4207712c95a95123643e87508d4df5f3bb6fc24a96159958b9ca34778c22dfb58456d41bb408a27fd5e3e3a8761e63dce37d1b1224'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
