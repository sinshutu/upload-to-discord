# Upload to Discord

## Usage
```
workflow "Package" {
  on = "release"
  resolves = ["Upload to Discord"]
}

action "Build file" {
  uses = "actions/build/file"
}

action "Upload to Discord" {
  uses = "sinshutu/upload-to-discord@master"
  args = "my-file.pdf"
  secrets = ["DISCORD_WEBHOOK"]
  needs = ["Build file"]
}
```

## Requirements

You must pass at least one argument, the path to the file you want to attach. You must also include the `DISCORD_WEBHOOK` secret, otherwise uploading the file will not work.

```workflow
action "Upload to Discord" {
  uses = "sinshutu/upload-to-discord@master"
  args = "my-file.pdf"
  secrets = ["DISCORD_WEBHOOK"]
  needs = ["Build file"]
}
```
