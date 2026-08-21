{
  description = "Python + LangChain development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShells.${system}.default = pkgs.mkShell {
        packages = with pkgs; [
          python3
          pyright
          ruff
          python3Packages.python-lsp-server
          python3Packages.python-dotenv
          python3Packages.pydantic
          python3Packages.langchain
          python3Packages.langchain-openai
          python3Packages.langchain-community
          python3Packages.ddgs
          python3Packages.datetime
          python3Packages.wikipedia
        ];
      };
    };
}
