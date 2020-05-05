Rails.application.routes.draw do
    resources :blogs
    get "top" => "tops#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
