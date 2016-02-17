// Protocols ie Interface

protocol FullyNameable {
    // whatever uses this protocol, must have a property fullName of type String
    //get, means it can be read, but not set again - only a get-able property
    var fullName: String { get}
}

//struct (ie a class) that implements the above protocol
struct User: FullyNameable {
    
    //we have to add this, since the protocol we made has this
    var fullName: String
}


let user = User(fullName: "Adam Carter")

struct Friend: FullyNameable {
    let firstName: String
    let middleName: String
    let lastName: String
    
    //added fullName as a computed property to satisify the protocol
    var fullName: String {
        return "\(firstName) \(middleName) \(lastName)"
    }
    
}

let friend = Friend(firstName: "Adam", middleName: "Richard", lastName: "Carter")

friend.fullName

///////////////////////////////////////////////////////////

