# This file is used by Rack-based servers to start the application.

# require_relative "config/environment"

# run Rails.application
# Rails.application.load_server

require "rack"
require_relative "app"
require_relative "simple_middleware"

use Rack::Runtime
use SimpleMiddleware
run App.new
