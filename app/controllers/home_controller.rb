class HomeController < ApplicationController

    def print

        @temp_file = params[:file].tempfile
        @temp_file.open
        @temp_file.read


        @path = "/tmp/tuniqueinstance_jspm3"
        @temp_path = @temp_file.path

        puts "PATHSSSSSSSSSSSSSSSSSSSSSSS"
        puts @temp_path
        puts "PATHSSSSSSSSSSSSSSSSSSSSSSS"




        #system("lpr", @path)
        system("lpr", @temp_path)

    end


    private 

    def activities_params
        params.permit(:file)
    end

end
