require ::File.expand_path('../../config/environment',  __FILE__)
Rails.application.eager_load!

# require 'action_cable/process/logging'
# use Rack::Config do |env|
#   env['rack.session'] = ActionDispatch::Session::CookieStore.new(ActioncableExamples::Application.instance).load_session(env)
# end

# use Warden::Manager do |manager|
#   # manager.default_strategies = { user: [:rememberable, :database_authenticatable] }
#   # manager.failure_app = BadAuthenticationEndsUpHere
#   manager.default_scope = :user
#   # manager.failure_app   = Devise::Delegator.new
#   # manager.default_scope = Devise.default_scope
#   manager.intercept_401 = false
#   manager.scope_defaults :user #, strategies: [:database_authenticatable]

#   manager.serialize_into_session(:user) do |record|
#     user.to.serialize_into_session(record)
#   end

#   manager.serialize_from_session(:user) do |key|
#     # Previous versions contained an additional entry at the beginning of
#     # key with the record's class name.
#     args = key[-2, 2]
#     user.to.serialize_from_session(*args)
#   end
# end
run ActionCable.server
