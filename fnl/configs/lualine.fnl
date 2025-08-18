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

(local opts {:options {:component_separators "" :section_separators ""}
             :sections {:lualine_a [{1 :mode
                                     :fmt (fn [mode]
                                            (or (. mode-map mode) mode))}]
                        :lualine_b [{1 :buffers
                                     :symbols {:alternate_file ""}
                                     :hide_filename_extension true}]
                        :lualine_c []
                        :lualine_x ["searchcount"]
                        :lualine_y [{1 :branch :icon "On"}]
                        :lualine_z []}})

((. (require :lualine) :setup) opts)
