require 'bundler/gem_tasks'

CLOBBER << 'ext/yui/yui.cxx'

task swig: 'ext/yui/yui.cxx'

task build: :swig

rule '.cxx' => '.i' do |t|
  sh "swig -c++ -ruby -autorename -I/usr/include -o #{t.name} #{t.source}"
end
