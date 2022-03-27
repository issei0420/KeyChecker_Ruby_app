#各キーのよく使われるコード（＃のかわりにsを用いる）
#メジャーキーのダイアトニックコード（Ⅶm♭-5は除く）
C_Major = ['C', 'Dm', 'Em', 'F', 'G', 'Am']
Cs_Major = ['C#', 'D#m', 'Fm', 'F#', 'G#', 'A#m']
D_Major = ['D', 'Em', 'F#m', 'G', 'A', 'Bm']
Ds_Major = ['D#', 'Fm', 'Gm', 'G#', 'A#', 'Cm']
E_Major = ['E', 'F#m', 'G#m', 'A', 'B', 'C#m']
F_Major = ['F', 'Gm', 'Am', 'A#', 'C', 'Dm']
Fs_Major = ['F#', 'G#m', 'A#m', 'B', 'C#', 'D#m']
G_Major = ['G', 'Am', 'Bm', 'C', 'D', 'Em']
Gs_Major = ['G#', 'A#m', 'Cm', 'C#', 'D#', 'Fm']
A_Major = ['A', 'Bm', 'C#m', 'D', 'E', 'F#m']
As_Major = ['A#', 'Cm', 'Dm', 'D#', 'F', 'Gm']
B_Major = ['B', 'C#m', 'D#m', 'E', 'F#', 'G#m']

#マイナーキーのダイアトニックコード（Ⅱm-5を除き、Ⅴを加える）
A_minor = ['Am', 'C', 'Dm', 'Em', 'E', 'F', 'G']
As_minor = ['A#m', 'C#', 'D#m', 'Fm', 'F', 'F#', 'G#']
B_minor = ['Bm', 'D', 'Em', 'F#m', 'F#', 'G', 'A']
C_minor = ['Cm', 'D#', 'Fm', 'Gm', 'G', 'G#', 'A#']
Cs_minor = ['C#m', 'E', 'F#m', 'G#m', 'G#', 'A', 'B']
D_minor = ['Dm', 'F', 'Gm', 'Am', 'A', 'A#', 'C']
Ds_minor = ['D#m', 'F#', 'G#m', 'A#m', 'A#', 'B', 'C#']
E_minor = ['Em', 'G', 'Am', 'Bm', 'B', 'C', 'D']
F_minor = ['Fm', 'G#', 'A#m', 'Cm', 'C', 'C#', 'D#']
Fs_minor = ['F#m', 'A', 'Bm', 'C#m', 'C#', 'D', 'E']
G_minor = ['Gm', 'A#', 'Cm', 'Dm', 'D', 'D#', 'F']
Gs_minor = ['G#m', 'B', 'C#m', 'D#m', 'D#', 'E', 'F#']

key_names = ['C_Major', 'Cs_Major', 'D_Major', 'Ds_Major', 'E_Major', 'F_Major', 'Fs_Major', 'G_Major', 'Gs_Major', 'A_Major', 'As_Major', 'B_Major',
            'A_minor', 'As_minor', 'B_minor', 'C_minor', 'Cs_minor', 'D_minor', 'Ds_minor', 'E_minor', 'F_minor', 'Fs_minor', 'G_minor', 'Gs_minor'
            ]

keys = [C_Major, Cs_Major, D_Major, Ds_Major, E_Major, F_Major, Fs_Major, G_Major, Gs_Major, A_Major, As_Major, B_Major,
        A_minor, As_minor, B_minor, C_minor, Cs_minor, D_minor, Ds_minor, E_minor, F_minor, Fs_minor, G_minor, Gs_minor
        ]

#キーを判定
def keycheckfunc(input_codes, keys, key_names)
    
    #ハッシュを作成
    key_map = {}
    key_names.zip(keys) do |key_name, key|
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