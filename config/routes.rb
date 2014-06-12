FmiCazare::Application.routes.draw do

  resources :rooms
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
  match '/creeaza_cerere', to: 'accomodations#new', via: 'get'
  match '/vezi_cerere', to: 'accomodations#show', via: 'get'
  match '/profil_student', to: 'accomodations#student_profile', via: 'get'
  match '/rezultate_verificare', to: 'accomodations#verified_results', via: 'get'
  match '/decizia_comisiei', to: 'accomodations#decision', via: 'get'
  match '/metodologie', to: 'accomodations#metodologie', via: 'get'
  match '/camine', to: 'accomodations#camine', via: 'get'
  match '/ajutor', to: 'guests#ajutor', via: 'get'

end
