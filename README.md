# Windows Personal localhost Cookbook

Setup locally windows 

## Instructions

* run `init.ps1` to install `choco` and `chef`
* create a chef repo with `chef generate repo chef-repo` - `chef-repo` is the repo name you can change to use the name you want
* place this cookbook inside of `$CHEF_REPO_HOME\cookbooks`
* set location to `$CHEF_REPO_HOME`
* run `chef-client -z -o localhost` - where `localhost` is the cookbook name