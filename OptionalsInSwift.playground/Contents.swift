
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

struct Friend {
    let name: String
    let age: String
    let address: String? //an optional, ie, if no address exists
}

// Function that takes a dictionary with key of type String and value of type String, and returns from the Friend struct
// returns an optional Friend, sincew chance we might get nil back if key/value pair doesn't exist
func createFriend(dict: [String : String]) -> Friend? {
    //if name and age don't exist and we get nil back, then exit the function scope and return nil
    // guard lets you put the else in the same code block before using any braces
    // using guard allows for less code, don't have to do nested if/else
    guard let name = dict["name"], let age = dict["age"] else {
        return nil
    }
    
    let address = dict["address"]
    
    return Friend(name: name, age: age, address: address)
    
}

// Raw Values

enum Coin {
    case Penny
    case Nickel
    case Dime
    case Quarter
}

enum HTTPStatusCodes: Int {
    case Continue = 100
    case Success = 200
    case Unauthorized = 401
    case Forbidden = 403
    case NotFound = 404
    
}

let statusCode = 200
if let httpCode = HTTPStatusCodes(rawValue: statusCode) {
    print(httpCode)
}

// Nil Coalescing Operator

let firstName: String? = "Adam"
let username = "acarter"

var displayName: String

if firstName != nil {
    displayName = firstName!
} else {
    displayName = username
}

//is firstName not equal to nil? If true, return firstName, otherwise, return username
displayName = firstName != nil ? firstName! : username

//this does the same thing as the above line, using ??, the Nil Coalescing Operator
displayName = firstName ?? username


