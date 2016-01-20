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


// Classes in Swift


class Enemy {
    //Stored properties
    //If we don't give a default value, get an error
    var life: Int = 2
    let posistion: Point //From the Point Struct we made
    
    init(x: Int, y: Int) {
        self.posistion = Point(x: x, y: y)
    }
    
    func decreaseHealth(factor: Int) {
        life -= factor //setting life equal to life minus factor
    }
}

class Tower {
    let posistion: Point
    var range: Int = 1
    var strength: Int = 1
    
    init(x: Int, y: Int) {
        self.posistion = Point(x: x, y: y)
    }
    //Type Enemy is from the class Enemy we made
    func fireAtEnemy(enemy: Enemy) {
        if inRange(self.posistion, range: self.range, target: enemy.posistion) {
            
            //this will be true initially, because we set life to 2 in the Enemy class
            while enemy.life > 0 {
                enemy.decreaseHealth(self.strength)
                print("Enemy vanquished!")
            }
        }
        else {
            print("Enemy is out of range")
        }
    }
    
    //bool, because true or false, in range or not
    func inRange(posistion: Point, range: Int, target: Point) -> Bool {
        
        let availablePosistions = posistion.surroundingPoints(withRange: range)
        for point in availablePosistions {
            if (point.x == target.x) && (point.y == target.y) {
                return true //because if this if block is true, means target is in range
            }
        }
        
        return false // if not in range
    }
}

let tower = Tower(x: 0, y: 0)
let enemy = Enemy(x: 1, y: 1)

tower.fireAtEnemy(enemy)








