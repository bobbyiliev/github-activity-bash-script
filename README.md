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
ACTIVITY_BR=main && MAX_PAST_DAYS=365 && COMMIT_NB= && COMMIT_MAX=7 && \
curl -sL 'https://raw.githubusercontent.com/bobbyiliev/github-activity-bash-script/main/activity.sh' \
    | bash ;
```

# Environment variables

|       env           |   description         | type          |   default value                | 
|:-------------------:|:---------------------:|:-------------:|:------------------------------:|
|   `ACTIVITY_BR`     |   working git branch  |  `string`     |      `main`                    |
|   `MAX_PAST_DAYS`   |   number of past days |  `integer`    |      `365`                     |
|   `COMMIT_NB`       |   exactly git commit number each past day.                      | `integer`  |             |
|   `COMMIT_MAX`      |   randomly git commit number each past day between [1..max]     | `integer`  |   `7`       |

* `COMMIT_MAX` used only if `COMMIT_NB` is empty
* if both `COMMIT_MAX` and `COMMIT_NB`, randomly commit number each past day between [1..7]

# Introduction to Bash Scripting

In case that you are interested in learning more about Bash Scripting, make sure to checkout this open-source eBook:

**[Introduction to Bash Scripting](https://github.com/bobbyiliev/introduction-to-bash-scripting)**

# Blog Post

[Here is why you should not be too quick at judging people by their GitHub activity stats](https://devdojo.com/bobbyiliev/here-is-why-you-should-not-be-too-quick-at-judging-people-by-their-github-activity-stats?ref=bobbyiliev)
