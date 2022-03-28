require "./app/keycheck_function"
class KeycheckController < ApplicationController

    def top
    end
    
    def check_key
        @params = params
        # input_codes = []
        # 6.times do |timesCount|
        #     input_node = params["node#{timesCount}"]             
        #     input_acc = params["acc#{timesCount}"]
        #     code = input_node + input_acc
        #     @input_codes.add(code)
        # end
    end
end
