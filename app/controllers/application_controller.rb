# frozen_string_literal: true

##
# ApplicationController
#
# Used to configure Sinatra applciation settings
require 'sinatra'

class ApplicationController < Sinatra::Base
  configure do
    set :environment, :development

    set :public_folder, 'public'
    set :views, 'app/views'
    set :erb, layout: :layout
  end
end
