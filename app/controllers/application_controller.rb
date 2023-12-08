# frozen_string_literal: true

require 'sinatra'
require 'i18n'
require_relative './../../lib/i18n'
require 'sinatra/partial'

##
# ApplicationController
#
# Used to configure Sinatra applciation settings
class ApplicationController < Sinatra::Base
  register Sinatra::Partial

  configure do
    set :environment, :development

    set :public_folder, 'public'
    set :views, 'app/views'
    set :erb, layout: :layout
    set :partial_template_engine, :erb
    enable :partial_underscores

    I18n.load_path += Dir["#{File.expand_path('config/locales')}/*.yml"]
    I18n.default_locale = :en
  end

  before '/' do
    set_locale_from_browser
  end

  private

  def set_locale_from_browser
    locale = request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first.to_sym
    return I18n.locale = locale if I18n.available_locales.include?(locale)

    I18n.locale = I18n.default_locale
  end
end
