require "./app/keycheck_function"
class KeycheckController < ApplicationController

    def top
    end
    
    def check_key
        
        num_codes = params[:note].length

        @input_codes = []
        num_codes.times do |timesCount|
            input_note = params[:note][timesCount]
            input_acc = params[:acc][timesCount]
            code = input_note + input_acc
            @input_codes.push(code)
        end

        @input_codes


    end
end
