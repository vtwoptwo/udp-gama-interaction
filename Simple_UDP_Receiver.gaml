model move

global {
    geometry shape <- rectangle(250, 250);
    bool DrawExtendedInfo <- true;
    
    init {
        create simple_agent number: 1;
    }
}

species simple_agent skills: [network] {
    float x <- rnd(250);
    float y <- rnd(250);
    float z <- rnd(10);
    int port <- 9876;

    init {
        do connect to: "localhost" protocol: "udp_server" port: port;
    }

    reflex receive_update when: has_more_message() {
        loop while: has_more_message() {
            message msg <- fetch_message();
      		list<string> coords <- msg.contents regex_matches("[-+]?\\d*\\.?\\d+");
            write msg;
            write coords;
            if (length(coords) = 3) {
                x <- float(coords[0]);
                y <- float(coords[1]);
                z <- float(coords[2]);
            	write coords;
          
               
               	
            }
        }
    }
    
    aspect default {
        float sizeBasedOnZ <- 5 + z;
        draw circle(sizeBasedOnZ) at: {x, y} color: #blue;
    }
    
    }
  

grid space cell_width:50 cell_height:50 {
    aspect dev {
        draw shape color:#white border:#black width:50;
    }
}

experiment MainVisualize type: gui virtual: true {
    output {
        display objects_display type:opengl toolbar: false rotate: 90 virtual:true {
            species simple_agent;
        }
    }
}

experiment SimpleUDPReceiverExperiment parent: MainVisualize type: gui {
    parameter "Display arena extended info:" var:DrawExtendedInfo <- true category: "Experiment Initialization";
    
    output {
        display objects_display_simulator parent:objects_display fullscreen:1 {
            species space aspect: dev position: {0,0, -0.01};
        }
    }
}
