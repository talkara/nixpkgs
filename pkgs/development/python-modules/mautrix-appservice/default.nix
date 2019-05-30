{ lib, buildPythonPackage, fetchPypi, aiohttp, future-fstrings, pythonOlder }:

buildPythonPackage rec {
  pname = "mautrix-appservice";
  version = "0.3.9";

  src = fetchPypi {
    inherit pname version;
    sha256 = "f3289f2333d34aae0a5db974ffbada235d29c7082f4a04a6192a5e0fa88e4857";
  };

  propagatedBuildInputs = [
    aiohttp
    future-fstrings
  ];

  # No tests available
  doCheck = false;

  disabled = pythonOlder "3.5";

  meta = with lib; {
    homepage = https://github.com/tulir/mautrix-appservice-python;
    description = "A Python 3 asyncio-based Matrix application service framework";
    license = licenses.mit;
    maintainers = with maintainers; [ nyanloutre ];
  };
}
