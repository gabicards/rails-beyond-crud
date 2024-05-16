Rails.application.routes.draw do
  # Additional routes related to restaurants
  resources :restaurants do
    resources :reviews, only: [:new, :create]
    # collection do
    #   # Custom index
    #   # /restaurants/whatever_word_you_say
    #   get :top
    # end

    # member do
    #   # Custom show page
    #   # /restaurants/:id/...
    #   get :chef
    # end
  end

  resources :reviews, only: [:destroy]
end
