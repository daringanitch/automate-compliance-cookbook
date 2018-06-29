default['audit']['reporter'] = 'chef-server-automate'
case node['os']
when 'linux'
  default['audit']['profiles'] = [
    {
      name: 'DevSec Linux Security Baseline',
      compliance: 'chefadmin/linux-baseline',
    },
  ]
when 'windows'
  default['audit']['profiles'] = [
    {
      name: 'DevSec Windows Security Baseline',
      compliance: 'chefadmin/windows-baseline',
    },
  ]
end
