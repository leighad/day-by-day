class DaysController < ApplicationController
    
    # MUST INCLUDE THIS
    layout false 

    # Or this error will show:
    # Webpacker can't find application in /Users/leighadelarosa/workspace/rails-practice/day-by-day/public/packs/manifest.json. Possible causes:
    # 1. You want to set webpacker.yml value of compile to true for your environment
    # unless you are using the `webpack -w` or the webpack-dev-server.
    # 2. webpack has not yet re-run to reflect updates.
    # 3. You have misconfigured Webpacker's config/webpacker.yml file.
    # 4. Your webpack configuration is not creating a manifest.
    # Your manifest contains:
    # {
    # }

    def index
        @days = Day.all 
    end

    def show 
        @day = Day.find_by_id(params[:id])
    end

    def new 

    end

    def create 

    end

    
end
