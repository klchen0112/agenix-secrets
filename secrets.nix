let
  klchen-3400g = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAII/c10VIo81cztYJza3e+l1JlwsTJQk1lhBOypGhYn3T";
  klchen-mbp-m1 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAGszCNQqxT1/s6sYjj1aewvCjaa3D7UwoOM7UD5K+ha";
  klchen-sanjiao = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKx1SNaQZ6v1onDSGz1wNX1W3zIf2KkTERjKGC+k157D";
  klchen-mbp-dxm = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILre1BWBxY/iL7pnSRIQxVHkQq9b2H5dJTCQvJMMJWpi";
  users = [ klchen-3400g klchen-mbp-m1 klchen-sanjiao klchen-mbp-dxm];

  # darwin-
  nixos-3400g = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAsw5gk6koAb2D1SYnHt3jhYLNCWChR6eFKJ3vPO3tZY";
  mbp-m1 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC9ZvdIrZP9su70iBKgCB0QOY0kL9Z9qu3B9Of05VS5a";
  sanjiao = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAID8T9wyRN9CA/wWN70aHaRoAi1BRFeWkIjfL6+sycRaI";
  mbp-dxm = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAoP716OUCUyV56GoCX6dOjiC73lEiB9PFvoS4N3dwAF";
  systems = [ nixos-3400g mbp-m1 sanjiao mbp-dxm];
in
{
  "access-tokens.age".publicKeys = users ++ systems;
  # "secret2.age".publicKeys = users ++ systems;
}
