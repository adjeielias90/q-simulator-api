Questionnaire::Application.routes.draw do
  resources :subjects
  resources :mockexams
  resources :surveys
  root to: 'surveys#index'
end
