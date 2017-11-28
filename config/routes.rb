Rails.application.routes.draw do
  #read all tasks

root 'articles#index'
get 'articles', to: 'articles#index'


get 'articles/new', to: 'articles#new'

#read just one task
get 'articles/:id', to: 'articles#show', as: 'article'


#create

post 'articles', to: 'articles#create'

#update

get 'articles/:id/edit', to: 'articles#edit', as: 'edit'
patch 'articles/:id', to: 'articles#update'


#delete

delete 'articles/:id', to: 'articles#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
