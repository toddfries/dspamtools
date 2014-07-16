sbins= dspam_sigrun dspam_sigstash tspam cleandspamdb
bins=  dspam_mboxparse dspamc_wrapper

install:
.for _f in ${bins}
	install -m 555 ${_f} /usr/local/bin
.endfor
.for _f in ${sbins}
	install -m 555 ${_f} /usr/local/sbin
.endfor
