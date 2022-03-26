class KeycheckController < ApplicationController
    //キーを判定する関数
    def keycheck (keys)
        key = ''
        return key
    end
    
    def top
        @key = keycheck()
    end
end