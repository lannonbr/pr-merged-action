# DEPRECATED AS OF Aug 25, 2019

With the new version of GitHub Actions, you can do something like this directly right in the workflow file like such:

```yaml
jobs:
  my_first_job:
    steps:
      - name: "Run if merged"
        if: github.event_name == 'pull_request' && github.event.action == 'closed' && github.event.pull_request.merged == true
        runs: echo "PR was merged!"
```

# PR Merged Action

An action to check if a PR was merged. Currently it can only be used in a "pull_request" event, but will eventually be extended so it can be used in more events.

## Usage

```workflow
action "Check for PR Merge" {
  uses = "lannonbr/pr-merged-action@master"
  args = "true"
}
```
