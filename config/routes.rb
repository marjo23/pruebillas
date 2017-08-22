Rails.application.routes.draw do
  get 'combos/pais'

  get 'combos/estado'

  get 'combos/ciudad'
  get 'customers/:id/historial',to:'customers#historial',as:'customer_historial'
  get 'reports/seguimiento'
  get 'reports/clientes'
  get 'reports/seguimiento_quincenal'
  get 'reports/tablero'
  get 'reports/cobranza'
  get 'reports/pronostico_de_cobranza'
  get 'multiprint',to:"tickets#multiprint" ,as: "multiprint"
  resources :tickets
  resources :destinations
  resources :payments
  get 'payments/:id/vencer', to:'payments#vencer' 
  resources :receipts

  get 'receipts/crear'

  get 'receipts/baja'
  get '/pdf/:id', to: 'credits#pdf', as: 'pdf'
  get '/text/:id', to: 'credits#text', as: 'text'
  resources :confs , except:[:new,:create,:index,:delete]
  get 'test/t21'
  get 'view_credits/documentos',to:'view_credits#documentos'
  get 'view_credits/autorizacion',to:'view_credits#autorizacion'
  get 'view_credits/caratula',to:'view_credits#caratula'
  get 'view_credits/corrida',to:'view_credits#corrida'
  get 'view_credits/contrato',to:'view_credits#contrato'
  get 'view_credits/entrevista',to:'view_credits#entrevista'
  get 'view_credits/poliza',to:'view_credits#poliza'
  
  get 'view_credits',to:'view_credits#index',as:'view_credits'
  get 'view_credits/aceptadas',to:'view_credits#aceptadas',as:'view_credits_aceptadas'
  get 'view_credits/rechazadas',to:'view_credits#rechazadas',as:'view_credits_rechazadas'
  resources :view_credits
  resources :customers
  resources :credits
  resources :payouts
  resources :loans
  resources :products
  devise_for :users
  resources :agents
  resources :companies
  resources :branch_offices
  resources :users
  get 'perfil',to:'users#perfil',as:'perfil'
   post 'users/create2',to:'users#create2'
#  get 'profile/show',to:'profile#show',as:'show_profile'
#  get 'profile/new',to:'profile#new',as:'new_profile'
#  post 'profile/create',to:'profile#create',as:'create_profile'
#  get 'profile',to:'profile#index',as:'profile'
#  patch 'profile/update',to:'profile#update',as:'update_profile'
  
  devise_for :models
  get 'welcome/hola'

  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#hola'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
