sbins= dspam_sigrun dspam_sigstash tspam

install:
	install -m 555 dspamc_wrapper /usr/local/bin
.for _f in ${sbins}
	install -m 555 ${_f} /usr/local/sbin
.endfor