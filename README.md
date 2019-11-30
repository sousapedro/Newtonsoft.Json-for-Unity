# ![Logo](Doc/icons/logo-with-unity.png) Newtonsoft.Json for Unity

[![Latest Version @ Cloudsmith](https://api-prd.cloudsmith.io/badges/version/jillejr/newtonsoft-json-for-unity/npm/jillejr.newtonsoft.json-for-unity/latest/x/?render=true&badge_token=gAAAAABd0U7AyWhLGu6xjEAHz70w9zWbSk6ogsTrw3xvVpa2NXe7HJg_ua7r-G2cbWECxfM51y4uYgOdFOquHNoTQti080JM6w%3D%3D)](https://cloudsmith.io/~jillejr/repos/newtonsoft-json-for-unity/packages/detail/npm/jillejr.newtonsoft.json-for-unity/latest/)
[![CircleCI](https://img.shields.io/circleci/build/gh/jilleJr/Newtonsoft.Json-for-Unity/master?logo=circleci&style=flat-square)](https://circleci.com/gh/jilleJr/Newtonsoft.Json-for-Unity)
[![Codacy grade](https://img.shields.io/codacy/grade/f91156e7066c484588f4dba263c8cf45?logo=codacy&style=flat-square)](https://www.codacy.com/manual/jilleJr/Newtonsoft.Json-for-Unity?utm_source=github.com&utm_medium=referral&utm_content=jilleJr/Newtonsoft.Json-for-Unity&utm_campaign=Badge_Grade)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg?style=flat-square)](/CODE_OF_CONDUCT.md)

Json.NET is a popular high-performance JSON framework for .NET

Available for installation with

- **Unity Package Manager (UPM)** `recommended!`
- ~~Unity Asset packages~~ _(coming soon)_
- ~~Unity Asset Store~~ _(coming soon)_
- ~~NuGet package~~ _(coming soon)_

This repo is a **fork** of [JamesNK/Newtonsoft.Json][newtonsoft.json.git] containing custom builds
for regular standalone, but more importantly AOT targets such as all **IL2CPP builds**
**(WebGL, iOS, Android, Windows, Mac OS X)** and portable .NET **(UWP, WP8)**.

## [Installation guide](https://github.com/jilleJr/Newtonsoft.Json-for-Unity/wiki/Installation-Using-UPM)

Click the header. It goes to the Wiki where the guide is now located. For reference, this is the url:

<https://github.com/jilleJr/Newtonsoft.Json-for-Unity/wiki/Installation-Using-UPM>

## Versioning format

_Staying with JamesNK's version syntax, but with a twist :dizzy:_

To allow deployment of patches of the package itself, and keep confusion to a low, I'm only appending a double digit for versioning of this repository. Deployment of Newtonsoft.Json version `12.0.1` will be deployed with the UPM version `12.0.100`, `12.0.101`, `12.0.102` etc. It's still `12.0.1` version of the assembly, but some other stuff around the package will have changed. See the [releases](https://github.com/jilleJr/Newtonsoft.Json-for-Unity/releases) tab for version-specific changelogs.

![explanation of version](Doc/version-explanation.png)

## Newtonsoft.Json-for-Unity specific links

- [GitHub Wiki (github.com/jilleJr/Newtonsoft.Json-for-Unity/wiki)](https://github.com/jilleJr/Newtonsoft.Json-for-Unity/wiki)
- [CloudSmith release (cloudsmith.io/~jillejr/repos/newtonsoft-json-for-unity)](https://cloudsmith.io/~jillejr/repos/newtonsoft-json-for-unity/packages/detail/npm/jillejr.newtonsoft.json-for-unity/latest/)
- [Release Notes (github.com/jilleJr/Newtonsoft.Json-for-Unity/releases)](https://github.com/jilleJr/Newtonsoft.Json-for-Unity/releases)

## Official Json.NET links

- [Source repository (github.com/JamesNK/Newtonsoft.Json)](https://github.com/JamesNK/Newtonsoft.Json)
- [Homepage (www.newtonsoft.com/json)](https://www.newtonsoft.com/json)
- [Documentation (www.newtonsoft.com/json/help)](https://www.newtonsoft.com/json/help)
- [Release Notes (github.com/JamesNK/Newtonsoft.Json/releases)](https://github.com/JamesNK/Newtonsoft.Json/releases)
- [Stack Overflow (stackoverflow.com/questions/tagged/json.net)](https://stackoverflow.com/questions/tagged/json.net)

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

SaladLab and ParentElement, among other unmentioned coders,
have done great work in making Json.NET work in Unity. _So why do we need mine?_

Both mentioned projects are discontinued, and outdated by some margin in result.
SaladLab's latest release targets Json.NET 9, and ParentElement's Json.NET 8.
We're at Json.NET 12 now! _(at time of writing)_

Changeset, compared to SaladLabs and ParentElements solutions:

- Json.NET version 12 _(let's see how long I can keep up with James repo)_
- Release available via Unity Package Manager
- Unit testing in Unity Editor
- Unit testing in IL2CPP built platforms _(ex: StandaloneWindows)_

A rework is in this case easier than jumping into SaladLabs project to update it. Sorry Salad champ.

<sub>_Although, in the future this may also be old stuff too,
with the upcoming new [System.Text.Json](https://devblogs.microsoft.com/dotnet/try-the-new-system-text-json-apis/)
namespace and need to keep the project up-to-date with Newtonsoft.Json.
But not for now!_</sub>

---

This package is licensed under The MIT License (MIT)

Copyright &copy; 2019 Kalle Jillheden (jilleJr)  
<https://github.com/jilleJr/Newtonsoft.Json>

See full copyrights in [LICENSE.md][license.md] inside repository

[license.md]: https://github.com/jilleJr/Newtonsoft.Json-for-Unity/blob/master/LICENSE.md
[newtonsoft.json.git]: https://github.com/JamesNK/Newtonsoft.Json
