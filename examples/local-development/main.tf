resource "nexus_cleanup_policy" "policy" {
  name                       = "maven-cleanup-policy"
  notes                      = "Cleanup policy for maven2 artifacts"
  criteria_last_blob_updated = 60
  retain                     = 3
  criteria_release_type      = "RELEASES"
  format                     = "maven2"
}

resource "nexus_cleanup_policy" "policy2" {
  name                       = "docker-age-3days"
  notes                      = "Cleanup policy for docker artifacts"
  criteria_last_blob_updated = 3
  format                     = "docker"
}