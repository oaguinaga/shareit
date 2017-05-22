Rails.application.routes.draw do
  # resources :topics
  # resources :posts
  resources :topics do
    resources :posts, except: [:index]
  end
  #we use only: [] because we don't want to create any /posts/:id routes, just posts/:post_id/comments routes.
  resources :posts, only: [] do
     resources :comments, only: [:create, :destroy]
   end

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  get 'about' => 'welcome#about'
  root 'welcome#index'

end
