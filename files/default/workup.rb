Ohai.plugin(:Workup) do
  provides 'workup'
  require 'etc'

  def username
    Etc.getlogin
  end

  def home_dir
    Dir.home
  end

  collect_data :default do
    workup(Mash.new)
    workup[:username] = username
    workup[:home_dir] = home_dir
  end
end

