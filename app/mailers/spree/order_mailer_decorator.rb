Spree::OrderMailer.class_eval do
  
  def confirm_email(order, resend = false)
    if Spree::Config[:on_confirm_email]
      inv_print = Spree::Invoice.find_or_create_by_oser_id_and_user_id(order.id, order.user_id)
      attachments["#{inv_print.invoice_number}.pdf"] = {
        :content => inv_print.generate_pdf,
        :mime_type => 'application/pdf'
      } if inv_print
    end
    @order = order
    subject = (resend ? "[#{t(:resend).upcase}] " : '')
    subject += "#{Spree::Config[:site_name]} #{t('order_mailer.cancel_email.subject')} ##{order.number}"
    mail(:to => order.email,
         :subject => subject)
  end
end
