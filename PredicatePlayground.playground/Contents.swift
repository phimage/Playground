//: Playground - noun: a place where people can play

import UIKit
public func && (left: NSPredicate, right: NSPredicate) -> NSPredicate {
    return [left] && [right]
}

public func && (left : NSPredicate, right: [NSPredicate]) -> NSPredicate {
    return [left] && right
}

public func && (left: [NSPredicate], right: [NSPredicate]) -> NSPredicate {
    let predicates: [NSPredicate] = left + right
    return NSCompoundPredicate(andPredicateWithSubpredicates: predicates)
}
public func || (left: NSPredicate, right: NSPredicate) -> NSPredicate {
    return [left] || [right]
}

public func || (left : NSPredicate, right : [NSPredicate]) -> NSPredicate {
    return [left] || right
}

public func || (left: [NSPredicate], right: [NSPredicate])-> NSPredicate {
    let predicates: [NSPredicate] = left + right
    return NSCompoundPredicate(orPredicateWithSubpredicates: predicates)
}
prefix public func ! (left: NSPredicate) -> NSPredicate {
    return NSCompoundPredicate(type: .not, subpredicates: [left])
}

public func == (left: NSExpression, right: NSExpression) -> NSPredicate {
    return NSComparisonPredicate(leftExpression: left, rightExpression: right, modifier: .direct, type: .equalTo, options: [])
}

public func != (left: NSExpression, right: NSExpression) -> NSPredicate {
    return NSComparisonPredicate(leftExpression: left, rightExpression: right, modifier: .direct, type: .notEqualTo, options:[])
}

let not = !NSPredicate(value: true)
print(not.predicateFormat)

let e = NSCompoundPredicate(type: .not, subpredicates: [NSPredicate(value: true), NSPredicate(value: true), NSPredicate(value: true)])
print(e.predicateFormat)
let q = NSCompoundPredicate(type: .and, subpredicates: [NSPredicate(value: true)])
print(q.predicateFormat)