FmiCazare::Application.routes.draw do

  resources :guests

  resources :dorms_categories

  resources :dorms

  resources :documents

  resources :accomodations

  root to: 'guests#index'

  #omniauth
  get '/auth/:provider/callback', to: 'user_sessions#create'
  get '/auth/failure', to: 'user_sessions#failure'

  #logout
  get '/logout', to: 'user_sessions#destroy'

  #pagini student
  match '/creeaza_cerere', to: 'accommodations#new'
  match '/profil_student', to: 'accommodations#student_profile'
  match '/rezultate_verificare', to: 'accommodations#verified_results'
  match '/decizia_comisiei', to: 'accommodations#decision'
  match '/documente', to: 'accommodations#documents'

end
