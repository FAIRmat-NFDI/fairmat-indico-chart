# indico


## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

  helm repo add nomad-indico https://nomad-coe.github.io/indico

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
indico` to see the charts.

To install the `<release-name>` chart:

    helm install <release-name> nomad-indico/indico

To uninstall the chart:

    helm delete <release-name>