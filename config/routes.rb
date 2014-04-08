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

  get '/creeaza_cerere', to: 'accomodations#new'
  get '/profil_student', to: 'accomodations#student_profile'
  get '/rezultate_verificare', to: 'accomodations#verified_results'
  get '/decizia_comisiei', to: 'accomodations#decision'
  get '/documente', to: 'accomodations#documents'


end
