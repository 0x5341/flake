{
  description = "0x5341's flake templates";

  outputs = { ... }: {
    templates = {
      rust = {
        path = ./rust;
        description = "rust standard template";
      };
    };
  };
}
