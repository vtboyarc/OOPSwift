let x1 = 0
let y1 = 0

// Specifying a constant as a touple with 2 ints, assgigned names to the values, x and y
//Doing a scruct is easier than doing it this way, more resuable
let coordinate1: (x: Int, y: Int) = (0,0)

// A Struct, that we named Point (Java class naming conventions basically)
// This is a blueprint from which we can create many different Points
struct Point {
    // here we created 2 stored properties, with names x and y, of type Int
    let x: Int
    let y: Int
    
    //Initializer Method
    // We don't have to name it
    //self.x and self.y tell Swift it means the stored properties, created as constants in the lines above
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    // Can have functions inside a Struct
    // we gave the range var a default value of 1
    // we are specifying the functions return type as an array of Point
    //This function is an instance method, because it can only be called when we have an instance of Point
    func surroundingPoints(withRange range: Int = 1) -> [Point] {
        //a var of type Point array, assigned to an empty array, because we will be adding items to it later
        var results: [Point] = []
        for xCoord in (x-range)...(x+range) {
            for yCoord in (y-range)...(y+range) {
                let coordinatePoint = Point(x: xCoord, y: yCoord)
                results.append(coordinatePoint)
            }
        }
        return results
    }
}

// Creates an Instance of the Struct "Point"
let coordinatePoint = Point(x: 2, y: 2)

//Calls the function in the Struct, using the values we assigned in the coordinatePoint constant above
coordinatePoint.surroundingPoints()
