{ pkgs, lib, cloud_programs, ... }:
let
  functions = import ../functions.nix { inherit pkgs lib; };
  cloud_program_options = [ "awscli2" "insync" "rclone" "maestral" ];
in
functions.makeModuleConfig {
  options = cloud_program_options;
  current = cloud_programs;
  module_name = "cloud_program";
}
