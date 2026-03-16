{
  description = "0x5341's flake templates";

  outputs = { ... }: {
    templates = {
      devshell = {
        path = ./devshell;
        description = "cross platform devshell template";
      };
      
      rust = {
        path = ./rust;
        description = "rust standard template";
      };
    };
  };
}
