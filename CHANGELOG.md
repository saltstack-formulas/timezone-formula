# Changelog

## [0.4.4](https://github.com/saltstack-formulas/timezone-formula/compare/v0.4.3...v0.4.4) (2020-03-27)


### Bug Fixes

* **osfamilmap.yaml:** dbus pkg name is not specific enough on Gentoo ([0e2da36](https://github.com/saltstack-formulas/timezone-formula/commit/0e2da3600c85e5024ffa04cb1fdade129dd24089))

## [0.4.3](https://github.com/saltstack-formulas/timezone-formula/compare/v0.4.2...v0.4.3) (2020-03-24)


### Bug Fixes

* ensure formula works across all platforms ([ff66e5f](https://github.com/saltstack-formulas/timezone-formula/commit/ff66e5fd10c06da5dbe2ae2320fd8f2eddc459f7))
* **release.config.js:** use full commit hash in commit link [skip ci] ([9a77727](https://github.com/saltstack-formulas/timezone-formula/commit/9a77727e0cb36bd69c35e81c2c9dad699b6d8ac8))


### Continuous Integration

* **gemfile:** restrict `train` gem version until upstream fix [skip ci] ([17c50f0](https://github.com/saltstack-formulas/timezone-formula/commit/17c50f0dc6f73e9aeee959ae0f2bfb9e98900339))
* **kitchen:** avoid using bootstrap for `master` instances [skip ci] ([d3245cc](https://github.com/saltstack-formulas/timezone-formula/commit/d3245cc10438b5b63bbbbaa123bb23342ec37f48))
* **kitchen:** use `debian-10-master-py3` instead of `develop` [skip ci] ([ff64318](https://github.com/saltstack-formulas/timezone-formula/commit/ff643188e1c2e9691311fe7a35fa631db1159b5d))
* **kitchen:** use `develop` image until `master` is ready (`amazonlinux`) [skip ci] ([7e89450](https://github.com/saltstack-formulas/timezone-formula/commit/7e8945033e59ac01ee76bed5c319cdccb52fcf84))
* **kitchen+travis:** adjust matrix to add `3000` & remove `2017.7` ([e2301d5](https://github.com/saltstack-formulas/timezone-formula/commit/e2301d5c2fa47bd078b2d9f67630964bd21df1d4))
* **kitchen+travis:** upgrade matrix after `2019.2.2` release [skip ci] ([88c3cab](https://github.com/saltstack-formulas/timezone-formula/commit/88c3cabd7d0c4fa85306f2aaafa01959845087c6))
* **travis:** apply changes from build config validation [skip ci] ([438aeb2](https://github.com/saltstack-formulas/timezone-formula/commit/438aeb2ddc633d6104ab3d8c01b6513612903ad3))
* **travis:** opt-in to `dpl v2` to complete build config validation [skip ci] ([01b751e](https://github.com/saltstack-formulas/timezone-formula/commit/01b751e122b3a3716b09606d87c4b67b801eaf48))
* **travis:** quote pathspecs used with `git ls-files` [skip ci] ([a1c8254](https://github.com/saltstack-formulas/timezone-formula/commit/a1c82549d4d2f95d4c11902aaf1091dfcc022a83))
* **travis:** run `shellcheck` during lint job [skip ci] ([1996629](https://github.com/saltstack-formulas/timezone-formula/commit/1996629c72d095a092ba56993374a08e428218ca))
* **travis:** update `salt-lint` config for `v0.0.10` [skip ci] ([201a23b](https://github.com/saltstack-formulas/timezone-formula/commit/201a23b23c96331d48d5533e28378e1d48ebda2b))
* **travis:** use `major.minor` for `semantic-release` version [skip ci] ([2a79489](https://github.com/saltstack-formulas/timezone-formula/commit/2a79489fa7b3bd001379ebfae7adfa887f6e1072))
* **travis:** use build config validation (beta) [skip ci] ([d2dbc29](https://github.com/saltstack-formulas/timezone-formula/commit/d2dbc29153b4cc3dd15c7d731c9448e3a7011c9e))


### Documentation

* **contributing:** remove to use org-level file instead [skip ci] ([58900e1](https://github.com/saltstack-formulas/timezone-formula/commit/58900e1705f39fc8adc3753cb3c64fab21d42d19))
* **readme:** update link to `CONTRIBUTING` [skip ci] ([84ebbe0](https://github.com/saltstack-formulas/timezone-formula/commit/84ebbe0d0fb7f1eb1de3d8148fb43fcdb237c26b))


### Performance Improvements

* **travis:** improve `salt-lint` invocation [skip ci] ([18a7452](https://github.com/saltstack-formulas/timezone-formula/commit/18a74520ef49a75a31df2eda7bef81c06563aa77))

## [0.4.2](https://github.com/saltstack-formulas/timezone-formula/compare/v0.4.1...v0.4.2) (2019-10-12)


### Bug Fixes

* **rubocop:** add fixes using `rubocop --safe-auto-correct` ([](https://github.com/saltstack-formulas/timezone-formula/commit/255aaa3))


### Continuous Integration

* **kitchen:** change `log_level` to `debug` instead of `info` ([](https://github.com/saltstack-formulas/timezone-formula/commit/4ede638))
* **kitchen:** install required packages to bootstrapped `opensuse` [skip ci] ([](https://github.com/saltstack-formulas/timezone-formula/commit/7d2cb11))
* **kitchen:** use bootstrapped `opensuse` images until `2019.2.2` [skip ci] ([](https://github.com/saltstack-formulas/timezone-formula/commit/6e39f73))
* **platform:** add `arch-base-latest` ([](https://github.com/saltstack-formulas/timezone-formula/commit/3a8d8c8))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([](https://github.com/saltstack-formulas/timezone-formula/commit/b0c3930))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([](https://github.com/saltstack-formulas/timezone-formula/commit/549efb8))
* use `dist: bionic` & apply `opensuse-leap-15` SCP error workaround ([](https://github.com/saltstack-formulas/timezone-formula/commit/51dc0d9))
* **travis:** merge `rubocop` linter into main `lint` job ([](https://github.com/saltstack-formulas/timezone-formula/commit/c4710ae))
* **yamllint:** add rule `empty-values` & use new `yaml-files` setting ([](https://github.com/saltstack-formulas/timezone-formula/commit/07aea82))

## [0.4.1](https://github.com/saltstack-formulas/timezone-formula/compare/v0.4.0...v0.4.1) (2019-09-01)


### Code Refactoring

* **pillar:** sync map.jinja with template-formula ([cdd85c6](https://github.com/saltstack-formulas/timezone-formula/commit/cdd85c6))

# [0.4.0](https://github.com/saltstack-formulas/timezone-formula/compare/v0.3.3...v0.4.0) (2019-08-27)


### Features

* **semantic-release:** add semantic-release ([5290b3e](https://github.com/saltstack-formulas/timezone-formula/commit/5290b3e))
