Spree::Core::Engine.routes.draw do
  get '/invoice/show/:order_id' => 'invoice#show', :as => :pdf_invoice
end
