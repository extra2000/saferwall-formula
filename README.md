# saferwall-formula

| License | Versioning | Build |
| ------- | ---------- | ----- |
| [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) | [![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release) | [![Build status](https://ci.appveyor.com/api/projects/status/wjpohw5wvpdva59b/branch/master?svg=true)](https://ci.appveyor.com/project/nikAizuddin/saferwall-formula/branch/master) |

SaltStack Formula for [Saferwall](https://github.com/saferwall/saferwall).


## Available states

| States | Descriptions |
| ------ | ------------ |
| `saferwall` | Configure and build all images required by Saferwall. |
| `saferwall.config` | Prepare destination directories and copy sources. |
| `saferwall.config.files` | Make sure destination directories exists and copy sources. |
| `saferwall.config.nginx` | Configure NGINX for Saferwall HTTPS. |
| `saferwall.build` | Build MultiAV and Saferwall images |
| `saferwall.build.multiav` | Build MultiAV images |
| `saferwall.build.saferwall` | Build Saferwall images |
| `saferwall.service` | Start all services including Saferwall |
