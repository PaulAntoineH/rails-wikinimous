Rails.application.routes.draw do
  get 'articles/index', as: 'articles'
  get 'articles/create'
  get 'articles/new', as: 'new'
  get 'articles/edit'
  get 'articles/show'
  get 'articles/update'
  get 'articles/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
end
