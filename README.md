# What is securitymetrics.org?

# Installing

1. Install Hugo as described in the [Quickstart guide](https://gohugo.io/getting-started/quick-start/)

2. Initialize the site with the `hugo-book` module.

       hugo new site securitymetrics
       git init
       cd securitymetrics
       hugo mod init securitymetrics
       hugo mod get github.com/alex-shpak/hugo-book

3. Add module import lines to `hugo.yaml`:

       module:
       imports:
           - path: 'github.com/alex-shpak/hugo-book'

4. To test, start the server:

        hugo server

# Deploying

Deployment to GitHub Pages via GitHub Actions is as described in Hugo’s [guide](https://gohugo.io/hosting-and-deployment/hosting-on-github/):

1. Create a custom GitHub workflow `.github/workflows/hugo.workflow` in the local Git repo.
2. Set up a GitHub Action which will automatically regenerate the website on when the repo update is pushed.

Note: `hugo.workflow` contains the hard-coded Hugo version to use. The version number in `jobs/build/env` should not be prefixed with a `v.` In addition, the Hugo version GitHub downloads is hard-coded to use a particular version of Go. Use the same versions in the local dev environment.




