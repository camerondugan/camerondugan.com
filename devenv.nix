{ pkgs, lib, config, inputs, ... }:
{
  # https://devenv.sh/packages/
  packages = with pkgs; [ 
    git 
    optipng
    jpegoptim
  ];
  # https://devenv.sh/languages/
  languages.ruby.enable = true;
  languages.ruby.version = "3.2";
}
