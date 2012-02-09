# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_labtitan_session',
  :secret      => 'dc5b1f14c6fad2dcec0ea92e13684812bdabbfc10003e27680915c93692394beb24a241449caa094293abc835a72ae00fa9cb3c115374433730520f2bd251950'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
