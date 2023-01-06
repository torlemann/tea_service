Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get "/subscriptions/:customer_id", to: 'subscriptions#index'
      post "/subscriptions", to: 'subscriptions#create'
      delete "/subscriptions/:id", to: 'subscriptions#destroy'
    end
  end
end
