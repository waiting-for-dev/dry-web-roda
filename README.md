[gem]: https://rubygems.org/gems/dry-web-web_pipe
[travis]: https://travis-ci.org/waiting-for-dev/dry-web-web_pipe
[codeclimate]: https://codeclimate.com/github/waiting-for-dev/dry-web-web_pipe
[inchpages]: http://inch-ci.org/github/waiting-for-dev/dry-web-web_pipe/

[![Gem Version](https://badge.fury.io/rb/dry-web-web_pipe.svg)][gem]
[![Build Status](https://travis-ci.org/waiting-for-dev/dry-web-web_pipe.svg?branch=master)][travis]
[![Code Climate](https://codeclimate.com/github/waiting-for-dev/dry-web-web_pipe/badges/gpa.svg)][codeclimate]
[![Test Coverage](https://codeclimate.com/github/waiting-for-dev/dry-web-web_pipe/badges/coverage.svg)][codeclimate]
[![Inline docs](http://inch-ci.org/github/waiting-for-dev/dry-web-web_pipe.svg?branch=master&style=flat)][inchpages]

Integration between [dry-web](https://github.com/dry-rb/dry-web) and [web_pipe](https://github.com/waiting-for-dev/web_pipe).

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

## LICENSE

See `LICENSE` file.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/waiting-for-dev/dry-web-web_pipe.

## Acknowledgements

The support code for testing the CLI and generated app are derived from
[hanami/hanami](https://github.com/hanami/hanami). Thank you to Luca and the
Hanami team!
