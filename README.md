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


