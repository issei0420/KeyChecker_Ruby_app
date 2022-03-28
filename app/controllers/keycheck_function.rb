class KeycheckFunction

    attr_accessor :key_names
    attr_accessor :keys

    #各キーのよく使われるコード（＃のかわりにsを用いる）
    #メジャーキーのダイアトニックコード（Ⅶm♭-5は除く）
    Cメジャー = ['C', 'Dm', 'Em', 'F', 'G', 'Am']
    Csメジャー = ['C#', 'D#m', 'Fm', 'F#', 'G#', 'A#m']
    Dメジャー = ['D', 'Em', 'F#m', 'G', 'A', 'Bm']
    Dsメジャー = ['D#', 'Fm', 'Gm', 'G#', 'A#', 'Cm']
    Eメジャー = ['E', 'F#m', 'G#m', 'A', 'B', 'C#m']
    Fメジャー = ['F', 'Gm', 'Am', 'A#', 'C', 'Dm']
    Fsメジャー = ['F#', 'G#m', 'A#m', 'B', 'C#', 'D#m']
    Gメジャー = ['G', 'Am', 'Bm', 'C', 'D', 'Em']
    Gsメジャー = ['G#', 'A#m', 'Cm', 'C#', 'D#', 'Fm']
    Aメジャー = ['A', 'Bm', 'C#m', 'D', 'E', 'F#m']
    Asメジャー = ['A#', 'Cm', 'Dm', 'D#', 'F', 'Gm']
    Bメジャー = ['B', 'C#m', 'D#m', 'E', 'F#', 'G#m']

    #マイナーキーのダイアトニックコード（Ⅱm-5を除き、Ⅴを加える）
    Aマイナー = ['Am', 'C', 'Dm', 'Em', 'E', 'F', 'G']
    Asマイナー = ['A#m', 'C#', 'D#m', 'Fm', 'F', 'F#', 'G#']
    Bマイナー = ['Bm', 'D', 'Em', 'F#m', 'F#', 'G', 'A']
    Cマイナー = ['Cm', 'D#', 'Fm', 'Gm', 'G', 'G#', 'A#']
    Csマイナー = ['C#m', 'E', 'F#m', 'G#m', 'G#', 'A', 'B']
    Dマイナー = ['Dm', 'F', 'Gm', 'Am', 'A', 'A#', 'C']
    Dsマイナー = ['D#m', 'F#', 'G#m', 'A#m', 'A#', 'B', 'C#']
    Eマイナー = ['Em', 'G', 'Am', 'Bm', 'B', 'C', 'D']
    Fマイナー = ['Fm', 'G#', 'A#m', 'Cm', 'C', 'C#', 'D#']
    Fsマイナー = ['F#m', 'A', 'Bm', 'C#m', 'C#', 'D', 'E']
    Gマイナー = ['Gm', 'A#', 'Cm', 'Dm', 'D', 'D#', 'F']
    Gsマイナー = ['G#m', 'B', 'C#m', 'D#m', 'D#', 'E', 'F#']

    def initialize
        self.key_names = ['Cメジャー', 'Csメジャー', 'Dメジャー', 'Dsメジャー', 'Eメジャー', 'Fメジャー', 'Fsメジャー', 'Gメジャー', 'Gsメジャー', 'Aメジャー', 'Asメジャー', 'Bメジャー',
                          'Aマイナー', 'Asマイナー', 'Bマイナー', 'Cマイナー', 'Csマイナー', 'Dマイナー', 'Dsマイナー', 'Eマイナー', 'Fマイナー', 'Fsマイナー', 'Gマイナー', 'Gsマイナー'
                         ]

        self.keys = [Cメジャー, Csメジャー, Dメジャー, Dsメジャー, Eメジャー, Fメジャー, Fsメジャー, Gメジャー, Gsメジャー, Aメジャー, Asメジャー, Bメジャー,
                     Aマイナー, Asマイナー, Bマイナー, Cマイナー, Csマイナー, Dマイナー, Dsマイナー, Eマイナー, Fマイナー, Fsマイナー, Gマイナー, Gsマイナー
                ]
    end
    #キーを判定
    def keycheckfunc(input_codes)
        
        #ハッシュを作成
        key_map = {}
        self.key_names.zip(self.keys) do |key_name, key|
            key_map[key_name] = (key & input_codes).length
        end

        #ハッシュの値の中で最大のものを取得
        max = key_map.values.max
        
        #maxを値にもつキーを取得
        ans_keys = []
        key_map.each_key do |key|
            if key_map[key] == max
                ans_keys.push(key)
            end
        end

        return ans_keys
    end
end


# a = Keycheckfunction.new
# ans = a.keycheckfunc(['C', 'Dm', 'Em', 'F', 'G', 'Am'])
# puts ans
