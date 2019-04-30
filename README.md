# jx-app-istio

The chart for the Istio application for Jenkins X.

## What's in the chart?

The chart wraps the Istio chart, and adds the App custom resource.

## Installing

```
jx add app jx-app-istio
```

## TODO

Currently Istio is distributed as two charts `istio-init` and `istio` that must be installed in order and is not yet supported.

