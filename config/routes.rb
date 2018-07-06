Questionnaire::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :subjects
  resources :mockexams do
    resources :mock_questions do
      resources :mock_answers do
        resources :mock_correct_answers
      end
    end
  end
  resources :surveys
  root to: 'surveys#index'
end
