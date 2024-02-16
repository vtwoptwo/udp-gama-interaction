# UDP Server to GAMA Experiment

Here I wanted to show a basic way to connect a UDP Server (which can be written in python), and receiving the data in a GAMA experiment. 


Specifically the premise is: given broadcasted x,y,z coordinates from a tracking system, can we project these coordinates in GAMA, in real time?

In the demo, z is used to scale the size of the species, and x and y are used to move the species in the GAMA UI.

To run this code you need to download GAMA, v.1.9.2 [here](https://gama-platform.org/download.html) 


run `python3 gaml_udp_server.py`

and then run your `SimpleUDPReceiverExperiment` from the `udp_gaml_connection_test.py`

You should see the coordinates being printed in the console, and the species "simple_agent", which in this case is just a circle, moving in the GAMA UI.


[![DEMO](https://img.youtube.com/vi/hB7lwn8-2sc/0.jpg)](https://www.youtube.com/watch?v=hB7lwn8-2sc)


### Extra

---

More information on Gama Operations: [https://gama-platform.org/wiki/OperatorsAA#strings-related-operators](https://gama-platform.org/wiki/OperatorsAA#strings-related-operators)

More information on how to parse messages in GAMA:

`message`

- Definition: a datatype containing a message (sent during a communication, such as the one sent/received in a FIPA interaction).
- Built-in attributes:
    - `contents` (type = unknown): the contents of this message, as a list of arbitrary objects
    - `sender` (type = unknown): the sender that has sent this message
    - `unread` (type = bool): whether this message is unread or not
    - `emission_timestamp` (type = int): the emission time stamp of this message (i.e. at what cycle it has been emitted)
    - `recention_timestamp` (type = int): the reception time stamp of this message (i.e. at what cycle it has been received)


