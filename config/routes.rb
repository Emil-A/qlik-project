Rails.application.routes.draw do
  resources :palindromes
  root 'palindromes#index'
end
