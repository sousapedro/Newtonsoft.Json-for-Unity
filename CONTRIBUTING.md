# How to contribute

Please read these guidelines before contributing to Newtonsoft.Json-for-Unity:

- [How to contribute](#how-to-contribute)
  - [Got a Question or Problem?](#got-a-question-or-problem)
  - [Found an Issue?](#found-an-issue)
  - [Want a Feature?](#want-a-feature)
  - [Submitting a Pull Request](#submitting-a-pull-request)
  - [Working with branches](#working-with-branches)
  - [Contributor License Agreement](#contributor-license-agreement)

## Got a Question or Problem?

The [Newtonsoft.Json-for-Unity wiki][wiki] is a great place to start looking for
information.

If you have questions about how to use Json.NET, please read the
[Json.NET documentation][documentation] or ask on
[Stack Overflow][stackoverflow]. There are thousands of Json.NET questions on
Stack Overflow with the [`json.net`][stackoverflow] tag.

GitHub issues are only for [reporting bugs](#found-an-issue) and
[feature requests](#want-a-feature), not questions or help.

## Found an Issue?

If you find a bug in the source code or a mistake in the documentation, you can
help by submitting an issue to the [GitHub Repository][github]. Even better you
can submit a Pull Request with a fix.

When submitting an issue please include the following information:

- A description of the issue

- The JSON, classes, and Json.NET code related to the issue

- The exception message and stacktrace if an error was thrown

- Version of the Newtonsoft.Json-for-Unity package you were using (ex: 12.0.101)

- Version of the Unity Editor (ex: 2019.1.1f1)

- Does your issue only appear on certain build targets? (ex: Windows Standalone,
  Android, WebGL, even the Editor?)

- If possible, please include code that reproduces the issue. [DropBox][dropbox]
  or GitHub's [Gist][gist] can be used to share large code samples, or you could
  [submit a pull request](#submitting-a-pull-request) with the issue reproduced
  in a new test.

- **When creating an issue use the
  [Bug Report issue template][github-bug-report].**

The more information you include about the issue, the more likely it is to be
fixed!

## Want a Feature?

You can request a new feature by submitting an issue to the
[GitHub Repository][github].

- **When suggesting a feature use the
  [Feature Request issue template][github-feature-request].**

## Submitting a Pull Request

When submitting a pull request to the [GitHub Repository][github] make sure to
do the following:

- Check that new and updated code follows Newtonsoft.Json-for-Unity's existing
  code formatting and naming standard

- Run Newtonsoft.Json-for-Unity's unit tests to ensure no existing functionality
  has been affected

- Write new unit tests to test your changes. All features and fixed bugs must
  have tests to verify they work

Read [GitHub Help][pullrequesthelp] for more details about creating pull
requests.

## Working with branches

Here at Newtonsoft.Json-for-Unity, we're following a modified git-flow pattern.
You can read more about git-flow at [Atlassians guide][gitflowguide].

This guide has been moved to it's own section in the wiki:
[Working with branches][wiki-workingwithbranches]

## Contributor License Agreement

```none
By contributing your code to Newtonsoft.Json-for-Unity you grant Kalle Jillheden
a non-exclusive, irrevocable, worldwide, royalty-free, sublicenseable,
transferable license under all of Your relevant intellectual property rights
(including copyright, patent, and any other rights), to use, copy, prepare
derivative works of, distribute and publicly perform and display the
Contributions on any licensing terms, including without limitation:
(a) open source licenses like the MIT license; and (b) binary, proprietary, or
commercial licenses. Except for the licenses granted herein, You reserve all
right, title, and interest in and to the Contribution.

You confirm that you are able to grant us these rights. You represent that You
are legally entitled to grant the above license. If Your employer has rights to
intellectual property that You create, You represent that You have received
permission to make the Contributions on behalf of that employer, or that Your
employer has waived such rights for the Contributions.

You represent that the Contributions are Your original works of authorship, and
to Your knowledge, no other person claims, or has the right to claim, any right
in any invention or patent related to the Contributions. You also represent that
You are not legally obligated, whether by entering into an agreement or
otherwise, in any way that conflicts with the terms of this license.

Kalle Jillheden acknowledges that, except as explicitly described in this
Agreement, any Contribution which you provide is on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING,
WITHOUT LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE, NON-INFRINGEMENT,
MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE.
```

[github]: https://github.com/jilleJr/Newtonsoft.Json-for-Unity
[github-bug-report]: https://github.com/jilleJr/Newtonsoft.Json-for-Unity/issues/new?assignees=&labels=bug&template=bug_report.md&title=Bug%3A+
[github-feature-request]: https://github.com/jilleJr/Newtonsoft.Json-for-Unity/issues/new?assignees=&labels=enhancement&template=feature_request.md&title=Suggestion%3A+
[gitflowguide]: https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow
[wiki]: https://github.com/jilleJr/Newtonsoft.Json-for-Unity/wiki
[wiki-workingwithbranches]: https://github.com/jilleJr/Newtonsoft.Json-for-Unity/wiki/Working-with-branches
[documentation]: https://www.newtonsoft.com/json/help
[stackoverflow]: https://stackoverflow.com/questions/tagged/json.net
[dropbox]: https://www.dropbox.com
[gist]: https://gist.github.com
[pullrequesthelp]: https://help.github.com/articles/using-pull-requests
