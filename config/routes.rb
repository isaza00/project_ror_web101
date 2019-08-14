Rails.application.routes.draw do
  root to: 'articles#index'

  resources :articles do#llama a los articulos
    resources :comments
  end
   
end
