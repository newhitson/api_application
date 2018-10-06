Rails.application.routes.draw do
  devise_for :users
  namespace :api, default: {format: :json} do
    devise_scope :v1 do
      post 'sign_up', to: "registrations#create"
    end
  end
end
