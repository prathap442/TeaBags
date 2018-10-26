Rails.application.routes.draw do
  post '/user_monthly_product_informations/visualise'
  resources :user_monthly_product_informations
  resources :products
  resources :custom_subscriptions_admin_entries
  resources :pages
  root "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
