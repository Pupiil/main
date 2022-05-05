# ENV SETUP

## DEVELOPMENT

### Installing pupiilclient
install_test_client_pkg:
	@ python3 -m pip install --index-url https://test.pypi.org/simple/ pupiilclient

### Installing pupiilcommon
install_test_common_pkg:
	@ python3 -m pip install --index-url https://test.pypi.org/simple/ pupiilcommon

### Installing pupiildata
install_test_data_pkg:
	@ python3 -m pip install --index-url https://test.pypi.org/simple/ pupiildata

### Installing pupiilkey
install_test_key_pkg:
	@ python3 -m pip install --index-url https://test.pypi.org/simple/ pupiilkey

### Installing pupiilrecognition
install_test_recognition_pkg:
	@ python3 -m pip install --index-url https://test.pypi.org/simple/ pupiilrecognition

install_test_server_pkg:
	@ python3 -m pip install --index-url https://test.pypi.org/simple/ pupiilserver

install_test_view_pkg:
	@ python3 -m pip install --index-url https://test.pypi.org/simple/ pupiilview

install_dev: install_test_client_pkg install_test_common_pkg install_test_data_pkg \
	install_test_key_pkg install_test_recognition_pkg install_test_server_pkg \
	install_test_view_pkg

# CODE QUALITY

# # Styling related
style: format lint

# # # Formatting
format:
	@ black .

# # # Linting
lint:
	@ # stop the build if there are Python syntax errors or undefined names
	@ flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics

	@ # exit-zero treats all errors as warnings. The GitHub editor is 127 chars wide
	@ flake8 . --count --exit-zero --max-complexity=10 --max-line-length=127 --statistics
