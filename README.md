[gem]: https://rubygems.org/gems/dry-web-web_pipe
[travis]: https://travis-ci.org/waiting-for-dev/dry-web-web_pipe

[![Gem Version](https://badge.fury.io/rb/dry-web-web_pipe.svg)][gem]
[![Build Status](https://travis-ci.org/waiting-for-dev/dry-web-web_pipe.svg?branch=master)][travis]

Integration between [dry-web](https://github.com/dry-rb/dry-web) and [web_pipe](https://github.com/waiting-for-dev/web_pipe) with [hanami-router](https://github.com/hanami/router).

This is a fork of [dry-web-roda](https://github.com/dry-rb/dry-web-roda) where the roda dependency has been changed to web_pipe + hanami-router.

dry-web-web_pipe offers a CLI for generating new projects.

### Umbrella projects

To generate a new _umbrella project_ (functionality divided into sub-apps):

```sh
$ dry-web-web_pipe new <your_project_name>
```

And to generate sub-apps within your project:

```sh
$ dry-web-web_pipe generate sub_app <your_sub_app_name> --umbrella=<your_project_name>
```

### Flat projects

To generate a new _flat project_ (a simpler architecture, with a single module for your entire app):

```sh
$ dry-web-web_pipe new <your_project_name> --arch=flat
```

## Generated skeleton

### Umbrella projects

Main (hanami) router goes to `lib/<your_project_name>/router.rb`. It mounts
subapp routers, which are in
`apps/<your_sub_app_name>/system/<your_project_name>/<your_sub_app_name>/router.rb`.

Remember to update main router when adding new sub-apps.

web_pipe actions go to
`apps/<your_sub_app_name>/lib/<your_project_name>/<your_sub_app_name>/actions/`

As a base `web_pipe` to be composed there is
`apps/<your_sub_app_name>/lib/<your_project_name>/<your_sub_app_name>/web.rb`.

### Flat projects

Hanami router goes to `system/<your_project_name>/router.rb`.

web_pipe actions go to `lib/<your_project_name>/actions/`.

As a base `web_pipe` to be composed there is
`apps/<your_project_name>/lib/web.rb`.

## LICENSE

See `LICENSE` file.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/waiting-for-dev/dry-web-web_pipe.

## Acknowledgements

The support code for testing the CLI and generated app are derived from
[hanami/hanami](https://github.com/hanami/hanami). Thank you to Luca and the
Hanami team!
