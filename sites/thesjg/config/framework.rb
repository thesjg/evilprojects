        %w[view model helper controller mailer part].each do |component|
          Merb.push_path(component.to_sym, Merb.root_path("app/#{component}s"))
        end
        Merb.push_path(:application,  Merb.root_path("app" / "controllers" / "application.rb"))
        Merb.push_path(:config,       Merb.root_path("config"), nil)
        Merb.push_path(:router,       Merb.dir_for(:config), (Merb::Config[:router_file] || "router.rb"))
        Merb.push_path(:lib,          Merb.root_path("lib"), nil)
        Merb.push_path(:log,          Merb.log_path, nil)
        Merb.push_path(:public,       Merb.root_path("public"), nil)
        Merb.push_path(:stylesheet,   Merb.dir_for(:public) / "css", nil)
        Merb.push_path(:javascript,   Merb.dir_for(:public) / "js", nil)
        Merb.push_path(:image,        Merb.dir_for(:public) / "img", nil)
