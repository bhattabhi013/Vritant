# 🎇Contributing Guidelines

This documentation contains a set of guidelines to help you during the contribution process. 

I'm happy to welcome all the contributions from anyone willing to add new scripts to this repository. Thank you for helping out and remember,
**no contribution is too small.**


## 💻Before Contributing

Welcome to [bhattabhi013/Vritant](https://github.com/bhattabhi013/Vritant/). Before sending your pull requests, make sure that you **read the whole
guidelines**. If you have any doubt on the contributing guide, please feel free to reach out.


## 🙌Contribution

Any contribution is accepted, from fixing grammatical mistakes to implementing complex scripts. Please read this section if you are contributing your work.


### 🔖Steps to Contribute

Following are the steps to guide you:

* Step 1: Fork the repo and Go to your Git terminal and  clone it on your machine.
* Step 2: Add a upstream link to main branch in your cloned repo
    ```
    git remote add upstream https://github.com/bhattabhi013/Vritant.git
    ```
* Step 3: Keep your cloned repo upto date by pulling from upstream (this will also avoid any merge conflicts while committing new changes)
    ```
    git pull upstream main https://github.com/bhattabhi013/Vritant.git
    ```
* Step 4: Create your feature branch (This is a necessary step, so don't skip it)
    ```
    git checkout -b <feature-name>
    ```
* Step 5: Commit all the changes (Write commit message as "Small Message")
    ```
    git commit -m "Write a meaningfull but small commit message"
    ```
* Step 6: Push the changes for review
    ```
    git push origin <branch-name>
    ```
* Step 7: Create a PR on Github. (Don't just hit the create a pull request button, you must write a PR message to clarify why and what are you contributing)


### 🔨Note:

> - Do not edit/delete someone else's script in this repository. You can only insert new scripts in this repository.

  > - Give a meaningful name to whatever file or folder you are adding.
  > - To state an example, folder name should be as "Images" and file name should be "front_image.jpg"


## 🔑Guidelines

1. Welcome to this repository, if you are here as open source program participant/contributor.
2. Participants / contributors have to **comment** on issues they would like to work on, and mentors or the PA will assign you.
3. Issues will be assigned on a **first-come, first-serve basis.**
4. We respect all your contributions, whether it is an Issue or a Pull Request.
6. When you raise a issue, make sure you get it assigned to you, before you start working on that project.
7. Each participant / contributor will be **assigned 1 issue (max)** at a time to work.
8. Participants are expected to follow **project guidelines** and [**coding style**](https://pep8.org/"). **Structured code** is one of our top priority.
9. Try to **explain your approach** to solve any issue in the comments. This will increase the chances of you being assigned.
10. Don't create issues that are **already listed**.
11. Please don't pick up an issue already assigned to someone else. Work on the issues after it gets **assigned to you**.
12. Make sure you **discuss issues** before working on the issue.
13. Pull requests will be merged after being **reviewed** by a mentor or PA.
14. It might take **a day or two** to review your pull request. Please have patience and be nice.
15. Always create a pull request from a **branch** other than `master`.
16. Participants / contributors have to complete issues before the decided Deadline. If you fail to make a PR within the deadline, then the issue will be assigned to 
another person in the queue.
17. While making PRs, don't forget to **add a description** of your work.
18. Include issue number (Fixes:issuenumber) in your commit message while creating a pull request.
19. Make sure your solution to any issue is better in terms of performance and other parameters in comparison to the previous work.
20. We all are here to learn. You are allowed to make mistakes. That's how you learn, right!.


### 🧲Pull Requests Review Criteria


1. You must add your script into the respective **places**.
2. Your work must be original, written by you not copied from other resources.
3. Follow the proper [style guides](https://google.github.io/styleguide/) for your work.
4. For any queries or discussions, please feel free to join and drop a message over Discord channel.


## 📖Resources

1. Markdown : Markdown is a lightweight markup language like HTML, with plain text formatting syntax. 
  * [Markdown Cheat-Sheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

2. Git : Git is a distributed version-control system for tracking changes in source code during software development. It is designed for coordinating work among programmers, but it can be used to track changes in any set of files.
  * [Videos to get started](https://www.youtube.com/watch?v=xAAmje1H9YM&list=PLeo1K3hjS3usJuxZZUBdjAcilgfQHkRzW)
  * [Cheat Sheet](https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet)


### Commit Message Guidelines using Commitlint

We follow a standardized commit message format using Commitlint to ensure consistency and clarity in our commit history. Each commit message should adhere to the following guidelines:

1. **Type**: The commit type must be one of the following:

   - `feat`: A new feature or enhancement.
   - `fix`: A bug fix.
   - `docs`: Documentation changes.
   - `style`: Code style changes (e.g., formatting, semicolons).
   - `refactor`: Code refactorings with no feature changes or bug fixes.
   - `test`: Adding or improving tests.
   - `chore`: General maintenance tasks, build changes, etc.

2. **Scope** (Optional): The scope provides context for the commit, indicating the specific part of the project being affected. Use a short description in lowercase (e.g., `auth`, `navbar`, `README`).

3. **Description**: A brief and meaningful description of the changes made. Start with a capital letter and use the imperative mood (e.g., "Add new feature" instead of "Added new feature").

4. **Issue reference** (Optional): Include the issue number associated with the commit (e.g., `#123`).

### Examples:

#### Valid Commit Messages:

- `feat: Add user authentication feature`
- `fix(auth): Resolve login page redirect issue`
- `docs: Update installation instructions`
- `style: Format code according to project guidelines`
- `refactor(navbar): Improve responsiveness`
- `test: Add unit tests for API endpoints`
- `chore: Update dependencies to latest versions`
- `fix: Handle edge case in data processing (#456)`

#### Invalid Commit Messages:

- `Added new stuff`
- `Fixed a bug`
- `Updated code`
- `auth feature update`
- `chore: fixed some stuff`

### Commit Example with Commitlint:

```bash
git commit -m "feat(auth): Implement user signup process (#789)"
```

## 🤔Need more help?

You can refer to the following articles on basics of Git and Github and also contact me, in case you are stuck:
- [Forking a Repo](https://help.github.com/en/github/getting-started-with-github/fork-a-repo)
- [Cloning a Repo](https://help.github.com/en/desktop/contributing-to-projects/creating-an-issue-or-pull-request)
- [How to create a Pull Request](https://opensource.com/article/19/7/create-pull-request-github)
- [Getting started with Git and GitHub](https://towardsdatascience.com/getting-started-with-git-and-github-6fcd0f2d4ac6)
- [Learn GitHub from Scratch](https://lab.github.com/githubtraining/introduction-to-github)


