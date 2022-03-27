class KeycheckController < ApplicationController

    def top
    end
    
    def check_key
        @input_codes = params[:codes]
    end
end
