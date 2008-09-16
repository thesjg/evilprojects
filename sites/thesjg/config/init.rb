Gem.clear_paths
Gem.path.unshift(Merb.root / 'gems')

Merb.push_path(:lib, Merb.root / 'lib')

use_orm :datamapper
use_test :rspec
use_template_engine :haml

dependency 'merb-assets'
dependency 'merb-builder'
dependency 'merb-cache'
dependency 'merb-haml'
dependency 'merb-jquery'
dependency 'merb-slices'
 
dependency 'merb_helpers'
 
dependency 'dm-aggregates'
dependency 'dm-timestamps'
dependency 'dm-validations'
dependency 'dm-constraints'

Merb::BootLoader.before_app_loads do
  Merb::Config[:sass] = {}
  Merb::Config[:sass][:template_location] = Merb.dir_for(:stylesheet) / 'sass'
  Merb::Config[:sass][:css_location]      = Merb.dir_for(:stylesheet)
end

Merb::BootLoader.after_app_loads do
end

Merb::Config.use do |c|
  c[:session_id_key] = '_session_id'
  c[:session_secret_key]  = '5b9b500806925eff3c6663a754883fdb71f75b7c'
  c[:session_store] = 'memory'
end