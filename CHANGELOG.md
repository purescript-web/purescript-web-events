# Changelog

Notable changes to this project are documented in this file. The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

Breaking changes:
- Added support for PureScript 0.14 and dropped support for all previous versions (#18)

New features:

Bugfixes:
- Don't early exit when window is undefined in `_unsafeReadProtoTagged` FFI implementation (#11)

Other improvements:
- Migrated CI to GitHub Actions and updated installation instructions to use Spago (#15)
- Added a CHANGELOG.md file and pull request template (#19, #20)

## [v2.0.1](https://github.com/purescript-web/purescript-web-events/releases/tag/v2.0.1) - 2019-04-10

- Allow `unsafeReadProtoTagged` to work in node (@AndrewBrownK)

## [v2.0.0](https://github.com/purescript-web/purescript-web-events/releases/tag/v2.0.0) - 2019-02-23

`defaultPrevented` is now effectful, as it should have been in the first place. (@fghibellini, #3)

## [v1.0.1](https://github.com/purescript-web/purescript-web-events/releases/tag/v1.0.1) - 2018-11-11

- Fixed `unsafeReadProtoTagged` implementation so it works in IE11 / iOS Safari

## [v1.0.0](https://github.com/purescript-web/purescript-web-events/releases/tag/v1.0.0) - 2018-05-24

- Initial release
