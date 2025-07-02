{ pkgs, ... }: {
  packages = [
    pkgs.python3
  ];
  bootstrap = ''
    mkdir -p "$out"
    cp -r ${./.}/* "$out"
    mkdir "$out/.idx"
    cp -rf ${./.}/.idx "$out"
    chmod -R u+w "$out"
    rm -rf "$out/.git" "$out/idx-template.json" "$out/idx-template.nix"
  '';
}