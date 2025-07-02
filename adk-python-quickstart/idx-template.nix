{ pkgs, ... }: {
  packages = [
    pkgs.python3
  ];
  bootstrap = ''
    cp -rf ${./.}/multi_tool_agent "$WS_NAME"
    chmod -R +w "$WS_NAME"
    chmod +x "$WS_NAME"/devserver.sh
    mv "$WS_NAME" "$out"
  '';
}