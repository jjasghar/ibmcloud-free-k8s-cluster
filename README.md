# Free Kubernetes cluster on IBM Cloud

## Scope

This is a `bash` script that will spin up the **free** Kubernetes
cluster on IBM Cloud. This is also subject to the same conditions that the 
free cluster is allowed.

**Note:** After 30 days the cluster will delete. You need to figure out
a way to back up your deployments and all.

Also, just a friendly [link][email] here to the Email preferances. You should
set them accordingly, otherwise you'll see quite a few come in when the run
~ 15 mins, is complete.

### Prereqs

- `ibmcloud` CLI installed
- IBM Cloud API-KEY

You will also need an APK-KEY, which is under "Access (IAM)" on your IBM Cloud
account.

Or:

```bash
ibmcloud iam api-key-create MyKey -d "this is my API key" --file key_file
```

## Usage

Create:
```bash
./create.sh "API-KEY" "NAMEofCLUSTER"
```

Delete:
```bash
./delete.sh "API-KEY" "NAMEofCLUSTER"
```

**Note**: If you don't name the cluster, it will default to `mycluster-free`.

## Let's Encrypt

Thanks to [Tim Robinson](https://github.com/timroster) he has figured out how to
add Let's Encrypt Valid Certs to our free Kubernetes Clusters.

Check out [this gist](https://gist.github.com/timroster/ad6b915a46a831ee42aae7fc1676e4a3)
for the how-to.

## License & Authors

If you would like to see the detailed LICENSE click [here](./LICENSE).

- Author: JJ Asghar <awesome@ibm.com>

```text
Copyright:: 2020- IBM, Inc

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

[email]: https://cloud.ibm.com/user/notifications
