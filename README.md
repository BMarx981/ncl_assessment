# ncl_tech_assesment

Tech assessment for NCL

## Getting Started

This project is a tech assessment for NCL. 

The app will have three buttons that will parse an api.

I used two packages in the app, http and Riverpod. I felt like those two
were worth using due to popularity in pubdev and how up to date they are.
They were also the perfect solution to network requests and state management.
Riverpod's FutureProvider supplies the state management with data, error and loading. 
These three are perfect for api calls and the different states we find ourselves in while
interacting with network calls.
I used an enum to differentiate between the different ships. This enum is also what
calls the different network calls. I stored this in the model layer but it could easily be
in it's own folder in the model directory.