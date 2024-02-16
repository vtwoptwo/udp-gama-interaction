# UDP Server to GAMA Experiment

Here I wanted to show a basic way to connect a UDP Server (which can be written in python), and receiving the data in a GAMA experiment. 


Specifically the premise is: given broadcasted x,y,z coordinates from a tracking system, can we project these coordinates in GAMA, in real time?

In the demo, z is used to scale the size of the species, and x and y are used to move the species in the GAMA UI.

To run this code you need to download GAMA, v.1.9.2 [here](https://gama-platform.org/download.html) 


run `python3 gaml_udp_server.py`

and then run your `SimpleUDPReceiverExperiment` from the `udp_gaml_connection_test.py`

You should see the coordinates being printed in the console, and the species "simple_agent", which in this case is just a circle, moving in the GAMA UI.


[![DEMO](https://img.youtube.com/vi/hB7lwn8-2sc/0.jpg)](https://www.youtube.com/watch?v=hB7lwn8-2sc)
