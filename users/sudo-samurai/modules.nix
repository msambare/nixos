{ pkgs, ... }: {

  imports = [
    ../../modules/browser
    ../../modules/terminal
    ../../modules/api_client
    ../../modules/archive
    ../../modules/audio
  ];

}
