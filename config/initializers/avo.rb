# For more information regaring these settings check out our docs https://docs.avohq.io
Avo.configure do |config|
  ## == Routing ==
  config.root_path = '/avo'

  ## == Licensing ==
  config.license = 'community' # change this to 'pro' when you add the license key
  # config.license_key = ENV['AVO_LICENSE_KEY']

  ## == Set the context ==
  config.set_context do
    # Return a context object that gets evaluated in Avo::ApplicationController
  end

  ## == Authentication ==
  config.current_user_method do
    AvoUser = Struct.new(:name)
    AvoUser.new("Muthamil Selvan K")
  end
  include ActionController::HttpAuthentication::Basic
  config.authenticate_with do
    username = ENV['BP_USERNAME'] || 'username'
    password = ENV['BP_PASSWORD'] || 'password'
    http_basic_authenticate_or_request_with name: username, password: password
  end

  ## == Authorization ==
  # config.authorization_methods = {
  #   index: 'index?',
  #   show: 'show?',
  #   edit: 'edit?',
  #   new: 'new?',
  #   update: 'update?',
  #   create: 'create?',
  #   destroy: 'destroy?',
  # }

  ## == Localization ==
  # config.locale = 'en-US'

  ## == Customization ==
  config.app_name = 'Badam Milk Supply'
  # config.avo_title = 'Hassyyy'
  config.timezone = 'IST'
  # config.currency = 'USD'
  config.per_page = 30
  config.disabled_features = [:global_search]
  # config.per_page_steps = [12, 24, 48, 72]
  # config.via_per_page = 8
  # config.default_view_type = :table
  # config.id_links_to_resource = false
  # config.full_width_container = false
  # config.full_width_index_view = false
  config.cache_resources_on_index_view = false
  # config.search_debounce = 300
  # config.view_component_path = "app/components"
  # config.display_license_request_timeout_error = true
  config.buttons_on_form_footers = true

  config.main_menu = -> {
    dashboard :dashboard
    section "Transactions", icon: "heroicons/outline/currency-rupee" do
      resource :sales
      resource :payments
    end
    section "Inventory", icon: "heroicons/outline/clipboard-list" do
      resource :products
      resource :vendors
      resource :costs
    end
  }


  # Where should the user be redirected when he hits the `/avo` url
  config.home_path = '/avo/resources/vendors'

  ## == Breadcrumbs ==
  # config.display_breadcrumbs = true
  # config.set_initial_breadcrumbs do
  #   add_breadcrumb "Home", '/avo'
  # end
end
