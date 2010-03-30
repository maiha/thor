class NoUsage < Thor
  desc "Open console via irb"
  def console(env = 'development')
    # system("ruby script/console #{env}")
  end
end
