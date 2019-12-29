# Newtonsoft.Json for Unity changelog

## 12.0.102

- ✨ New: Moved some documentation to the new wiki. All markdown files in the
  repository has been tidied.

- 🐛 Fix: Only use major version in assembly version (ex: `12.0.0.0`, instead of
  `12.0.1.0`) ([#18][#18])

- 🐛 Fix: Package targets .NET 4.5 & .NET 4.6.1 instead of recommended
  .NET Standard 2.0. Portable should still target the [PCL profile 259
  (`portable-net45+win8+wpa81+wp8`)][portable-class-library]. [#29][#29]

## 12.0.101

- ✨ New: Setup CircleCI integration for build automation

- ✨ New: Setup Codacy integration for automated code reviews

- 🔄 Change: Switched to [cloudsmith.com][cloudsmith-url] as registry provider
  instead of [npmjs.com][npmjs-url]  
  [![Latest Version @ Cloudsmith][cloudsmith-badge]][cloudsmith-url]

- 🔄 Change: Better versioning format. For more info see
  [the wiki page][wiki-versioning]. Changes are based of off `12.0.1`
  version _(in previous format)._

- 🐛 Fix: Building on standalone causes plugin collision ([#3][#3])

## 12.0.1

- ✨ New: Package published as an Unity Package Manager package on
  [npmjs.com][npmjs-url].  
  ![npm badge][npmjs-badge]

- ✨ Initial release

[wiki-versioning]: https://github.com/jilleJr/Newtonsoft.Json-for-Unity/wiki/About-the-versioning
[cloudsmith-url]: https://cloudsmith.io/~jillejr/repos/newtonsoft-json-for-unity/packages/detail/npm/jillejr.newtonsoft.json-for-unity/latest/#readme
[cloudsmith-badge]: https://api-prd.cloudsmith.io/badges/version/jillejr/newtonsoft-json-for-unity/npm/jillejr.newtonsoft.json-for-unity/latest/x/?render=true&badge_token=gAAAAABd0U7AyWhLGu6xjEAHz70w9zWbSk6ogsTrw3xvVpa2NXe7HJg_ua7r-G2cbWECxfM51y4uYgOdFOquHNoTQti080JM6w%3D%3D
[npmjs-url]: https://www.npmjs.com/package/jillejr.newtonsoft.json-for-unity
[npmjs-badge]: https://img.shields.io/npm/v/jillejr.newtonsoft.json-for-unity?logo=npm&style=flat-square
[#3]: https://github.com/jilleJr/Newtonsoft.Json-for-Unity/issues/3
[#18]: https://github.com/jilleJr/Newtonsoft.Json-for-Unity/issues/18
[#29]: https://github.com/jilleJr/Newtonsoft.Json-for-Unity/pull/29
