{ pkgs, ... }: {
  packages = [
    pkgs.python3
  ];
  bootstrap = ''
    mkdir -p "$out"
    cp -rf ${./.} "$out"
    chmod -R u+w "$out"
    rm -rf "$out/.git" "$out/idx-template".{nix,json}
  '';
}