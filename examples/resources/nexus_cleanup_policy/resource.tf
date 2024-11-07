resource "nexus_cleanup_policy" "policy" {
  name                       = "docker-age-3days"
  notes                      = "Cleanup policy for maven2 artifacts"
  criteria_last_blob_updated = 3
  format                     = "docker"
}