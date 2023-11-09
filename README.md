# README

Securitymetrics.org is a community website dedicated to the study of data, measurements, and metrics associated with cybersecurity. The website is statically generated using Hugo and deployed to GitHub pages as a serverless site.

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

3. Add and verify the domain `securitymetrics.org`. Using the GitHub UI in the repo, configure Pages to use the custom domain `www.securitymetrics.org`. Unlike earlier versions of GitHub Pages, no CNAME text files appear to be needed.

4. After the workflow has been verified as working, change the branch that will autodeploy (in `on:/push:/branches:`) from `main` to `master`.

Note: the section `jobs:/build:/env:` in `hugo.workflow` contains the hard-coded version of Hugo to use for building the site. The version number should _not_ be prefixed with a `v.` In addition, the Hugo version that GitHub downloads is hard-coded to use a particular version of Go. When testing local working copies, make sure to use the same version of Go.

# Configuring DNS

As described in the GitHub Pages guide to [managing a custom domain](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site), add a `CNAME` record for the `www` subdomain that points to the GitHub account URL, which is `ajaquith.github.io`.

Then, for the apex (top-level) domain, create an `A` record that points to the IP addresses for GitHub Pages;

    185.199.108.153
    185.199.109.153
    185.199.110.153
    185.199.111.153
