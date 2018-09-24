class DashboardController < ApplicationController
    def index
        unless current_user
            redirect_to new_user_session_path
        end
        if current_user
            if current_user.store
                @events = current_user.store.events
                @total_budget = @events.sum(:budget)
            end
        end
    end

end
