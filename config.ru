require 'rubygems'
require 'bundler'
Bundler.require

# Models
require './models/checklist'

# Controllers
require './app'

use Rack::MethodOverride
run ChecklistApp
