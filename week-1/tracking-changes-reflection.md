How does tracking and adding changes make developers' lives easier?
The abilit to track and add changes makes it much more flexible when it comes to adopting and monitoring changes/updates to a program by multiple programmers. Developers can then pick and choose with ease which update and which feature to add.

What is a commit?
A commit is like a save point for a stage in programming.

What are the best practices for commit messages?
Start with a 50-char summary, followed by another 72 char explanation if necessary. Make sure there is a blank line separating the two. Write in the imperative

What does the HEAD^ argument mean?
HEAD^ is referring to the last commit. Useful for resetting files to the prior 'save point'

What are the 3 stages of a git change and how do you move a file from one stage to the other?
Working, to staged, to committed.
To go from working (or untracked) to staged, you 'add' the file using 'git add file_name'
To go from staged to committed, you 'commit' the file using 'git commit -m 'note''

Write a handy cheatsheet of the commands you need to commit your changes?
git add file_name
git commit -m 'notes'
git reset HEAD file_name

What is a pull request and how do you create and merge one?
A pull request is a request to merge commits from a working branch into the master branch. This is accomplished by pushing a branch into a master branch, and then on Github, the user s able to view the pull request. Then you will be able to merge the changes from the working branch into the master branch on Github.

Why are pull requests preferred when working with teams?
It helps moderators recognize which changes changes to apply, while the original program is kept in a working state.