let week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

func weekdayOrWeekend(day: String) -> String {
    switch day {
        case "Saturday", "Sunday": return "Weekend"
        case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday": return "Weekday"
    default: return "Not a valid day"
    }
}

func muteNotifcations(day: String) -> Bool {
    if day == "Weekend" {
        return true }
    else {
        return false
    }
}
let result = weekdayOrWeekend(week[4])
let isMuted = muteNotifcations(result)

// Doing it with enums

enum Day {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

enum DayType {
    case Weekday
    case Weekend
}

//By using the Day enum, heklps us avoid errors, if we misspell a day, it will complain that it isn't in the Day enum
//Returns DayType type
func weekdayOrWeekend(day: Day) -> DayType {
    switch day {
        //could do .Saturday, etc, without the Day in front, Swift knows what we mean. Allows for typing less code
    case Day.Saturday, Day.Sunday: return DayType.Weekend
    default: return DayType.Weekend //if it isn't Saturday or Sunday, it will then be this default
            }
}

func muteNotifications(dayType: DayType) -> Bool {
    switch dayType {
    case DayType.Weekend: return true
    case DayType.Weekday: return false
        
    }
}

// Color Objects

import UIKit

enum ColorComponents {
    //CGFloat type from the Core Graphics framework
    case RGB(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
    case HSB(CGFloat, CGFloat, CGFloat, CGFloat)
    
    //instance method
    func color() -> UIColor {
        switch self {
        case .RGB(let redValue, let greenValue, let blueValue, let alphaValue):
            return UIColor(red: redValue/255.0, green: greenValue/255.0, blue: blueValue/255.0, alpha: alphaValue)
        case .HSB(let hueValue, let saturationValue, let brightnessValue, let alphaValue):
            return UIColor(hue: hueValue/360.0, saturation: saturationValue/100.0, brightness: brightnessValue/100.0, alpha: alphaValue)
            
        }
    }

}

ColorComponents.RGB(red: 100, green: 200, blue: 100, alpha: 1.0).color() //.color is our function in the ColorComponents enum






