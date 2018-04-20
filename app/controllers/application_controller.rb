class ApplicationController < ActionController::Base
    def current_user
        @current_user ||= User.last
    end
end
