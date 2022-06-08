resource "spacelift_policy" "access" {
  type = "ACCESS"

  name = "All of Engineering gets read access"
  body = write { input.slack.channel.name == "general" }
}