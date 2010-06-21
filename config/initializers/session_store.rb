# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ror_eval_session',
  :secret      => 'e3ee52c53d5bfbadd483fbf957d084bdefcd56885233fd2f723a85f65be0c48e1938ba44ca8f7ebea0ac1aef8dde9dfe9e8a0404460ea206eb4f4c01d1b6c716'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
