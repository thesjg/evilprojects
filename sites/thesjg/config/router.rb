Merb.logger.info("Compiling routes...")
Merb::Router.prepare do |r|

  r.resources(:posts)
  r.namespace(:admin) do |admin|
    admin.resources(:users)
  end

  r.match('/').to(:controller => 'index', :action => 'index')

end
