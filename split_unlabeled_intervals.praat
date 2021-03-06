soundname$ = selected$ ("TextGrid", 1)
select TextGrid 'soundname$'

starting_interval = 1
tier = 1
x$ = "xxx"

#if fileReadable (filename$)
	numberOfIntervals = Get number of intervals... tier
	# Loop through intervals from the selected interval on:
	for interval from starting_interval to numberOfIntervals
		oldlabel$ = Get label of interval... tier interval
		if oldlabel$ <> "xxx"
			start = Get starting point... tier interval
			end = Get end point... tier interval
			duration = end-start
			midpoint = (start + end) / 2
			Insert boundary... 2 midpoint
			middle_int = Get interval at time... 2 midpoint
			Set interval text... 2 middle_int xxx
			Insert boundary... 2 midpoint+0.1
			interval = interval + 1
		endif
	endfor
#endif