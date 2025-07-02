{ pkgs, ... }: {
  packages = [
    pkgs.python3
  ];
  bootstrap = ''
    cp -rf ${./.} "$out"
    chmod -R +w "$out"
    mv "$WS_NAME" "$out"
  '';
}