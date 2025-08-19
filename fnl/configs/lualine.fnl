(local mode-map {:NORMAL "N"
                 :O-PENDING "N?"
                 :INSERT "I"
                 :VISUAL "V"
                 :V-BLOCK "VB"
                 :V-LINE "VL"
                 :V-REPLACE "VR"
                 :REPLACE "R"
                 :COMMAND "!"
                 :SHELL "SH"
                 :TERMINAL "T"
                 :EX "X"
                 :S-BLOCK "SB"
                 :S-LINE "SL"
                 :SELECT "S"
                 :CONFIRM "Y?"
                 :MORE "M"})

(local colors {:black "#080808" :white "#c6c6c6" :violet "#d45fde"})

(local bubbles-theme
       {:normal {:b {:fg colors.violet} :c {:fg colors.white}}
        :inactive {:b {:fg colors.white} :c {:fg colors.white}}})

(local opts {:options {:theme bubbles-theme
                       :component_separators ""
                       :section_separators ""}
             :sections {:lualine_a [{1 :mode
                                     :fmt (fn [mode]
                                            (or (. mode-map mode) mode))}]
                        :lualine_b [{1 :buffers
                                     :symbols {:alternate_file ""}
                                     :hide_filename_extension true}]
                        :lualine_c []
                        :lualine_x []
                        :lualine_y []
                        :lualine_z []}})

((. (require :lualine) :setup) opts)
