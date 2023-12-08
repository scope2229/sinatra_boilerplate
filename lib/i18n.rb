# frozen_string_literal: true

module I18n
  module Base
    def locale_from_header(header)
      locale = header.scan(/^[a-z]{2}/).first.to_sym
      available_locales.include?(locale) ? locale : default_locale
    end

    # Prefix a url with the current locale
    # Example: "/orders/show/1" becomes "/de/orders/show/1"
    def link(url, text)
      %(<a href="/#{locale}#{url}">#{t text}</a>)
    end

    def url(url)
      "/#{locale}#{url}"
    end
  end
end
