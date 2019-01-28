workflow "Main workflow" {
  on = "push"
  resolves = ["local action", "github-action"]
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
