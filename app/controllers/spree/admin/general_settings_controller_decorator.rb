Spree::Admin::GeneralSettingsController.class_eval do
  def show
    @preferences = ['site_name', 'default_seo_title', 'default_meta_keywords',
                    'default_meta_description', 'site_url', 'invoice_seller_details']
  end

  def edit
    @preferences = [:site_name, :default_seo_title, :default_meta_keywords,
                    :default_meta_description, :site_url, :allow_ssl_in_production,
                    :allow_ssl_in_staging, :allow_ssl_in_development_and_test,
                    :check_for_spree_alerts, :invoice_on_confirm_email, :invoice_on_order_complete,
                    :invoice_seller_details]
  end
end
