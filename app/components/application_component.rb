class ApplicationComponent < ViewComponent::Base
  delegate :url_helpers, to: 'Rails.application.routes'
end
