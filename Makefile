bins=  dspam_mboxparse dspamc_wrapper dspam_redeliver
sbins= dspam_sigrun dspam_sigstash tspam cleandspamdb

install:
.for _f in ${bins}
	install -m 555 ${_f} /usr/local/bin
.endfor
	#install -m 4555 -o spamtrain dspamc_wrapper /usr/local/bin
.for _f in ${sbins}
	install -m 555 ${_f} /usr/local/sbin
.endfor
