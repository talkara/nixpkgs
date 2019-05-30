{ lib, fetchPypi, buildPythonPackage, requests, zeroconf, protobuf, casttube, isPy3k }:

buildPythonPackage rec {
  pname = "PyChromecast";
  version = "3.2.2";

  src = fetchPypi {
    inherit pname version;
    sha256 = "da8a5a5a0d6c1046e818b586b247dd41f556ffa2a2e80f09cff6497c2db5879e";
  };

  disabled = !isPy3k;

  propagatedBuildInputs = [ requests zeroconf protobuf casttube ];

  meta = with lib; {
    description = "Library for Python 3.4+ to communicate with the Google Chromecast";
    homepage    = https://github.com/balloob/pychromecast;
    license     = licenses.mit;
    maintainers = with maintainers; [ abbradar ];
    platforms   = platforms.unix;
  };
}
