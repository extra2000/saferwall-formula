# Changelog

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
