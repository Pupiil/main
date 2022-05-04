install_test_client_pkg:
	@ python3 -m pip install --index-url https://test.pypi.org/simple/ --no-deps pupiilclient

install_test_common_pkg:
	@ python3 -m pip install --index-url https://test.pypi.org/simple/ --no-deps pupiilcommon

install_test_data_pkg:
	@ python3 -m pip install --index-url https://test.pypi.org/simple/ --no-deps pupiildata

install_test_key_pkg:
	@ python3 -m pip install --index-url https://test.pypi.org/simple/ --no-deps pupiilkey

install_test_recognition_pkg:
	@ python3 -m pip install --index-url https://test.pypi.org/simple/ --no-deps pupiilrecognition

install_test_server_pkg:
	@ python3 -m pip install --index-url https://test.pypi.org/simple/ --no-deps pupiilserver

install_test_view_pkg:
	@ python3 -m pip install --index-url https://test.pypi.org/simple/ --no-deps pupiilview

install_dev: install_test_client_pkg install_test_common_pkg install_test_data_pkg \
	install_test_key_pkg install_test_recognition_pkg install_test_server_pkg \
	install_test_view_pkg
