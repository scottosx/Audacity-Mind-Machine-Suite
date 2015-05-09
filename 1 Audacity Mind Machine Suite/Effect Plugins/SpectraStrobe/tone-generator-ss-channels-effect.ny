;nyquist plug-in
;version 3
;type effect
;categories "http://lv2plug.in/ns/lv2core#GeneratorPlugin"
;name "SpectraStrobe Tone Generator Channels..."
;action "Generating..."
;info "by Scott Hendrickson (www.mindplace.com)\nReleased under terms of GPLv2."

;; tone-generator-ss-channels-effect.ny Scott Hendrickson. January 2015.
;; Released under terms of the GNU General Public License version 2 
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
;;
;; For information about writing and modifying Nyquist plug-ins:
;; http://wiki.audacityteam.org/wiki/Nyquist_Plug-ins_Reference

;control color "SpectraStrobe Color" choice "Red,Green,Blue,White,Cyan,Magenta,Yellow" 0
;control channels "Channels" choice "Mono - 1,Stereo - 2" 1

(setq duration 1)


(cond
	((= channels 0)
	(cond
		((= color 0) (scale 0.075 (stretch duration (hzosc 18700) )) )
		((= color 1) (scale 0.075 (stretch duration (hzosc 19200) )) )
		((= color 2) (scale 0.075 (stretch duration (hzosc 19700) )) )
		((= color 3) (sum (scale 0.075 (stretch duration (hzosc 18700))) (scale 0.075 (stretch duration (hzosc 19200))) (scale 0.075 (stretch duration (hzosc 19700)))))
		((= color 4) (sum (scale 0.075 (stretch duration (hzosc 19200))) (scale 0.075 (stretch duration (hzosc 19700)))))
		((= color 5) (sum (scale 0.075 (stretch duration (hzosc 18700))) (scale 0.075 (stretch duration (hzosc 19700)))))
		((= color 6) (sum (scale 0.075 (stretch duration (hzosc 18700))) (scale 0.075 (stretch duration (hzosc 19200)))))
	) ;end cond
	)
	((= channels 1)
	(cond
		((= color 0) (vector(scale 0.075 (stretch duration (hzosc 18700) ))(scale 0.075 (stretch duration (hzosc 18700) ))))
		((= color 1) (vector(scale 0.075 (stretch duration (hzosc 19200) ))(scale 0.075 (stretch duration (hzosc 19200) ))))
		((= color 2) (vector(scale 0.075 (stretch duration (hzosc 19700) ))(scale 0.075 (stretch duration (hzosc 19700) ))))
		((= color 3) (vector (sum (scale 0.075 (stretch duration (hzosc 18700))) (scale 0.075 (stretch duration (hzosc 19200) )) (scale 0.075 (stretch duration (hzosc 19700) )) ) (sum (scale 0.075 (stretch duration (hzosc 18700))) (scale 0.075 (stretch duration (hzosc 19200) )) (scale 0.075 (stretch duration (hzosc 19700) )) )))
		((= color 4) (vector (sum (scale 0.075 (stretch duration (hzosc 19200) )) (scale 0.075 (stretch duration (hzosc 19700) )) ) (sum (scale 0.075 (stretch duration (hzosc 19200) )) (scale 0.075 (stretch duration (hzosc 19700) )) )))
		((= color 5) (vector (sum (scale 0.075 (stretch duration (hzosc 18700))) (scale 0.075 (stretch duration (hzosc 19700) )) ) (sum (scale 0.075 (stretch duration (hzosc 18700))) (scale 0.075 (stretch duration (hzosc 19700) )) )))
		((= color 6) (vector (sum (scale 0.075 (stretch duration (hzosc 18700))) (scale 0.075 (stretch duration (hzosc 19200) )) ) (sum (scale 0.075 (stretch duration (hzosc 18700))) (scale 0.075 (stretch duration (hzosc 19200) )) )))
	)) ;end cond
) ;end cond