Rails.application.routes.draw do
  resources :given_answers
  resources :questions
  resources :daily_questions
  resources :repositories
  resources :ranks
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
