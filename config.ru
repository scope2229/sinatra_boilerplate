# frozen_string_literal: true

require 'rubygems'
require 'bundler/setup'
require 'require_all'

# Include the controllers
require_all 'app/controllers'

# If you add a controller use 'use' keyword
run IndexController
