let x1 = 0
let y1 = 0


// (Tuple)
let coordinate1: (x: Int, y: Int) = (0, 0)
coordinate1.x

// For structs follow uppercamel case
struct Point {
    let x: Int
    let y: Int
    
    /// Returns the surrounding points in range of
    /// the current one
    func points(inRange range: Int = 1) -> [Point] {
        var results: [Point] = []
        
        let lowerBoundOfXRange = x - range
        let upperBoundOfXRange = x + range
        
        let lowerBoundOfYRange = y - range
        let upperBoundOfYRange = y + range
        
        for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange {
            for yCoordinate in lowerBoundOfYRange...upperBoundOfYRange {
                let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
                results.append(coordinatePoint)
            }
        }
        return results
    }
    
}

// Creates an instance of the Strut
let coordinatePointPlayer = Point(x: 0, y: 0)
print(coordinatePointPlayer)

coordinatePointPlayer.x
coordinatePointPlayer.points(inRange: 1)

coordinatePointPlayer.x

class Enemy {
    var life: Int = 2
    let position: Point
    
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func decreaseLife (by factor: Int) {
        life -= factor
        
    }
    
}

class Tower {
    let position: Point
    var range: Int = 1
    var strength: Int = 1
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func fire(at Enemy: Enemy) {
        
    }
    
    func isInRange (of enemy: Enemy) -> Bool {
        let availablePositions = position.points(inRange: range)
        
        for point in availablePositions {
            if enemy.position.x == point.x && point.y == enemy.position.y {
                return true
            }
        }
        return false
    }
    
    
}



