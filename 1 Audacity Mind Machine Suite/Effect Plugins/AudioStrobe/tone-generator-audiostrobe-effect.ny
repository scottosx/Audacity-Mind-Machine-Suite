;nyquist plug-in
;version 3
;type effect
;categories "http://lv2plug.in/ns/lv2core#GeneratorPlugin"
;name "AudioStrobe Tone Generator Effect..."
;action "Generating..."
;info "by Scott Hendrickson (www.mindplace.com)\nReleased under terms of GPLv2."

;; tone-generator-audiostrobe.ny Scott Hendrickson. January 2015.
;; Released under terms of the GNU General Public License version 2 
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
;;
;; For information about writing and modifying Nyquist plug-ins:
;; http://wiki.audacityteam.org/wiki/Nyquist_Plug-ins_Reference


(setq duration 1)

(vector
(scale 0.25 (stretch duration (hzosc 19200) ))
(scale 0.25 (stretch duration (hzosc 19200) ))
)