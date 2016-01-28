
struct Person {
    let firstName: String
    let middleName: String? //adding the "?" makes it an optional String , means we can have middleName be nil below
    let lastName: String

    func getFullName() -> String {
        if middleName == nil {
            return firstName + " " + lastName
        }
        else {
            return firstName + " " + middleName! + " " + lastName //"!" at end of middleName allows it to be a value or nil
        }
    }
}

let me = Person(firstName: "Adam", middleName: nil, lastName: "Carter")

me.getFullName()

let airportCodes = ["CDG": "Charles de Gaulle"]
//this is called optional binding
//if airportCodes contains a value for JFK, it pulls it out and assigns it to newYorkAirport
if let newYorkAirport = airportCodes["JFK"] {
    print(newYorkAirport)
} else {
    print("That key does not exist")
}