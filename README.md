# CodeAsylums-App
Create a hybrid app for CodeAsylums community where people learn, interact and help the community using [Flutter](https://flutter.dev/) or [React Native](https://reactnative.dev/).
<br/>
<img src=https://uploads-ssl.webflow.com/5d359e0f47f4bbac7f9e3f50/5ef0a664ab7b6a925ddf8e64_flutter.png height=150px alt=Flutter/>
<img src=https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1280px-React-icon.svg.png height=150px alt=Flutter/>

## Steps to follow :scroll:

### 0. Star The Repo :star2:

Star the repo by pressing the topmost-right button to start your wonderful journey.


### 1. Fork it :fork_and_knife:

You can get your own fork/copy of [CodeAsylums-App](https://github.com/helios1101/CodeAsylums-App) by using the <a href="https://github.com/helios1101/CodeAsylums-App/new/master?readme=1#fork-destination-box"><kbd><b>Fork</b></kbd></a> button or clicking [this](https://github.com/helios1101/CodeAsylums-App/new/master?readme=1#fork-destination-box) at top-right of your screen.

 [![Fork Button](https://help.github.com/assets/images/help/repository/fork_button.jpg)](https://github.com/helios1101/CodeAsylums-App/)


### 2. Clone it :busts_in_silhouette:

`NOTE: commands are to be executed on Linux, Mac, and Windows(using Powershell)`

You need to clone (download) it to local machine using

```sh
$ git clone https://github.com/Your_Username/CodeAsylums-App.git
```

> This makes a local copy of the repository in your machine.

Once you have cloned the `CodeAsylums-App` repository in Github, move to that folder first using change directory command on Linux, Mac, and Windows(PowerShell to be used).

```sh
# This will change directory to a folder CodeAsylums-App
$ cd CodeAsylums-App
```

Move to this folder for all other commands.

### 3. Set it up :arrow_up:

Run the following commands to see that *your local copy* has a reference to *your forked remote repository* in Github :octocat:

```sh
$ git remote -v
origin  https://github.com/Your_Username/CodeAsylums-App.git (fetch)
origin  https://github.com/Your_Username/CodeAsylums-App.git (push)
```

Now, let's add a reference to the original [CodeAsylums-App](https://github.com/helios1101/CodeAsylums-App/) repository using

```sh
$ git remote add upstream https://github.com/helios1101/CodeAsylums-App.git
```

> This adds a new remote named ***upstream***.

See the changes using

```sh
$ git remote -v
origin    https://github.com/Your_Username/CodeAsylums-App.git (fetch)
origin    https://github.com/Your_Username/CodeAsylums-App.git (push)
upstream  https://github.com/Remote_Username/CodeAsylums-App.git (fetch)
upstream  https://github.com/Remote_Username/CodeAsylums-App.git (push)
```
`In your case, you will see`
```sh
$ git remote -V
origin    https://github.com/Your_Username/CodeAsylums-App.git (fetch)
origin    https://github.com/Your_Username/CodeAsylums-App.git (push)
upstream  https://github.com/helios1101/CodeAsylums-App.git (fetch)
upstream  https://github.com/helios1101/CodeAsylums-App.git (push)
```

### 4. Sync it :recycle:

Always keep your local copy of the repository updated with the original repository.
Before making any changes and/or in an appropriate interval, run the following commands *carefully* to update your local repository.

```sh
# Fetch all remote repositories and delete any deleted remote branches
$ git fetch --all --prune

# Switch to `master` branch
$ git checkout master

# Reset local `master` branch to match the `upstream` repository's `master` branch
$ git reset --hard upstream/master

# Push changes to your forked `CodeAsylums-App` repo
$ git push origin master
```

### 5. Ready Steady Go... :turtle: :rabbit2:

Once you have completed these steps, you are ready to start contributing by checking our `Help Wanted` Issues and creating [pull requests](https://github.com/helios1101/CodeAsylums-App/pulls).

### 6. Create a new branch :bangbang:

Whenever you are going to contribute. Please create a separate branch using command and keep your `master` branch clean (i.e. synced with remote branch).

```sh
# It will create a new branch with name Branch_Name and switch to branch Folder_Name
$ git checkout -b BranchName
```

Create a separate branch for contribution and try to use the same name of the branch as of folder.

To switch to the desired branch

```sh
# To switch from one folder to other
$ git checkout BranchName
```

To add the changes to the branch. Use

```sh
# To add all files to branch Folder_Name
$ git add .
```

Type in a message relevant for the code reviewer using

```sh
# This message get associated with all files you have changed
$ git commit -m 'relevant message'
```

Now, Push your awesome work to your remote repository using

```sh
# To push your work to your remote repository
$ git push -u origin BranchName
```

Finally, go to your repository in the browser and click on `compare and pull requests`.
Then add a title and description to your pull request that explains your precious effort.


## Help Contributing Guides :crown:

Please discuss it with us first by creating a new issue.

:tada: :confetti_ball: :smiley: _**Happy Contributing**_ :smiley: :confetti_ball: :tada:
