Rails.application.routes.draw do
  resources :short_urls
  get ':short_url' => 'short_urls#redirection', constraints: { subdomain: 'duan' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#under_maintainence'
  get '*path' => redirect(path: '/', status: 302)
end
