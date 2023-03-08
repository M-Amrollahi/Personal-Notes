The most commonly used Git commands are: [link](https://matthew-brett.github.io/curious-git/curious_git.html)

- __add__:        Add file contents to the index
- __bisect__:     Find by binary search the change that introduced a bug
- __branch__:     List, create, or delete branches
- __checkout__:   Checkout a branch or paths to the working tree
- __clone__:      Clone a repository into a new directory
- __commit__:     Record changes to the repository
- __diff__:       Show changes between commits, commit and working tree, etc
- __fetch__:      Download objects and refs from another repository
- __grep__:       Print lines matching a pattern
- __init__:       Create an empty Git repository or reinitialize an existing one
- __log__:        Show commit logs
- __merge__:      Join two or more development histories together
- __mv__:         Move or rename a file, a directory, or a symlink
- __pull__:       Fetch from and integrate with another repository or a local branch
- __push__:       Update remote refs along with associated objects
- __rebase__:     Forward-port local commits to the updated upstream head
- __reset__:      Reset current HEAD to the specified state
- __rm__:         Remove files from the working tree and from the index
- __show__:       Show various types of objects
- __status__:     Show the working tree status
- __tag__:        Create, list, delete or verify a tag object signed with GPG


## get the hash of the file
```git hash-object file.txt```

## get the list of files with hashes
```git ls-tree HEAD```



## Git add and commit
```
- git add index.txt --patch
- git show <commit>
- git add --interactive <file>
```
   

## go back to step 2 commit (do not remove the rest commits)
```git reset HEAD~2```

## git log
```
- git log --pretty=oneline
- git log -p -2 (last to commits with diffs)
- git log --stat (with summary of diffs)
- git log --since=2.weeks
```


## git rm
```
- git rm --cached README (if we want to untrack a file from working tree without removing the file)
```

## git diff
```
- git diff --staged//--cached (diff between staged and last commit)
```

## git status
```- git status -s```


## git restore
- Unmodify a modified file. restore to last commit. 
```git restore <filename>```

- restore all files to last commit
```git restore .```

- restore the file to commit id
```git restore --source 27hq6251 index.txt```

- move from staged to unstaged
```
git restore --staged <filename>
git rm --cached <filename>
```

## How to open config file
```
git config -e\
vim .git/config
```

## Git config
```
git config --list
git config --global user.name "AAA"
--local (folder)
--global (user)
--system (system)
```

## What is origin?
origin is an alias on your system for a particular remote repository.
```
# add the nickname of the remote repo
git remote add origin git@github.com:USERNAME/REPOSITORY-NAME.git

# push the branchname to origin
git push <remote> <branch>
git push origin branchname

# add upstream branch for tracking
git push -set-upstream-to origin foo

# inspect remote
git remote show origin
```


```
git log --graph --pretty=format:'%Cred%h%Creset%n' --abbrev-commit --date=relative --branches --all


* 0bcaee0
| 
* 9c10c1b
|   
*   cdbfd29
|\  
| | 
| * 9871100
| |   
| | * 828b23c
| |/  
|/|   
| | 
* | 71c5739
|/  
| 
* 07e804e
| 
* 243ab3e
| 
* 40efd50
```

```
git log --all --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit


* 0bcaee0 - (HEAD -> master) new commitment (4 hours ago) <>
* 9c10c1b - (br1) chnage branch after sdd (3 days ago) <>
*   cdbfd29 - (origin/master) test1856 (4 days ago) <>
|\  
| * 9871100 - Create README.md (4 days ago) <>
| | * 828b23c - (origin/test_branch) branch added (4 days ago) <>
| |/  
|/|   
* | 71c5739 - test commit (4 days ago) <>
|/  
* 07e804e - test (4 days ago) <>
* 243ab3e - Update ssss.txt (4 days ago) <>
* 40efd50 - Create ssss.txt (4 days ago) <>
```

## Git Objects 

Every object consists of three things - a type, a size and content. The size is simply the size of the contents, the contents depend on what type of object it is, and there are four different types of objects: "blob", "tree", "commit", and "tag". [link](https://shafiul.github.io/gitbook/1_the_git_object_model.html)

- A "blob" is used to store file data - it is generally a file.
- A "tree" is basically like a directory - it references a bunch of other trees and/or blobs (i.e. files and sub-directories)
- A "commit" points to a single tree, marking it as what the project looked like at a certain point in time. It contains meta-information about that point in time, such as a timestamp, the author of the changes since the last commit, a pointer to the previous commit(s), etc.
- A "tag" is a way to mark a specific commit as special in some way. It is normally used to tag certain commits as specific releases or something along those lines.

```
#show content of the blob
git show 6ff87c4664

git show -s --pretty=raw 2be7fcb476
commit 2be7fcb4764f2dbcee52635b91fedb1b3dcf7ab4
tree fb3a8bdd0ceddd019615af4d57a53f43d8cee2bf
parent 257a84d9d02e90447b149af58b271c19405edb6a
author Dave Watson <dwatson@mimvista.com> 1187576872 -0400
committer Junio C Hamano <gitster@pobox.com> 1187591163 -0700
```
