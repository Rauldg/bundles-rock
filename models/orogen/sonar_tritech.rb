using_task_library "sonar_tritech"


module Dev
    device_type "Micron" do
        provides Base::SonarScanProviderSrv
        provides Base::GroundDistanceSrv  
    end

    device_type "Echosounder" do
        provides Base::GroundDistanceSrv
    end

    device_type "Profiling"
end

class SonarTritech::Micron
    driver_for Dev::Micron , :as => 'driver' 
end

class SonarTritech::Echosounder
    driver_for Dev::Echosounder , :as => 'driver'
end

#class SonarTritech::Profiling
#    driver_for "Dev::Profiling"
#end

