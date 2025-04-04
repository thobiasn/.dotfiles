{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  pname = "supabase-cli";
  version = "2.20.3";

  src = pkgs.fetchurl {
    url = "https://github.com/supabase/cli/releases/download/v${version}/supabase_linux_amd64.tar.gz";
    sha256 = "sha256-EaczLAnVZXH57CpIcWYLXnsTw091yZR9OHDhWAXnIhE=";
  };

  unpackPhase = ''
    mkdir source
    tar -xzf $src -C source
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp source/supabase $out/bin/supabase
    chmod +x $out/bin/supabase
  '';

  meta = with pkgs.lib; {
    description = "Supabase CLI – prebuilt binary";
    homepage = "https://github.com/supabase/cli";
    license = licenses.mit;
    platforms = platforms.linux;
  };
}
