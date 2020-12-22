class HomeController < ApplicationController

    def print

        puts "PARAMSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS"
        puts params
        puts activities_params
        puts "PARAMSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS"

        system("lpr", "/home/flip/Documents/Avant de C")




    end


    private 

    def activities_params
        params.permit(:file)
    end

end
