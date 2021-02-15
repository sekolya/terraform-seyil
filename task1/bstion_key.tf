resource "aws_key_pair" "bastion-London-west" {
  key_name   = "London-Bastion-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC/2MBDSAq5FI6wWZ72Txz4IC+GIzmvYtejw4D9VCsYwMuZE4rIUOkot18fSOphlhNbbfln321YteKM/l8ehrlKEFLU/WBv4Kr4gWUmGhcFv3DbZ9R2udaTOFgwKmwG2YDZQKaySyhS2dLRMwJmNVatJlpDPQy8ipwHEAae9TXPFx0cKhMKENOUfOvbwPphRRkz4HFYXM3AsfUnxuV1o/7URXD8yLzidXc/v2M+IBOyTWP0UxAMEpollE3RgJafPZDxUvIpjzPNTcK3MEYmMuNcq7LHUfWK3WJWSaoJTWSc9A2slLKFl1nkCTr/IT/kDKUDQrlYMbTy8hLFboHYvNzj ec2-user@ip-172-31-45-47.eu-west-2.compute.internal"
 
  provider = aws.west
}
resource "aws_key_pair" "bastion-London-east" {
  key_name   = "London-Bastion-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC/2MBDSAq5FI6wWZ72Txz4IC+GIzmvYtejw4D9VCsYwMuZE4rIUOkot18fSOphlhNbbfln321YteKM/l8ehrlKEFLU/WBv4Kr4gWUmGhcFv3DbZ9R2udaTOFgwKmwG2YDZQKaySyhS2dLRMwJmNVatJlpDPQy8ipwHEAae9TXPFx0cKhMKENOUfOvbwPphRRkz4HFYXM3AsfUnxuV1o/7URXD8yLzidXc/v2M+IBOyTWP0UxAMEpollE3RgJafPZDxUvIpjzPNTcK3MEYmMuNcq7LHUfWK3WJWSaoJTWSc9A2slLKFl1nkCTr/IT/kDKUDQrlYMbTy8hLFboHYvNzj ec2-user@ip-172-31-45-47.eu-west-2.compute.internal"
  provider = aws.east
 
}