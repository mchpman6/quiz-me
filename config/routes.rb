Rails.application.routes.draw do
  get 'mc_questions', to: 'mc_questions#index', as: 'mc_questions' # index
  get 'mc_questions/new', to: 'mc_questions#new', as: 'new_mc_question' # new
  post 'mc_questions', to: 'mc_questions#create'                        # create
  get 'mc_questions/:id/edit', to: 'mc_questions#edit', as: 'edit_mc_question' # edit
  patch 'mc_questions/:id', to: 'mc_questions#update'                          # update (as needed)
  put 'mc_questions/:id', to: 'mc_questions#update'                            # update (full replacement)
  get 'mc_questions/:id', to: 'mc_questions#show', as: 'mc_question' # show
  delete 'mc_questions/:id', to: 'mc_questions#destroy' # destroy route
  get 'contact', to: "static_pages#contact" , as: "contact"
  post 'contact', to: 'static_pages#leave_feedback', as: 'leave_feedback'
  get 'welcome' , to: "static_pages#welcome" , as: 'welcome'
  get 'about', to: 'static_pages#about', as: 'about'
  root to: redirect('/welcome', status: 302)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
