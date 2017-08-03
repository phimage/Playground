//: Playground - noun: play

import UIKit

let num1 = NSNumber(value: 123456789.823456)

var number = NumberFormatter.localizedString(from: num1, number: .none)

number = NumberFormatter.localizedString(from: num1, number: .decimal)

number = NumberFormatter.localizedString(from: num1, number: .currency)

number = NumberFormatter.localizedString(from: num1, number: .percent)

number = NumberFormatter.localizedString(from: num1, number: .scientific)

number = NumberFormatter.localizedString(from: num1, number: .spellOut)

number = NumberFormatter.localizedString(from: num1, number: .ordinal)

number = NumberFormatter.localizedString(from: num1, number: .currencyISOCode)

number = NumberFormatter.localizedString(from: num1, number: .currencyPlural)

number = NumberFormatter.localizedString(from: num1, number: .currencyAccounting)

let formatter = NumberFormatter()
formatter.numberStyle = .currency
number = formatter.string(from: num1)!
