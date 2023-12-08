# frozen_string_literal: true

module I18n
  module Base
    def locale_from_header(header)
      locale = header.scan(/^[a-z]{2}/).first.to_sym
      available_locales.include?(locale) ? locale : default_locale
    end
  end
end
