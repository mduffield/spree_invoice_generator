class InvoicePrint < ActiveRecord::Base
  belongs_to :user
  belongs_to :order
end
