// icyHot

// Given two temperatures, return true if one is less than 0 and the other is greater than 100.

// func icyHot(firstTemp: Int, secondTemp: Int) -> Bool
// icyHot(firstTemp: 120, secondTemp: -1) → true
// icyHot(firstTemp: -1, secondTemp: 120) → true
// icyHot(firstTemp: 2, secondTemp: 120) → false


func icyHot(firstTemp: Int, secondTemp: Int) -> Bool {
    if (firstTemp < 0) && (secondTemp > 100) {
        return true
    } else if (firstTemp > 100) && (secondTemp < 0) {
        return true
    } else {
        return false
    }
}

icyHot(firstTemp: 120, secondTemp: -1) == true
icyHot(firstTemp: -1, secondTemp: 120) == true
icyHot(firstTemp: 2, secondTemp: 120) == false

// posNeg

// Given 2 int values, return true if one is negative and one is
// positive. Except if the parameter "negative" is true,
// then return true only if both are negative.

// posNeg(firstValue: 1, secondValue: -1, negative: false) → true
// posNeg(firstValue: -1, secondValue: 1, negative: false) → true
// posNeg(firstValue: -4, secondValue: -5, negative: true) → true

func posNeg(firstValue: Int, secondValue: Int, negative: Bool) -> Bool {
    if firstValue > 0 && secondValue < 0 && negative == false {
        return true
    } else if firstValue < 0 && secondValue > 0 && negative == false {
        return true
    } else if firstValue < 0 && secondValue < 0 && negative == true {
        return true
    } else {
        return false
    }
}

posNeg(firstValue: 1, secondValue: -1, negative: false) == true
posNeg(firstValue: -1, secondValue: 1, negative: false) == true
posNeg(firstValue: -4, secondValue: -5, negative: true) == true

// parrotTrouble

//  We have a loud talking parrot. The "hour" parameter is the current hour time in the range 0..23.
//  We are in trouble if the parrot is talking and the hour is before 7 or after 20.
//  Return true if we are in trouble.
// parrotTrouble(isTalking: true, hour: 6) → true
// parrotTrouble(isTalking: true, hour: 7) → false
// parrotTrouble(isTalking: false, hour: 6) → false

func parrotTrouble(isTalking: Bool, hour: Int) -> Bool {
    if hour < 7 && isTalking {
        return true
    } else if hour > 20 && isTalking {
        return true
    } else {
        return false
    }
}

parrotTrouble(isTalking: true, hour: 6) == true
parrotTrouble(isTalking: true, hour: 7) == false
parrotTrouble(isTalking: false, hour: 6) == false

// hasTeen

// We'll say that a number is "teen" if it is in the range 13..19 inclusive.
// Given 3 int values, return true if 1 or more of them are teen.

// hasTeen(first: 13, second: 20, third: 10) → true
// hasTeen(first: 20, second: 19, third: 10) → true
// hasTeen(first: 20, second: 10, third: 13) → true

func hasTeen(first: Int, second: Int, third: Int) -> Bool {
    if (19 >= first && first >= 13) || (19 >= second && second >= 13) || (19 >= third && third >= 13) {
        return true
    } else {
        return false
    }
}

hasTeen(first: 13, second: 20, third: 10) == true
hasTeen(first: 20, second: 19, third: 10) == true
hasTeen(first: 20, second: 10, third: 13) == true

// Given two int values, return their sum. Unless the two values are the same, then return double their sum.

// sumDouble(first: 1, second: 2) → 3
// sumDouble(first: 3, second: 2) → 5
// sumDouble(first: 2, second: 2) → 8

func sumDouble(first: Int, second: Int) -> Int {
    if first == second {
        return 2 * (first + second)
    } else {
        return first + second
    }
}

sumDouble(first: 1, second: 2) == 3
sumDouble(first: 3, second: 2) == 5
sumDouble(first: 2, second: 2) == 8
