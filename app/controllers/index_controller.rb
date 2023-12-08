require_relative './application_controller'

class IndexController < ApplicationController
  get '/' do
    erb :index
  end
end
