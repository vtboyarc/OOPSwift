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
}

// Creates an Instance of the Struct "Point"
let coordinatePoint = Point(x: 0, y: 0)
coordinatePoint.x //shows the value of x