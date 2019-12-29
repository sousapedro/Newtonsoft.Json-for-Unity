# Newtonsoft.Json for Unity changelog

## 12.0.102

- Fixed: Only use major version in assembly version (ex: `12.0.0.0`, instead of
  `12.0.1.0`) ([#18][#18])

## 12.0.101

- Setup CircleCI integration

- Setup Codacy integration

- Switched to [cloudsmith.com][cloudsmith-url] as registry provider

- New versioning format. For more info see [the wiki page][wiki-versioning].
  Changes are based of off `12.0.1-patch-001` version _(in previous format)._

- Fixed building on standalone ([#3][#3])

[wiki-versioning]: https://github.com/jilleJr/Newtonsoft.Json-for-Unity/wiki/About-the-versioning
[cloudsmith-url]: https://cloudsmith.io/~jillejr/repos/newtonsoft-json-for-unity
[#3]: https://github.com/jilleJr/Newtonsoft.Json-for-Unity/issues/3
[#18]: https://github.com/jilleJr/Newtonsoft.Json-for-Unity/issues/18
