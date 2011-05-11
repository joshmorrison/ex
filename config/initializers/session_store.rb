# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_exchange_session',
  :secret      => '5e8e511d4d74de599aa9631d9c163e74f4a53f7d28777416d76a8d7786926692c212132e0c88680857cdc47938d5891cbea41a7f23f0a772a8ffe85651b7fded'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
