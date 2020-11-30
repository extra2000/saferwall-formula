# Changelog

## [1.0.0-alpha.5](https://github.com/extra2000/saferwall-formula/compare/v1.0.0-alpha.4...v1.0.0-alpha.5) (2020-11-30)


### Code Refactoring

* Move building image states into `saferwall/build/` directory ([a60ffe9](https://github.com/extra2000/saferwall-formula/commit/a60ffe932a496ca4a5005c4017199aad0e083725))


### Styles

* **README:** Add a spacing after title ([f9a2942](https://github.com/extra2000/saferwall-formula/commit/f9a294283df1b21d8f6235add6717fbd1d7d929e))


### Documentations

* **README:** Add a list of available states ([fdd3ef5](https://github.com/extra2000/saferwall-formula/commit/fdd3ef5e182b75cc56d502afd4ac5a0de1944154))
* **README:** Update description ([53a7972](https://github.com/extra2000/saferwall-formula/commit/53a7972558b209aa576413ec7271be75608e348e))

## [1.0.0-alpha.4](https://github.com/extra2000/saferwall-formula/compare/v1.0.0-alpha.3...v1.0.0-alpha.4) (2020-11-30)


### Continuous Integrations

* Add AppVeyor ([775b64b](https://github.com/extra2000/saferwall-formula/commit/775b64b3a6bdb97219f9246e2f94e41c1ac86950))
* Remove Travis CI because it is no longer free ([80ec830](https://github.com/extra2000/saferwall-formula/commit/80ec83083cb1b5d5d079a18975faa2018b294337))
* **semantic-release:** Write version to `VERSION.txt` file ([4e6c5e7](https://github.com/extra2000/saferwall-formula/commit/4e6c5e71cca41c616935f0f4e520414283029328))

## [1.0.0-alpha.3](https://github.com/extra2000/saferwall-formula/compare/v1.0.0-alpha.2...v1.0.0-alpha.3) (2020-11-04)


### Features

* Add persistent volumes ([b8f5c1f](https://github.com/extra2000/saferwall-formula/commit/b8f5c1f79308297c9d349affb9b931f4adac5c1c))


### Fixes

* Change `localhost` to `127.0.0.1` because Podman containers on Debian/Ubuntu failed to resolve `localhost` ([6c107be](https://github.com/extra2000/saferwall-formula/commit/6c107bef2d7c4ebdf9710358011dbf8c5ce0f95c))
* **saferwall-pod:** Remove `imagePullPolicy: Never` because it is unsupported on Podman `v2.0.x` and earlier ([5257670](https://github.com/extra2000/saferwall-formula/commit/5257670885aa5315281e13fab3d0cab5ed558d13))

## [1.0.0-alpha.2](https://github.com/extra2000/saferwall-formula/compare/v1.0.0-alpha.1...v1.0.0-alpha.2) (2020-11-02)


### Features

* **couchbase-pod:** Add persistent volume ([56abb37](https://github.com/extra2000/saferwall-formula/commit/56abb3704f795f25908d5ee4ef4ceb9c866772e0))
* **minio-pod:** Add persistent volume ([15e3dea](https://github.com/extra2000/saferwall-formula/commit/15e3dea569c2228be5921bb8e0c29e17b50ecca9))
* **nsq-pod:** Add persistent volume ([d00bf30](https://github.com/extra2000/saferwall-formula/commit/d00bf302ea68d37c8a39b9d1dd6ba10eae9bbf31))
* **saferwall:** Rebase on top of latest upstream `master` ([a9f071a](https://github.com/extra2000/saferwall-formula/commit/a9f071a569557854f4e06e7abafb2eb02f2336a6))


### Code Refactoring

* ***-pod:** Change volume path from relative to absolute path ([7923775](https://github.com/extra2000/saferwall-formula/commit/7923775a2e99727d38f595f8490a0f93ebfd55e8))


### Fixes

* **config.file:** Make `dos2unix` convert files in `/opt/saferwall/src/` only because `/opt/saferwall/` now contains container volumes ([8d431b8](https://github.com/extra2000/saferwall-formula/commit/8d431b864b01f1c5f44e8cb56e411fc7deaaf5d9))

## 1.0.0-alpha.1 (2020-11-01)


### Features

* **clamav:** Add configuration file for ClamAV ([e6759f7](https://github.com/extra2000/saferwall-formula/commit/e6759f71fa491bfb8c74281c18a29430874d7fb9))
* Update salt implementations for the latest commit from saferwall-formula ([30d62af](https://github.com/extra2000/saferwall-formula/commit/30d62afde870db47f12ef91756f62fb8b87e6366))
* **saferwall:** New commits ([2467322](https://github.com/extra2000/saferwall-formula/commit/2467322e785593290cf91807f84301e75f2cbb45))
* Add initial states implementation ([820b425](https://github.com/extra2000/saferwall-formula/commit/820b425544c47d7342a23cdb37563496b87f4706))
* Add saferwall ([4035d9d](https://github.com/extra2000/saferwall-formula/commit/4035d9d4cd6125ec8790bcc6af2cbdc16406e196))


### Styles

* Add .gitignore ([65444a1](https://github.com/extra2000/saferwall-formula/commit/65444a1793e30cd24b82e9dfd5480a1f30a09d60))


### Documentations

* Add `pillar.example` for references ([7b876ba](https://github.com/extra2000/saferwall-formula/commit/7b876bad297e683da34ae5f337015ebcd4a32a58))


### Continuous Integrations

* Add Travis CI and semantic-release ([2d06988](https://github.com/extra2000/saferwall-formula/commit/2d0698828f95f70971c677b2658f5c6d3c9a185e))


### Fixes

* **config.file:** Hide diff when copying Saferwall source files and when applying `dos2unix` to prevent terminal from hangup due to a lot of output ([8911f66](https://github.com/extra2000/saferwall-formula/commit/8911f66c36de6855a45ae6193c37802f4e52ba40))
* **config.files:** Fix BASH scripts become CRLF on Windows ([eebbeeb](https://github.com/extra2000/saferwall-formula/commit/eebbeeb4efa139a418998e5d6e1af4a9b01f6f59))
* **saferwall:** New commits which fix file upload size issue ([6dee29f](https://github.com/extra2000/saferwall-formula/commit/6dee29f511c824e905c8c462bd4f6707e3fc17ba))


### Code Refactoring

* **multiav:** Using Podman Pod YAML file instead of creating pod and manually add MultiAV containers ([49dab8f](https://github.com/extra2000/saferwall-formula/commit/49dab8fe1a18f5b59cdec89b6813ab4edf786f24))
* **saferwall:** Change repository URL from official to extra2000 ([112f8ca](https://github.com/extra2000/saferwall-formula/commit/112f8ca95e4357d74a9c8117123cf8c6c67658db))
