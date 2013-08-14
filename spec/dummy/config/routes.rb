Rails.application.routes.draw do
  mount Succession::Engine => '/succession'

  resources :posts
end
