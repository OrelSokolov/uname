# uname

Uname is interface to standard `uname` data via C extension

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     uname:
       github: orelsokolov/uname
   ```

2. Run `shards install`

## Usage

```crystal
require "uname"

Uname.sysname
Uname.nodename
Uname.release
Uname.machine
Uname.version
```


## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/orelsokolov/uname/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Oleg Orlov](https://github.com/orelsokolov) - creator and maintainer
