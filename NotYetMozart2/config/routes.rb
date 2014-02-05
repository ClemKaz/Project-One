NotYetMozart2::Application.routes.draw do



  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  resources :songs
  resources :users
  resources :comments

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy', as: :logout
  resources :sessions

  root :to => 'home#index'
end




#      root        /                         home#index

#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy

#     songs GET    /songs(.:format)          songs#index
#           POST   /songs(.:format)          songs#create
#  new_song GET    /songs/new(.:format)      songs#new
# edit_song GET    /songs/:id/edit(.:format) songs#edit
#      song GET    /songs/:id(.:format)      songs#show
#           PUT    /songs/:id(.:format)      songs#update
#           DELETE /songs/:id(.:format)      songs#destroy

#        login GET    /login(.:format)             sessions#new
#       logout GET    /logout(.:format)            sessions#destroy
#     sessions GET    /sessions(.:format)          sessions#index
#              POST   /sessions(.:format)          sessions#create
#  new_session GET    /sessions/new(.:format)      sessions#new
# edit_session GET    /sessions/:id/edit(.:format) sessions#edit
#      session GET    /sessions/:id(.:format)      sessions#show
#              PUT    /sessions/:id(.:format)      sessions#update
#              DELETE /sessions/:id(.:format)      sessions#destroy



