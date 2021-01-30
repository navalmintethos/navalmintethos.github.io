{ pkgs ? import <nixpkgs> {} }:

let
  name = "John Doe";
  email = "john.doe@example.com";
in

pkgs.mkShell {
  buildInputs = [
    pkgs.zola
  ];

  # overwrite git parameters for anonymity
  GIT_AUTHOR_NAME = name;
  GIT_AUTHOR_EMAIL =  email;
  GIT_COMMITTER_NAME = name;
  GIT_COMMITTER_EMAIL = email;
}
