Rails.application.routes.draw do
  resources :daily_questions
  resources :repositories
  resources :answer_givens
  resources :ranks
  resources :users
  resources :questions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
