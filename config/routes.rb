Rails.application.routes.draw do
  devise_for :users
  root 'smileys#index'

  resources :feedbacks
  resources :smileys do
    member do
      put "like" => "smileys#upvote"
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
