# ![Logo](Doc/icons/logo-with-unity.png) Newtonsoft.Json for Unity

[![Latest Version @ Cloudsmith](https://api-prd.cloudsmith.io/badges/version/jillejr/newtonsoft-json-for-unity/npm/jillejr.newtonsoft.json-for-unity/latest/x/?render=true&badge_token=gAAAAABd0U7AyWhLGu6xjEAHz70w9zWbSk6ogsTrw3xvVpa2NXe7HJg_ua7r-G2cbWECxfM51y4uYgOdFOquHNoTQti080JM6w%3D%3D)](https://cloudsmith.io/~jillejr/repos/newtonsoft-json-for-unity/packages/detail/npm/jillejr.newtonsoft.json-for-unity/latest/)
[![CircleCI](https://img.shields.io/circleci/build/gh/jilleJr/Newtonsoft.Json-for-Unity/master?logo=circleci&style=flat-square)](https://circleci.com/gh/jilleJr/Newtonsoft.Json-for-Unity)
[![Codacy grade](https://img.shields.io/codacy/grade/f91156e7066c484588f4dba263c8cf45?logo=codacy&style=flat-square)](https://www.codacy.com/manual/jilleJr/Newtonsoft.Json-for-Unity?utm_source=github.com&utm_medium=referral&utm_content=jilleJr/Newtonsoft.Json-for-Unity&utm_campaign=Badge_Grade)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg?style=flat-square)](/CODE_OF_CONDUCT.md)

Json.<i></i>NET is a popular high-performance JSON framework for .NET

Available for installation with

- **Unity Package Manager (UPM)** `recommended!`
- ~~Unity Asset packages~~ _(coming soon)_
- ~~Unity Asset Store~~ _(coming soon)_
- ~~NuGet package~~ _(coming soon)_

This repo is a **fork** of [JamesNK/Newtonsoft.Json][newtonsoft.json.git] containing custom builds
for regular standalone, but more importantly AOT targets such as all **IL2CPP builds**
**(WebGL, iOS, Android, Windows, Mac OS X)** and portable .NET **(UWP, WP8)**.

## [Installation guide](https://github.com/jilleJr/Newtonsoft.Json-for-Unity/wiki/Installation-via-UPM)

Click the header. It goes to the Wiki where the guide is now located. For reference, this is the url:

<https://github.com/jilleJr/Newtonsoft.Json-for-Unity/wiki/Installation-via-UPM>

## Newtonsoft.Json-for-Unity specific links

- [Wiki about this project](https://github.com/jilleJr/Newtonsoft.Json-for-Unity/wiki)
- [Release Notes on GitHub from this repository](https://github.com/jilleJr/Newtonsoft.Json-for-Unity/releases)
- [Cloudsmith package](https://cloudsmith.io/~jillejr/repos/newtonsoft-json-for-unity/packages/detail/npm/jillejr.newtonsoft.json-for-unity/latest/)

## Official Json.<i></i>NET links

- [Source repository (github.com/JamesNK/Newtonsoft.Json)](https://github.com/JamesNK/Newtonsoft.Json)
- [Homepage (www.newtonsoft.com/json)](https://www.newtonsoft.com/json)
- [Documentation (www.newtonsoft.com/json/help)](https://www.newtonsoft.com/json/help)
- [Release Notes on GitHub from source repository](https://github.com/JamesNK/Newtonsoft.Json/releases)
- [Stack Overflow posts tagged with `json.net`](https://stackoverflow.com/questions/tagged/json.net)

## Contributing

> ⚠ Please note that this project is released with a Contributor Code of Conduct.
> By participating in this project you agree to abide by its terms.
> Read more: [CODE_OF_CONDUCT.md](/CODE_OF_CONDUCT.md)

To contribute first you must read the [CONTRIBUTING.md](/CONTRIBUTING.md)
guidelines. It contains info about

- How to edit the Src/Newtonsoft.Json projects to remain the ability to merge
  from JamesNKs repository without difficulties.
- Coding style.
- Naming style.
- Our level of usage of "git-flow".
- Keep the repo clean, both code & branches.

## Development

### Merging changes from JamesNK/Newtonsoft.Json

As an example, this is how to make a release for Json.<i></i>NET 12.0.3, resulting in
Newtonsoft.Json-for-Unity (this project) version 12.0.301. Check the
[About the versioning](https://github.com/jilleJr/Newtonsoft.Json-for-Unity/wiki/About-the-versioning)
guide on the Wiki about the version format.

1. If not yet done, create the release branch `release/12.0.301` based off of
   the `master` branch.

2. Checkout a new feature branch `feature/merge-12.0.3` based off of the
   `release/12.0.301` branch.

3. Merge the changes from the release tag of JamesNK repo.
   For some files the changes are too grand and the auto merging fails.
   Make sure then to compare said files with the actual changeset on JamesNKs
   repo, like so: <https://github.com/JamesNK/Newtonsoft.Json/compare/12.0.2...12.0.3>

    ```bash
    git checkout feature/merge-12.0.3
    git pull https://github.com/JamesNK/Newtonsoft.Json.git 12.0.3
    # Resolve merge conflicts
    # Only proceed when fully done
    git commit -m "Merge from JamesNK/Newtonsoft.Json 12.0.3 into feature/merge-12.0.3"
    git push
    ```

4. Create a merge request from `feature/merge-12.0.3` to `release/12.0.301`  
   <https://github.com/jilleJr/Newtonsoft.Json-for-Unity/compare/release/12.0.301...feature/merge-12.0.3>

### Run tests

Run the Newtonsoft.Json.Tests normally via the Test Runner inside Visual Studio.

For testing inside Unity locally, look inside the
[Src/Newtonsoft.Json-for-Unity.Tests/README.md](/Src/Newtonsoft.Json-for-Unity.Tests/README.md)
for more information.

---

This package is licensed under The MIT License (MIT)

Copyright &copy; 2019 Kalle Jillheden (jilleJr)  
<https://github.com/jilleJr/Newtonsoft.Json>

See full copyrights in [LICENSE.md][license.md] inside repository

[license.md]: https://github.com/jilleJr/Newtonsoft.Json-for-Unity/blob/master/LICENSE.md
[newtonsoft.json.git]: https://github.com/JamesNK/Newtonsoft.Json
