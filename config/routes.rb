Rails.application.routes.draw do

  resources :tickets
  resources :employees
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  resources :restriction_lotteries
  resources :lotteries
  resources :type_lotteries
  resources :award_tabulators
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
