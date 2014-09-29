require "devgem/version"

require "thor"

module Devgem
  class CLI < Thor

    default_task :setup

    desc "setup", "Sets current dir as development gem"
    def setup
      gempath, currentgem, currentdir, devgem = info

      print "Current gem path: "
      say gempath, :green

      print "Current gem: "
      say currentgem, :green

      puts

      # TODO check if valid gem
      print "Installing gem... "
      `bundle`
      `rake install`
      say "done", :green

      print "Deleting auto-generated gem files... "
      `rm -rf #{devgem}`
      say "done", :green
      
      print "Creating '%s'... " % [devgem]
      `ln -s #{currentdir} #{devgem}`
      say "done", :green
    end

    desc "delete", "Unlinks current gem from development mode"
    def delete
      _, _, _, l = info
      print "Deleting '#{l}'... "
      `rm l`
      say "done", :green
    end




    private 

    def info
      gempath = `echo $GEM_HOME`.strip
      currentgem = `echo ${PWD##*/}`.strip
      currentdir = `echo $PWD`.strip
      dest = gempath + "/gems/" + currentgem + "-0.0.1"
           
      [gempath, currentgem, currentdir, dest] 
    end

  end
end
