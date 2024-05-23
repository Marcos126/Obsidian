

# Gobuster
syntax:
- gobuster vhost -w {wordlist} -u {url-objetivo}

# wfuzz
syntax:
- wfuzz -w {wordlist} (opcional --hc=403(oculta el codigo que le indiques,el --sc muestra el codigo que le indiques) i -h "Host FUZZ.example.com" http://example.com


# sublister
syntax:
- python3 sublist3r.py -d example.com

# CTFR(UnaPibaGeek)
syntax:
