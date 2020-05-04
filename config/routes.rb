Rails.application.routes.draw do
	get "top" => "tops#top"
	get "go" => "books#show"
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
