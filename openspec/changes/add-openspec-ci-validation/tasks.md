# Tasks

## 1. OpenSpec validation in GitHub Actions

- [x] 1.1 Resolve unfinished acceptance tasks 3.1 and 3.2 in the archived create-base-coach-structure change before enabling archive validation. Close tasks only with evidence, or agree with the maintainer how to resolve any remaining work. Verify that openspec validate --archived passes before enabling the check.

- [x] 1.2 Add separately named steps to the existing Linux matrix job for `openspec validate --all --strict --no-interactive` and `openspec validate --archived`, reusing the pinned OpenSpec installation. Check that both commands pass on the repository and fail with a nonzero exit code in disposable projects with an invalid delta or an incomplete archived task, respectively.
- [ ] 1.3 Verify that the workflow still runs on pushes and pull requests, retains its Windows, Linux, and macOS smoke checks, and reports a failed job if either validator fails. Inspect the first hosted run once available.
- [x] 1.4 Record the CI validation decision in the repository decision log and verify the entry links to this change.
