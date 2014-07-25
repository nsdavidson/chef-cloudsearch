# Chef::Cloudsearch

This gem adds the ability to search cloud providers for resources from within
a Chef recipe.  The purpose is to allow searching for resources that are not
managed by Chef directly (RDS instances, Elasticache, etc)
Currently only AWS is supported.

## Installation

Install the gem in a recipe by using chef_gem and require it before using.

```
chef_gem 'chef-cloudsearch'
require 'chef/cloudsearch'
```

## Usage

Currently only AWS EC2 is supported as this is only a prototype.  Example usage:

```
result = cloudsearch(<aws_access_key_id>, <aws_secret_access_key>, <ec2_region>, :ec2, [ { name: 'tag-value', values: ["testing"]  } ])

puts result.first[:public_dns_name]
result.each do |instance|
  puts instance[:public_dns_name]
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
