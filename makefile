.SILENT :

run : login.py .certs
	python3 login.py

.certs :
	python3 getUserPass.py

resetuserpass :
	rm -f .certs
	make .certs

installrequirements : requirements.txt
	pip3 install -r requirements.txt

reinstallrequirements : requirements.txt
	pip3 uninstall -r requirements.txt
	make installrequirements