# This is the primary location for defining spree preferences
#
# The expectation is that this is created once and stored in
# the spree environment
#
# setters:
# a.color = :blue
# a[:color] = :blue
# a.set :color = :blue
# a.preferred_color = :blue
#
# getters:
# a.color
# a[:color]
# a.get :color
# a.preferred_color
#
Spree::AppConfiguration.class_eval do
  # Alphabetized to more easily lookup particular preferences
  preference :invoice_on_confirm_email, :boolean, :default => false
  preference :invoice_on_order_complete, :boolean, :default => false
  preference :invoice_seller_logo, :string, :default => Spree::Config[:admin_interface_logo]
  preference :invoice_template_path, :string, :default => "spree/invoices/invoice_template.html"
  preference :invoice_wkhtmltopdf_margin, :string, :default => "{\"top\":\"10\",\"bottom\":\"10\",\"left\":\"15\",\"right\":\"15\"}"
  preference :invoice_seller_details, :string, :default => "Spree Demo| P.IVA: 12345678901| C.F.: 12345678901| Street Address, 12| 00000 City (STATE)"
end