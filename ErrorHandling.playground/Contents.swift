// Error Handling

Int.init("abc")

struct Friend {
    let name: String
    let age: String
    let address: String?
}

enum FriendError: ErrorType {
    case InvalidData(String)
}

func createFriendFromJSON(dict: [String : String]) throws -> Friend {
    
    guard let name = dict["name"] else {
        throw FriendError.InvalidData("Name key fails")
    }
    
    guard let age = dict["age"] else {
        throw FriendError.InvalidData("Age key fails")
    }
    
    let address = dict["address"]
    
    return Friend(name: name, age: age, address: address)
}

func sendMessageToFriend(friend: Friend, message: String) {}

let response = ["name": "Pasan", "ages": "27", "address": "someAddress"]

do {
    let friend = try createFriendFromJSON(response)
    sendMessageToFriend(friend, message: "")
} catch FriendError.InvalidData(let key) {
    print(key)
}
























