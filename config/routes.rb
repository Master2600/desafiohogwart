Rails.application.routes.draw do
  get '/pages/new', to: 'pages#new', as: 'pages_new'
  get '/pages', to: 'pages#index'
  post '/pages', to: 'pages#create'
  get '/pages/search', to: 'pages#search', as: 'search_page'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
end


