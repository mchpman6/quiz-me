Rails.application.routes.draw do
  resources :quizzes
  
  get 'contact', to: "static_pages#contact" , as: "contact"
  post 'contact', to: 'static_pages#leave_feedback', as: 'leave_feedback'
  get 'welcome' , to: "static_pages#welcome" , as: 'welcome'
  get 'about', to: 'static_pages#about', as: 'about'
  root to: redirect('/welcome', status: 302)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
