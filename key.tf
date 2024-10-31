
resource "alicloud_ecs_key_pair" "key" {
  key_pair_name = "CapstoneKeyPair"
  key_file      = "CapstoneKey.pem"
  
}
