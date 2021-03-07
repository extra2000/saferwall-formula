# Changelog

## [2.3.0](https://github.com/extra2000/saferwall-formula/compare/v2.2.1...v2.3.0) (2021-03-07)


### Features

* **https:** Add state `saferwall.config.nginx` to configure NGINX for Saferwall HTTPS ([c6d1fcd](https://github.com/extra2000/saferwall-formula/commit/c6d1fcd6900fe8a2fcfcf56886a13567934dbf1b))


### Documentations

* **README:** Add state `saferwall.config.nginx` ([2a697aa](https://github.com/extra2000/saferwall-formula/commit/2a697aa0708a8037154f18f3f7055aaa47d5a115))


### Fixes

* **network:** Make `bridge` customizable to prevent pod networking conflicts ([34a80e7](https://github.com/extra2000/saferwall-formula/commit/34a80e7a139696b43488afc08a9906ff90fd2094))

### [2.2.1](https://github.com/extra2000/saferwall-formula/compare/v2.2.0...v2.2.1) (2021-03-02)


### Fixes

* **pods:** Remove Podman 2.x workarounds which may not compatible with Podman 3.x ([919b650](https://github.com/extra2000/saferwall-formula/commit/919b6505f4050ee3bcd9e176c950cf2edfe62b78))

## [2.2.0](https://github.com/extra2000/saferwall-formula/compare/v2.1.0...v2.2.0) (2021-02-10)


### Features

* **defaults.yaml:** Increase default max file size from 32MB to 64MB and fine tune container resources for the 64MB file upload ([7241652](https://github.com/extra2000/saferwall-formula/commit/72416527a815b29f369375c29edf2bcc55e5d71e))
* **saferwall:** Update commits ([375ccea](https://github.com/extra2000/saferwall-formula/commit/375cceaedd58737d7fbe3b10f00e8bf60a8137aa))

## [2.1.0](https://github.com/extra2000/saferwall-formula/compare/v2.0.1...v2.1.0) (2021-02-02)


### Features

* **defaults.yaml:** Update version from `0.0.3` to `0.1.0` ([2b727ad](https://github.com/extra2000/saferwall-formula/commit/2b727ade16dd9c56ada61d3c502579626b52805f))
* **saferwall:** Update Saferwall commit ([8e587de](https://github.com/extra2000/saferwall-formula/commit/8e587de6e93076e5a4b875a44704f21644b5d3f0))

### [2.0.1](https://github.com/extra2000/saferwall-formula/compare/v2.0.0...v2.0.1) (2021-01-17)


### Documentations

* **pillar.example:** Add missing configurations for `consumer` ([1555162](https://github.com/extra2000/saferwall-formula/commit/1555162097631180f4d5995ca98822c6318c879e))
* **pillar.example:** Update memory limits for `couchbase` ([d60f676](https://github.com/extra2000/saferwall-formula/commit/d60f676d2aa9eb6d4b45affb85e65a7485164f3f))


### Fixes

* **consumer:** Increase memory limit from 2.1GiB to 3.1GiB ([2a9b5ee](https://github.com/extra2000/saferwall-formula/commit/2a9b5eeb1f3b8a271ffdb259740e58bdee3e92c2))
* **couchbase:** Increase memory limit from 1.1GiB to 2.6GiB ([acea8b3](https://github.com/extra2000/saferwall-formula/commit/acea8b3bf0ba6a861eeaf994788e1219835f7f0c))
* **saferwall.service:** Fix missing `--network=saferwall` ([6912b08](https://github.com/extra2000/saferwall-formula/commit/6912b0803d9927807eb7b825c53402e33c3e866a))

## [2.0.0](https://github.com/extra2000/saferwall-formula/compare/v1.0.0...v2.0.0) (2021-01-09)


### ⚠ BREAKING CHANGES

* Salt pillar format have changed and Podman volume is now using `persistentVolumeClaim`.

### Features

* **podman:** Add resource limitations to ensure host stability ([060144d](https://github.com/extra2000/saferwall-formula/commit/060144d9665020098c07d23adc1240a7b4d292f6))
* **saferwall:** Rebase to latest commits ([a41f986](https://github.com/extra2000/saferwall-formula/commit/a41f986b436dfcc0fa37baef730b99a7ba6a3e2b))
* Add mapping to SaltStack, change storage volume from host directory mount to `persistentVolumeClaim`, and fixes prior to Podman version `2.2.1` changes ([4c7952d](https://github.com/extra2000/saferwall-formula/commit/4c7952dc5c9b214d55c7047e6f5513460406bde6))
* Add rootless Podman networking file for Saferwall ([820f667](https://github.com/extra2000/saferwall-formula/commit/820f6679baf37e1e0cec4312c88ad2ae129d163b))


### Fixes

* **defaults:** Reduce max file size scan from 100MB to 32MB due to high memory consumption from consumer and clamav ([40db87e](https://github.com/extra2000/saferwall-formula/commit/40db87e98536f6810858172ae2b5002f06ae46aa))


### Documentations

* **pillar:** Update `pillar.example` ([5a5674e](https://github.com/extra2000/saferwall-formula/commit/5a5674eaf55393417e71286c90b1f5cb195c0d96))
* **README:** Remove `saferwall.config.volumes` state ([a35bcca](https://github.com/extra2000/saferwall-formula/commit/a35bcca5ba0bdb5ba9650027b3b440f56f43793b))

## 1.0.0 (2020-12-01)


### Features

* Add `saferwall.service` state ([3889c1b](https://github.com/extra2000/saferwall-formula/commit/3889c1bc01f0cb04e09840697f5f0c77b7e1a70b))
* Add persistent volumes ([b8f5c1f](https://github.com/extra2000/saferwall-formula/commit/b8f5c1f79308297c9d349affb9b931f4adac5c1c))
* **clamav:** Add configuration file for ClamAV ([e6759f7](https://github.com/extra2000/saferwall-formula/commit/e6759f71fa491bfb8c74281c18a29430874d7fb9))
* **couchbase-pod:** Add persistent volume ([56abb37](https://github.com/extra2000/saferwall-formula/commit/56abb3704f795f25908d5ee4ef4ceb9c866772e0))
* **minio-pod:** Add persistent volume ([15e3dea](https://github.com/extra2000/saferwall-formula/commit/15e3dea569c2228be5921bb8e0c29e17b50ecca9))
* **nsq-pod:** Add persistent volume ([d00bf30](https://github.com/extra2000/saferwall-formula/commit/d00bf302ea68d37c8a39b9d1dd6ba10eae9bbf31))
* **saferwall:** New commits ([2467322](https://github.com/extra2000/saferwall-formula/commit/2467322e785593290cf91807f84301e75f2cbb45))
* **saferwall:** Rebase on top of latest upstream `master` ([a9f071a](https://github.com/extra2000/saferwall-formula/commit/a9f071a569557854f4e06e7abafb2eb02f2336a6))
* Add initial states implementation ([820b425](https://github.com/extra2000/saferwall-formula/commit/820b425544c47d7342a23cdb37563496b87f4706))
* Add saferwall ([4035d9d](https://github.com/extra2000/saferwall-formula/commit/4035d9d4cd6125ec8790bcc6af2cbdc16406e196))
* Update salt implementations for the latest commit from saferwall-formula ([30d62af](https://github.com/extra2000/saferwall-formula/commit/30d62afde870db47f12ef91756f62fb8b87e6366))


### Fixes

* Change `localhost` to `127.0.0.1` because Podman containers on Debian/Ubuntu failed to resolve `localhost` ([6c107be](https://github.com/extra2000/saferwall-formula/commit/6c107bef2d7c4ebdf9710358011dbf8c5ce0f95c))
* **config.file:** Hide diff when copying Saferwall source files and when applying `dos2unix` to prevent terminal from hangup due to a lot of output ([8911f66](https://github.com/extra2000/saferwall-formula/commit/8911f66c36de6855a45ae6193c37802f4e52ba40))
* **config.file:** Make `dos2unix` convert files in `/opt/saferwall/src/` only because `/opt/saferwall/` now contains container volumes ([8d431b8](https://github.com/extra2000/saferwall-formula/commit/8d431b864b01f1c5f44e8cb56e411fc7deaaf5d9))
* **config.files:** Fix BASH scripts become CRLF on Windows ([eebbeeb](https://github.com/extra2000/saferwall-formula/commit/eebbeeb4efa139a418998e5d6e1af4a9b01f6f59))
* **saferwall:** New commits which fix file upload size issue ([6dee29f](https://github.com/extra2000/saferwall-formula/commit/6dee29f511c824e905c8c462bd4f6707e3fc17ba))
* **saferwall-pod:** Remove `imagePullPolicy: Never` because it is unsupported on Podman `v2.0.x` and earlier ([5257670](https://github.com/extra2000/saferwall-formula/commit/5257670885aa5315281e13fab3d0cab5ed558d13))


### Continuous Integrations

* Add AppVeyor ([775b64b](https://github.com/extra2000/saferwall-formula/commit/775b64b3a6bdb97219f9246e2f94e41c1ac86950))
* Remove Travis CI because it is no longer free ([80ec830](https://github.com/extra2000/saferwall-formula/commit/80ec83083cb1b5d5d079a18975faa2018b294337))
* **semantic-release:** Write version to `VERSION.txt` file ([4e6c5e7](https://github.com/extra2000/saferwall-formula/commit/4e6c5e71cca41c616935f0f4e520414283029328))
* Add Travis CI and semantic-release ([2d06988](https://github.com/extra2000/saferwall-formula/commit/2d0698828f95f70971c677b2658f5c6d3c9a185e))


### Code Refactoring

* Move building image states into `saferwall/build/` directory ([a60ffe9](https://github.com/extra2000/saferwall-formula/commit/a60ffe932a496ca4a5005c4017199aad0e083725))
* ***-pod:** Change volume path from relative to absolute path ([7923775](https://github.com/extra2000/saferwall-formula/commit/7923775a2e99727d38f595f8490a0f93ebfd55e8))
* **multiav:** Using Podman Pod YAML file instead of creating pod and manually add MultiAV containers ([49dab8f](https://github.com/extra2000/saferwall-formula/commit/49dab8fe1a18f5b59cdec89b6813ab4edf786f24))
* **saferwall:** Change repository URL from official to extra2000 ([112f8ca](https://github.com/extra2000/saferwall-formula/commit/112f8ca95e4357d74a9c8117123cf8c6c67658db))


### Styles

* **README:** Add a spacing after title ([f9a2942](https://github.com/extra2000/saferwall-formula/commit/f9a294283df1b21d8f6235add6717fbd1d7d929e))
* Add .gitignore ([65444a1](https://github.com/extra2000/saferwall-formula/commit/65444a1793e30cd24b82e9dfd5480a1f30a09d60))


### Documentations

* **README:** Add `saferwall.service` state ([c139992](https://github.com/extra2000/saferwall-formula/commit/c1399922a43d23cad304679c19e068ec1a4af93a))
* **README:** Add a list of available states ([fdd3ef5](https://github.com/extra2000/saferwall-formula/commit/fdd3ef5e182b75cc56d502afd4ac5a0de1944154))
* **README:** Add badges ([071c24a](https://github.com/extra2000/saferwall-formula/commit/071c24acc5b6970a6c812600fa91e39078015e7e))
* **README:** Update description ([53a7972](https://github.com/extra2000/saferwall-formula/commit/53a7972558b209aa576413ec7271be75608e348e))
* Add `pillar.example` for references ([7b876ba](https://github.com/extra2000/saferwall-formula/commit/7b876bad297e683da34ae5f337015ebcd4a32a58))


### Maintenance

* **release:** 1.0.0-alpha.1 [skip ci] ([664a6b8](https://github.com/extra2000/saferwall-formula/commit/664a6b85ac659fe0b32d85ae18a46f8d315ec362))
* **release:** 1.0.0-alpha.2 [skip ci] ([4374aea](https://github.com/extra2000/saferwall-formula/commit/4374aea34d6eddb38a56703d9e0238b77ccbaec6))
* **release:** 1.0.0-alpha.3 [skip ci] ([8c496fc](https://github.com/extra2000/saferwall-formula/commit/8c496fcdf76b5186e564fc58c6322c94be1ad0e1))
* **release:** 1.0.0-alpha.4 [skip ci] ([115febb](https://github.com/extra2000/saferwall-formula/commit/115febb8d01f7034e0786382582f5a4fdf6f805d))
* **release:** 1.0.0-alpha.5 [skip ci] ([b056f8e](https://github.com/extra2000/saferwall-formula/commit/b056f8eeff5b9f4ef01f949a63192b10344fe487))
* **release:** 1.0.0-alpha.6 [skip ci] ([6b30201](https://github.com/extra2000/saferwall-formula/commit/6b302014d848e260e45f55820152820e42a3ad8b))
* **release:** 1.0.0-alpha.7 [skip ci] ([5c44715](https://github.com/extra2000/saferwall-formula/commit/5c447154f31775e12c5e940db4fb0bb040dbc073))

## [1.0.0-alpha.7](https://github.com/extra2000/saferwall-formula/compare/v1.0.0-alpha.6...v1.0.0-alpha.7) (2020-12-01)


### Documentations

* **README:** Add badges ([071c24a](https://github.com/extra2000/saferwall-formula/commit/071c24acc5b6970a6c812600fa91e39078015e7e))

## [1.0.0-alpha.6](https://github.com/extra2000/saferwall-formula/compare/v1.0.0-alpha.5...v1.0.0-alpha.6) (2020-11-30)


### Features

* Add `saferwall.service` state ([3889c1b](https://github.com/extra2000/saferwall-formula/commit/3889c1bc01f0cb04e09840697f5f0c77b7e1a70b))


### Documentations

* **README:** Add `saferwall.service` state ([c139992](https://github.com/extra2000/saferwall-formula/commit/c1399922a43d23cad304679c19e068ec1a4af93a))

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
