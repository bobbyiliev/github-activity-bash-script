# GitHub Activity Demo Script

This script aims to prove why you should not be too quick at judging people by their GitHub activity stats.

The script will turn your contributions graph from this:

![GitHub Activity Before](https://imgur.com/SFQ3RJz.png)

Into this:

![GitHub Activity After](https://imgur.com/xJ6MjFH.png)

In 20-30 seconds.

> Use for demo purposes only!

To execute just run the following commaind inside a demo repository:

1. First download the script
2. After that run the script
3. Finally, push your changes to GitHub

# Get started

```bash
cwd=$(pwd) && \
dir=$(mktemp -d -p $cwd test-git-repo-XXXXXXXXX) && \
mkdir -p $dir && cd $dir && git init && \
curl -sL 'https://raw.githubusercontent.com/bobbyiliev/github-activity-bash-script/main/activity.sh' | \
bash -x && \
git branch -m master main ; \
echo -e "\n\nTODO push your changes:\n\t\
  git remote add origin https://github.com/username/reponame\n\t\
  git push origin --force --set-upstream origin main\n\n" \
\
```

# Introduction to Bash Scripting

In case that you are interested in learning more about Bash Scripting, make sure to checkout this open-source eBook:

**[Introduction to Bash Scripting](https://github.com/bobbyiliev/introduction-to-bash-scripting)**

# Blog Post

[Here is why you should not be too quick at judging people by their GitHub activity stats](https://devdojo.com/bobbyiliev/here-is-why-you-should-not-be-too-quick-at-judging-people-by-their-github-activity-stats?ref=bobbyiliev)
