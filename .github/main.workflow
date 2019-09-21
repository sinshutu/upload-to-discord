workflow "Main workflow" {
  resolves = [
    "local action",
    "github-action",
    "Upload to Discord",
  ]
  on = "push"
}

action "local action" {
  uses = "./"
  args = "README.md"
  secrets = ["DISCORD_WEBHOOK"]
}

action "github-action" {
  uses = "sinshutu/upload-to-discord@master"
  args = "README.md"
  secrets = ["DISCORD_WEBHOOK"]
}

action "Upload to Discord" {
  uses = "./"
  secrets = ["DISCORD_WEBHOOK"]
  args = "./*"
}
