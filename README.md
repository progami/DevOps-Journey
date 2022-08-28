 # 1.0-Git
 
 ## Rename a branch

reference: https://stackoverflow.com/questions/6591213/how-do-i-rename-a-local-git-branch

1. rename the branch (creates a new local branch)
 
 git branch -m < oldname > < newname > 
 or 
 git branch -m < newname > (current branch)
 
2. push new local branch to remote
 git push origin -u < newname >

3. delete the old remote branch
 git push origin --delete < oldname >

