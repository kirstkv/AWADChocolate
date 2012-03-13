class ApplicationController < ActionController::Base
    require_dependency 'cart' 
    require_dependency 'line_item'
end
