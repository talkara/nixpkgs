{ lib, fetchurl, buildPythonPackage, numpy, scikitlearn }:

buildPythonPackage rec {
  pname = "hmmlearn";
  version = "0.2.2";
  name = pname + "-" + version;

  src = fetchurl {
    url = "mirror://pypi/h/hmmlearn/${name}.tar.gz";
    sha256 = "0492fe138bf6e2b95aa1efadc5124fa02ab01ba75451cd67dcc5f2a2fb282c20";
  };

  propagatedBuildInputs = [ numpy scikitlearn ];

  doCheck = false;

  meta = with lib; {
    description = "Hidden Markov Models in Python with scikit-learn like API";
    homepage    = https://github.com/hmmlearn/hmmlearn;
    license     = licenses.bsd3;
    maintainers = with maintainers; [ abbradar ];
  };
}
