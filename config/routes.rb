Questionnaire::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :subjects
  resources :mockexams
  resources :surveys
  root to: 'surveys#index'
end
