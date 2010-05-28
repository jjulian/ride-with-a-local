# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ride-with-a-local_session',
  :secret      => '778e9988438e324736d80021bf1c2f468aef12f908786a7efead7252b28a193be58c770704a84bacc94f57803868d37b32f23c3f1e27caa081e80f9103b2041e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
