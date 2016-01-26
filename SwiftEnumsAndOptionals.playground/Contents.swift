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

//By using the Day enum, heklps us avoid errors, if we misspell a day, it will complain that it isn't in the Day enum
func weekdayOrWeekend(day: Day) -> String {
    switch day {
    case Day.Saturday, Day.Sunday: return "Weekend"
    case Day.Monday, Day.Tuesday, Day.Wednesday, Day.Thursday, Day.Friday: return "Weekday"
        // Don't need to worry about a defauly, enum protects us from that
    }
}