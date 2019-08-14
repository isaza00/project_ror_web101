Rails.application.routes.draw do
  root to: 'articles#index'

  resources :articles #llama a los articulos
end
