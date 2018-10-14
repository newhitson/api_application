class ApplicationController < ActionController::API
  include Response
  include Authenticate
  include SerializableResources
end
