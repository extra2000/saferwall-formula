# saferwall-formula

SaltStack Formula for [Saferwall](https://github.com/saferwall/saferwall).


## Available states

| States | Descriptions |
| ------ | ------------ |
| `saferwall` | Configure and build all images required by Saferwall. |
| `saferwall.config` | Prepare destination directories and copy sources. |
| `saferwall.config.files` | Make sure destination directories exists and copy sources. |
| `saferwall.config.volumes` | Make sure volume directories exists. |
| `saferwall.build` | Build MultiAV and Saferwall images |
| `saferwall.build.multiav` | Build MultiAV images |
| `saferwall.build.saferwall` | Build Saferwall images |
| `saferwall.service` | Start all services including Saferwall |
