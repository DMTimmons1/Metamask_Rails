Rails.application.routes.draw do
  get "/", to: 'home#index'
  get 'member_creation', to: 'members#new'
  post 'member_creation', to: 'members#create'
end
