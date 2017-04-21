Rails.application.routes.draw do
  # get 'advertisements/index'
  #
  # get 'advertisements/show'
  #
  # get 'advertisements/new'
  #
  # get 'advertisements/create'

  resources :advertisements

  # get 'posts/index'
  #
  # get 'posts/show'
  #
  # get 'posts/new'
  #
  # get 'posts/edit'
  resources :posts
  #
  # get 'welcome/index'
  #
  # get 'welcome/about'

  get 'about' => 'welcome#about'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
