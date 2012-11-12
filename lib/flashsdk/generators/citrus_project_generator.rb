module FlashSDK
  class CitrusProjectGenerator < ClassGenerator

    add_param :css, Path, { :default => 'css' }
    add_param :images, Path, { :default => 'images' }
    add_param :fonts, Path, { :default => 'fonts' }
    add_param :states, Path, { :default => 'states' }
        
    def manifest
      directory input do
        template 'rakefile.rb','citrus_rakefile.rb'
        template 'Gemfile'

        directory src do
          template "#{input.camel_case}.as", 'CitrusActionScript3MainClass.as'
          directory states do
            template "GameState.as", 'CitrusActionScript3GameState.as'
          end
          template "#{test_runner_name}.as", 'ActionScript3RunnerClass.as'
        end

        directory assets 

        # Create empty directories:
        directory lib do
          file 'CitrusReload.swc'
        end
        directory bin
      end
    end

  end
end
