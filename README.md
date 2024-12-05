### WordCount-Recursive

A wrapper on `wc` shell command. This command permits to execute `wc` recursively with a more flexible argument parser.

#### Installation

`gem install wcr`

#### Usage

Example of Project Architecture:

```text
wcr/
|--bin/
   |--wcr
|--lib/
   |--wcr/
      |--arguments_parser.rb
      |--command.rb
   |--wrc.rb
...
|--wcr.gemspec
```

##### execute `wcr` on `lib` folder:

Output:

```shell
$> wcr ./lib 
      38      88     818 ./lib/wcr/arguments_parser.rb
      13      33     343 ./lib/wcr/command.rb
       0       2      21 ./lib/wcr.rb
      51     123    1182 total
$>
```

The options parser is particulary flexible:

```shell
$> wcr -l ./lib -w ./bin
      38      88 ./lib/wcr/arguments_parser.rb
      13      33 ./lib/wcr/command.rb
       0       2 ./lib/wcr.rb
       7      13 ./bin/wcr
      58     136 total
$>
```

#### Options

Use `-h` options to display hidden files.

#### About This Gem

- This program is written using the ruby stdlib without any dependencies.
- It's a wrapper of `wc` shell command. So, feel free to check `man wc` for more information.

#### Issues

Before reporting a problem check the issue list.

#### About Me

More information [here](https://www.linkedin.com/pub/mehdi-farsi/48/ba9/336).

Feel free to follow me on [Twitter](https://twitter.com/farsi_mehdi).

Thanks! :)
