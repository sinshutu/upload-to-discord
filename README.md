# Upload to Discord

## Usage
```
on: push
name: Main workflow
jobs:
  github-action:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Send file README.md to discord channel
      uses: sinshutu/upload-to-discord@master
      env:
        DISCORD_WEBHOOK: ${{ secrets.DISCORD_WEBHOOK }}
      with:
        args: README.md
```

## Requirements

You must pass at least one argument, the path to the file you want to attach. You must also include the `DISCORD_WEBHOOK` secret, otherwise uploading the file will not work.

```yaml
    - name: Send file README.md to discord channel
      uses: sinshutu/upload-to-discord@master
      env:
        DISCORD_WEBHOOK: ${{ secrets.DISCORD_WEBHOOK }}
      with:
        args: README.md
```
