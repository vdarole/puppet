# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include my_module::my_class
class my_module::my_class {

  file {'/tmp/module_test.txt':
  content => 'This file is created by a module',
     mode => '0644',
  }

}
