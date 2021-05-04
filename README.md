# ephemeral-controller
**ephemeral-controller** is a WIP [flux](https://github.com/fluxcd/flux2) controller which will create short-lived environments from a branch with the intention of running e2e tests or otherwise helping with the development process

## why?

based on a [question](https://github.com/fluxcd/flux2/discussions/8310) regarding how to use **flux** to create ephemeral or _preview_ environments - code snippets and idea for the controller are thanks to @stealthybox (YAML initially taken from [here](https://github.com/fluxcd/flux2/blob/e6132e3/manifests/integrations/registry-credentials-sync/_base/sync.yaml#L58-L84))

## status

this is a proof of concept and currently only serves to validate the idea isn't crazy