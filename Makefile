VIRTUALENV?='.'

install:
	$(VIRTUALENV)./bin/pip list | grep pip-accel || $(VIRTUALENV)/bin/pip install pip-accel
	$(VIRTUALENV)/bin/pip-accel install -r webapp/requirements.txt -r dev-requirements.txt
