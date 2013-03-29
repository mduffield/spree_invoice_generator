Spree::Order.class_eval do
  has_one :invoice
  after_update :add_invoice

  private
  def add_invoice
  	# Only create an invoice if the order is completed!
  	# And only create it if there is no invoice yet.
  	if Spree::Config[:invoice_on_order_complete]
      self.create_invoice(:user => user) if self.completed? && self.invoice.blank?
    end
  end
end
