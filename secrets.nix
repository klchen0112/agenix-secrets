let
  klchen-3400g = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAII/c10VIo81cztYJza3e+l1JlwsTJQk1lhBOypGhYn3T klchen@nixos";
  klchen-mbp-m1 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAGszCNQqxT1/s6sYjj1aewvCjaa3D7UwoOM7UD5K+ha";
  users = [ klchen-3400g klchen-mbp-m1];

  # darwin-
  nixos-3400g = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAsw5gk6koAb2D1SYnHt3jhYLNCWChR6eFKJ3vPO3tZY";
  mbp-m1 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC9ZvdIrZP9su70iBKgCB0QOY0kL9Z9qu3B9Of05VS5a";
  systems = [ nixos-3400g mbp-m1];
in
{
  "access-tokens.age".publicKeys = users ++ systems;
  # "secret2.age".publicKeys = users ++ systems;
}
