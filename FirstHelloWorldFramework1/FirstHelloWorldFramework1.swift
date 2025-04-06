//
//  FirstHelloWorldFramework1.swift
//  FirstHelloWorldFramework1
//
//  Created by Daryl Cox on 4/5/25.
//

import Foundation

public class FirstHelloWorldFramework1
{
    
//  public init()
//  {
//      
//  }   // End of public init().
//  
//  public func sayHello(to name:String)->String
//  {
//      
//      return "Hello, \(name)!"
//      
//  }   // End of public func sayHello(to name:String)->String.

    private let greeting:String
    
    public init(greeting:String = "Hello, World!") 
    {

        self.greeting = greeting

    }   // End of public init(greeting:String).
    
    public func sayHello()->String 
    {

        return greeting

    }   // End of public func sayHello()->String.
    
    public func sayHelloTo(to name:String)->String 
    {

        return "Hello, \(name)!"
    //  return "\(greeting.dropLast(1))}, \(name)!"

    }   // End of public func sayHelloTo(name:String)->String.
    
    public func sayHelloFancily()async->String 
    {

        // Simulate some async processing...

        try? await Task.sleep(for:.seconds(1))

        return "✨ \(greeting) ✨"

    }   // End of public func sayHelloFancily()async->String.

}   // End of public class FirstHelloWorldFramework1.

// Add extensions to show Swift 6 features:

//  extension FirstHelloWorldFramework1 
//  {
//
//      // Using the newer Swift 6 concurrency patterns...
//
//      public func processGreetingsInParallel(names:[String])async->[String] 
//      {
//
//          await withTaskGroup(of:String.self) 
//          { group in
//
//              for name in names 
//              {
//
//                  group.addTask 
//                  {
//
//                      // Simulate some work...
//
//                      try? await Task.sleep(for:.seconds(0.5))
//
//                      return self.sayHelloTo(to:name)
//
//                  }
//
//              }
//              
//              var results = [String]()
//
//              for await result in group 
//              {
//
//                  results.append(result)
//
//              }
//
//              return results
//
//          }
//
//      }   // End of public func processGreetingsInParallel(names:[String])async->[String].
//
//  }   // End of extension FirstHelloWorldFramework1.

