{ pkgs, ... }: {
  packages = [
    pkgs.python3
  ];
  bootstrap = ''
    cp -rf ${./.} "$out"
    chmod -R +w "$out"
    rm -rf "$out/.git" "$out/idx-template".{nix,json}
  '';
}