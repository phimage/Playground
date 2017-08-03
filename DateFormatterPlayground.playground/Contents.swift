//: Playground - noun: a place where people can play

import UIKit


let string = "2017-03-13T08:27:17.298Z"

let iso8601: DateFormatter = {
    let formatter = DateFormatter()
    formatter.calendar = Calendar(identifier: .iso8601)
    formatter.locale = Locale(identifier: "en_US_POSIX")
    formatter.timeZone = TimeZone(secondsFromGMT: 0)
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXXXX"
    return formatter
}()

iso8601.date(from: string)


/*

let date = Date()
var formatter = DateFormatter()

formatter.dateStyle = .none
formatter.timeStyle = .none
var string = formatter.string(from: date)

print("System data short") // 1/6/00
formatter.dateStyle = .short
formatter.timeStyle = .none
string = formatter.string(from: date)

print("Internal date abbreviated")
formatter.dateStyle = .medium
formatter.timeStyle = .none
string = formatter.string(from: date)

print("Internal date long") // Jan 6, 2000
formatter.dateStyle = .long
formatter.timeStyle = .none
string = formatter.string(from: date)


print("Internal date short") // 01/06/2000
formatter = DateFormatter()
formatter.dateFormat = "MM/dd/yyyy"
string = formatter.string(from: date)


print("System data long") // Thursday, January 6 2000
formatter = DateFormatter()
formatter.dateFormat = "MM/dd/yyyy"
string = formatter.string(from: date)






formatter.dateStyle = .short
formatter.timeStyle = .short
string = formatter.string(from: date)

formatter.dateStyle = .medium
formatter.timeStyle = .short
string = formatter.string(from: date)

formatter.dateStyle = .long
formatter.timeStyle = .short
string = formatter.string(from: date)







formatter.dateStyle = .short
formatter.timeStyle = .medium
string = formatter.string(from: date)

formatter.dateStyle = .medium
formatter.timeStyle = .medium
string = formatter.string(from: date)

formatter.dateStyle = .long
formatter.timeStyle = .medium
string = formatter.string(from: date)



formatter.dateStyle = .short
formatter.timeStyle = .long
string = formatter.string(from: date)

formatter.dateStyle = .medium
formatter.timeStyle = .long
string = formatter.string(from: date)

formatter.dateStyle = .long
formatter.timeStyle = .long
string = formatter.string(from: date)*/
