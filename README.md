# PR Merged Action

An action to check if a PR was merged. Currently it can only be used in a "pull_request" event, but will eventually be extended so it can be used in more events.

## Usage

```workflow
action "Check for PR Merge" {
  uses = "lannonbr/pr-merged-action@master"
  args = "true"
}
```
