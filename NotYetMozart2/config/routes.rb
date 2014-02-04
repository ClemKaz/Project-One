NotYetMozart2::Application.routes.draw do
  resources :songs
  resources :users

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

# songs GET    /songs(.:format)          songs#index
#           POST   /songs(.:format)          songs#create
#  new_song GET    /songs/new(.:format)      songs#new
# edit_song GET    /songs/:id/edit(.:format) songs#edit
#      song GET    /songs/:id(.:format)      songs#show
#           PUT    /songs/:id(.:format)      songs#update
#           DELETE /songs/:id(.:format)      songs#destroy



