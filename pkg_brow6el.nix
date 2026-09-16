{
  cef-binary,
  # fetchFromCodeberg,
  # pkgs,
  cmake,
  fetchgit,
  lib,
  # base-devel,
  git,
  curl,
  libsixel,
  pkg-config,
  libX11,
  libxcomposite,
  libxdamage,
  libxfixes,
  libxrandr,
  mesa,
  pango,
  atk,
  cups,
  alsa-lib,
  nss,
  nspr,
  glib,
  stdenv,
}:
stdenv.mkDerivation (final: {
  pname = "brow6el";
  version = "0.3.5";

  src = fetchgit {
    # url = "https://tangled.org/janantos.tngl.sh/brow6el";
    url = "ssh://git@tangled.org/janantos.tngl.sh/brow6el.git/";
    rev = "2859fc805e43962a7bca411fa36ef62dd0939962";
    # rev = "${final.version}";
    # rev = "v${final.version}";
    hash = "sha256-yk+fMVuRXHB6u4OBDQ7U6wfyhPpq3cPrQclrCHFi5mY=";
  };

  env = {
    "CEF_DIR" = "${cef-binary}/cmake/";
    "CEF" = "${cef-binary}/cmake/FindCEF.cmake";
  };

  prebuild = ''
    export CEF_DIR = "${cef-binary}/cmake/"
    cp ${cef-binary}/bin/cef-binary .
  '';

  nativeBuildInputs = [
    cmake
    # base-devel
    git
    curl
    libsixel
    pkg-config
    libX11
    libxcomposite
    libxdamage
    libxfixes
    libxrandr
    mesa
    pango
    atk
    cups
    alsa-lib
    nss
    nspr
    glib
    # cef-binary
  ];

  buildInputs = [
    cef-binary
  ];

  meta = {
    description = "Minimalistic graphical terminal web browser using sixels.";
    homepage = "https://www.brow6el.dev/";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ janantos ];
  };
})
