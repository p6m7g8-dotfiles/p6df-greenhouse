# P6's POSIX.2: p6df-greenhouse

## Table of Contents

- [Badges](#badges)
- [Summary](#summary)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [Usage](#usage)
  - [Functions](#functions)
- [Hierarchy](#hierarchy)
- [Author](#author)

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

p6df-greenhouse provides shell profile management for Greenhouse, the applicant tracking system.
It sources the GREENHOUSE_API_KEY from 1Password and exports it into the shell environment.

## Contributing

- [How to Contribute](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Functions

#### p6df-greenhouse

##### p6df-greenhouse/init.zsh

- `p6df::modules::greenhouse::deps()`
- `p6df::modules::greenhouse::mcp()`
- `p6df::modules::greenhouse::profile::off()`
- `p6df::modules::greenhouse::profile::on(profile, api_key)`
  - Args:
    - profile -
    - api_key -
- `str str = p6df::modules::greenhouse::prompt::mod()`

## Hierarchy

```text
.
├── init.zsh
└── README.md

1 directory, 2 files
```

## Author

Philip M. Gollucci <pgollucci@p6m7g8.com>
