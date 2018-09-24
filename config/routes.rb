Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      namespace :stores do
        get ':id/events', to: 'events#show'
      end
    end
  end
  root 'dashboard#index'
end
