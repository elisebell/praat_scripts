#get list of selected sounds
#concatenate each with specified sounds on either side
#save as wav file in specified directory

#directory$ = "/Users/elisebell1/Dropbox/dissertation/perception/sounds/t_n/"

directory$ = "/Users/elisebell1/Desktop/cat_perc_stims/selected for stim creation/vot_concats/vot_concats_w_frame/"

#selection
selected_objects = numberOfSelected ("Sound")
#writeInfoLine ('selected_objects')
for i to selected_objects
  my_object[i] = selected(i)
endfor

for i to selected_objects
 	selectObject (my_object[i])
	name$ = selected$ ("Sound")

	#Edit
     	#pause  Make any changes then click Continue.

	selectObject ("Sound newydd")
	do ("Copy...", "_newydd")

	selectObject ("Sound dyma_")
	plusObject ("Sound 'name$'")
	plusObject ("Sound _newydd")

	do ("Concatenate with overlap...", 0.005)
	do ("Rename...", "'name$'_fr")

	file_name$ = "'directory$''name$'_fr.wav"

	do ("Save as WAV file...", file_name$)

	selectObject ("Sound 'name$'_fr")
	do ("Remove")

	selectObject ("Sound _newydd")
	do ("Remove")

endfor