;nyquist plug-in
;version 3
;type generate
;categories "http://lv2plug.in/ns/lv2core#GeneratorPlugin"
;name "SpectraStrobe Color Generator..."
;action "Generating..."
;info "by Scott Hendrickson (www.mindplace.com)\nReleased under terms of GPLv2."

;; tone-generator-ss-picker.ny Scott Hendrickson. January 2015.
;; Released under terms of the GNU General Public License version 2 
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
;;
;; For information about writing and modifying Nyquist plug-ins:
;; http://wiki.audacityteam.org/wiki/Nyquist_Plug-ins_Reference

;control reda "Red Amplitude" real "rms" 0.075 0 0.075
;control greena "Green Amplitude" real "rms" 0.075 0 0.075
;control bluea "Blue Amplitude" real "rms" 0.075 0 0.075
;control duration "Duration" real "seconds" 60 0 6000


(vector (sum (scale reda (stretch duration (hzosc 18700))) (scale greena (stretch duration (hzosc 19200) )) (scale bluea (stretch duration (hzosc 19700) )) ) (sum (scale reda (stretch duration (hzosc 18700))) (scale greena (stretch duration (hzosc 19200) )) (scale bluea (stretch duration (hzosc 19700) ))))
