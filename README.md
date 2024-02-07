# helm chart for indico event maganement application

## Usage

[Helm](https://helm.sh) must be installed to use the charts. Once Helm has been set up correctly, add the repo as follows:
```bash
helm repo add nomad-indico https://FAIRmat-NFDI.github.io/fairmat-indico-chart
helm repo update
```

To install the `RELEASE_NAME` chart:
```bash
helm install RELEASE_NAME nomad-indico/indico
```

To uninstall the chart:
```bash
helm delete RELEASE_NAME
```


## Known issues:

- after the first deployment the container of the main application and the worker needs to be restarted manually.

## Alternative solutions

Similar helm charts:
- [freedesktop.org](https://gitlab.freedesktop.org/mupuf/indico-k8s/-/tree/master/charts/indico)
- [nsf-muses](https://gitlab.com/nsf-muses/deployment/kubernetes/-/tree/main/charts/indico)