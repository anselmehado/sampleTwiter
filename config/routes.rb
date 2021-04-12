Rails.application.routes.draw do
  # get 'posts/index'
  # get 'posts/show'
  # get 'posts/update'
  # get 'posts/destroy'
  # get 'posts/edit'
  # get 'posts/new'
  resources :posts

  resources :posts do
      collection do
        post :confirm
      end
    end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
