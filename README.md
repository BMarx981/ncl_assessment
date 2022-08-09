# ncl_tech_assesment

Tech assessment for NCL

## Getting Started

This project is a tech assessment for NCL. 

The app will have three buttons that will parse an api.

I used three packages in the app, http, Riverpod and network_image_mock. I felt like they
were worth using due to popularity in pubdev and how current they were.
They were also the perfect solution to tests, network requests and state management.
Riverpod's FutureProvider supplies the state management with data, error and loading 
in the "when" callback. These three are perfect for api calls and the different 
states we find ourselves in while interacting with network calls.
I used an enum to differentiate between the different ships. This enum is also what
calls the different network calls. I stored this in the model layer but it could easily be
in it's own folder in the model directory. I felt this would be a scalable solution 
for adding more buttons. The Services directory contains a base service class 
for this reason as well.