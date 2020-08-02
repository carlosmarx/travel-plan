
# frozen_string_literal: true

# ApiRoutes
Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :trips, only: [:index]
      post 'authenticate', to: 'authentication#authenticate'
    end
  end
end



# namespace :api, defaults: { format: :json } do
#   namespace :v1 do
#     resources :trips, only: [:index]
#     post 'authenticate', to: 'authentication#authenticate'
#   end
# end