# Newtonsoft.Json for Unity changelog

## 12.0.102

- Fixed: Only use major version in assembly version (ex: `12.0.0.0`, instead of
  `12.0.1.0`) ([#18][#18])
- Fixed: Package now targets .NET Standard 2.0 (compared to previously
  targeting .NET 4.5 & .NET 4.6.1). Portable still targets the [PCL profile 259
  (`portable-net45+win8+wpa81+wp8`)][portable-class-library].

## 12.0.101

- Setup CircleCI integration
- Setup Codacy integration
- Switched to [cloudsmith.com][cloudsmith-url] as registry provider
- New versioning format. For more info see [the readme in the repository][readme-url]. Changes are based of off `12.0.1-patch-001` version _(in previous format)._
- Fixed building on standalone ([#3][#3])

[readme-url]: https://github.com/jilleJr/Newtonsoft.Json-for-Unity#readme
[cloudsmith-url]: https://cloudsmith.io/~jillejr/repos/newtonsoft-json-for-unity
[portable-class-library]: https://docs.microsoft.com/en-us/dotnet/standard/net-standard#pcl-compatibility
[#3]: https://github.com/jilleJr/Newtonsoft.Json-for-Unity/issues/3
[#18]: https://github.com/jilleJr/Newtonsoft.Json-for-Unity/issues/18
