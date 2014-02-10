require 'fileutils'


COMPOSER_SRC_DIR = '../composer'
COMPOSER_APP_DIR = "installer/mac/staging/Substance Composer.app/Contents/www"

# # Installing Ruby library "mylib" under the site_ruby
# FileUtils.rm_r site_ruby + '/mylib', :force
# FileUtils.cp_r 'lib/', site_ruby + '/mylib'

# # Examples of copying several files to target directory.
# FileUtils.cp_r %w(mail.rb field.rb debug/), site_ruby + '/tmail'
# FileUtils.cp_r Dir.glob('*.rb'), '/home/aamine/lib/ruby', :noop => true, :verbose => true

# # If you want to copy all contents of a directory instead of the
# # directory itself, c.f. src/x -> dest/x, src/y -> dest/y,
# # use following code.
# FileUtils.cp_r 'src/.', 'dest'     # cp_r('src', 'dest') makes dest/src,
#                                    # but this doesn't.


desc 'Build the Composer'
task :build_dist do
  FileUtils.cd(COMPOSER_SRC_DIR) do  # chdir
    system("substance --bundle nominify")

  end # return to original directory
end

desc 'Copy www'
task :copy_www => [:build_dist] do
  FileUtils.rm_r COMPOSER_APP_DIR, :force => true
  FileUtils.cp_r COMPOSER_SRC_DIR + "/dist", COMPOSER_APP_DIR
  puts "Done copying the bundle to the apps www folder: "+COMPOSER_APP_DIR
end
