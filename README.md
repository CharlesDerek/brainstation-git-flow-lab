
#GitFlow Exercise:

1.  Student Content
3.  Back End Development
5.  Git Flow
7.  Exercises

Lab: Git Flow
=============

Getting Started
---------------

Please [download the starter code package](https://api.brainstation.io/content/link/1s86YdhEspnmFjKCJM6bkBX6hnVyEIRB5).

The purpose of this lab is to go over some common collaborative scenarios when working with Git Flow, where multiple people might be editing files simultaneously.

Git Refresher for Collaborative Development
-------------------------------------------

    $ git remote add <name> <url> #(add remote repo)
    $ git remote -v #(display remotes)
    $ git branch -a #(display current branches including remote branches)
    $ git branch -v #(display local only branches, but latest commits as well)
    $ git branch <name> #(create a new branch)
    $ git branch -d <name> #(delete a branch)
    $ git branch -dr <name> #(delete remote branch)
    $ git checkout -b <name of branch> #(checkout a branch)
    $ git pull <remote> <branch> #(pull latest code from remote branch)
    $ git push <remote> <branch> #(push latest local changes to remote branch)
    $ git push -u <remote> <branch> #(push upstream)
    $ git merge <branch> #(merge other branch into your current working branch)
    

Group Activity
--------------

### Setting up

1.  Get into groups as assigned by your instructor. Make sure you designate a single person responsible for the repo. That person should initialize a local Git repository from the downloaded starter files. To do this:
    
    *   [Create a new private repo from github.com](https://docs.github.com/en/get-started/quickstart/create-a-repo). You do not have to initialize the repository with a README.
    *   Download and unzip the starter files to a directory.
    *   Navigate to the directory using your terminal, and initialize the directory using `git init`.
    *   Use `git add`, `git commit`, and `git push` so the starter files are on the `main` branch of your remote repo. Make sure to follow the steps from GitHub after creating a repo for pushing existing repo to remote.
    *   Create a `develop` branch off of `main` branch and push it to remote as well.
    *   You can optionally make `develop` a default branch under "Settings > Branches" of repository settings.
2.  Make sure to add all other group members as collaborators by going into “Settings > Manage Access” in the project repository page and inviting them by their GitHub handle
    
3.  Once the starter code has been pushed to repo owner's account on github.com, the remaining students should clone the remote repo to their machines.
    

### Making changes

All group members will make different changes to the code base, first to their version of the code and then submit a pull request to have it become the next version.

1.  All group members should create and check out a new branch from the `develop` branch. Branch names should follow this pattern: `feature/<yourfirstname>`, where `<yourfirstname>` is your first name.
    
2.  Update the `background-color` property in the `styles.css` file to a color of your choice.
    
3.  Add a poem object to the designated line in the `script.js` file. Your poem object should have three key/value pairs: `author`, `poem`, and `image.`
    
4.  Assign the `author` key the value of your first name as a string. Assign the `poem` key the value of a random poem that follows the "Roses Are Red" pattern as a string. Use Google to find an image to display with your poem. Save the image file in the `assets` directory. Assign the `image` key in your poem object the value of the image file name (including the file extension) as a string.
    
5.  `git add`, `git commit`, and `git push` to the remote of your branch.
    
6.  Head over to github.com and create a Pull Request from your branch -- `features/<yourfirstname>` to `develop`.
    
7.  Once all group members have submitted their PRs, the repo organizer should randomly select one group member and open their PR. Then, as a group, review the PR:
    
    *   Has the group member followed all instructions and completed the task?
    *   Is their branch running without errors? Leave a comment on the PR with feedback.
    *   When the group member's branch is ready to be merged, the person responsible for the repo should merge it into the `develop` branch.
8.  We've merged and closed one pull request, but the remaining PRs to `develop` are still open. Revisit your PR.
    
9.  There should now be a message alerting you that your branch conflicts with the base branch and cannot be merged.
    

### Dealing with merge conflicts

Merge conflicts are a normal part of working with Git and GitHub, especially when multiple people work on the same repo.

1.  To fix merge conflicts, we need to make sure we can reproduce the merge conflict. So first, let's make sure we have the newest version of `develop`:
    
    *   `git checkout develop`
    *   `git pull` will pull the latest changes from the remote, which at this point should have code from the approved Pull Request.
2.  Switch back to your branch with `features/<yourfirstname>` and merge the develop branch:
    
    *   `git checkout features/<yourfirstname>`
    *   `git merge develop`
3.  Use VS Code to fix the merge conflicts. You will see something like the following:
    

    <<<<<< HEAD (Current Change)
    ...
    ======
    ...
    >>>>>> your-branch
    

*   Your job is to leave the code that you consider most up-to-date or that makes up a correct combination of lines of code from the conflicting commits. First, in the `styles.css` file, select your background color. Then, in the `script.js` file, update your code so that the merged poem comes before your poem.
*   Remember to remove all of the `<<<<<<< HEAD (Current Change)`, the `=======` and the `>>>>>>> your-branch` parts of the code before committing.

4.  Alternatively, in VS Code, you'll see a GUI for accepting current, incoming, or both changes as the right combination of code for this merge.
    
5.  Once your merge is complete, `git add` and `git commit` your merge changes and `git push` it to your branch.
    
6.  Revisit the PR, which should be able to be accepted.
    
7.  Randomly select a second group member and review their updated PR together:
    
    *   Have they followed all instructions and completed the original task?
    *   Is their branch running without errors?
    *   According to the instructions, have they successfully resolved their merge conflicts with the base branch?
8.  Leave a comment on the PR with feedback. When the second group member's branch is ready to be merged, the person responsible for the repo should merge it to the `develop` branch.
    

Additional Resources
--------------------

*   [Git Cheat Sheet](https://api.brainstation.io/content/link/1ye8QXv9PsOOyjudOAiHNZa-DgaWl1N3p)
