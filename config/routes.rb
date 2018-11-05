Rails.application.routes.draw do  
  resources :actividad_personas
  resources :actividads
  resources :personas
  post 'usuario_token' => 'usuario_token#create'
  resources :usuarios do
    resources :tareas
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
