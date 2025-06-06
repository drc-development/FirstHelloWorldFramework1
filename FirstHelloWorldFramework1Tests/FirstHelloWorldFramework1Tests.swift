//
//  FirstHelloWorldFramework1Tests.swift
//  FirstHelloWorldFramework1Tests
//
//  Created by Daryl Cox on 4/5/25.
//

import Testing
@testable
import FirstHelloWorldFramework1

struct FirstHelloWorldFramework1Tests
{

    @Test("Test FirstHelloWorldFramework1 'Greeting' Functionality")
    func testGreeting()async throws
    {
        
        let sCurrMethod:String = #function
        let sCurrMethodDisp    = "FirstHelloWorldFramework1Tests.'"+sCurrMethod+"':"
        
        print("\(sCurrMethodDisp) Invoked...")
        
        // Write your test here and use APIs like `#expect(...)` to check expected conditions...
        
        let firstHelloWorldFramework1:FirstHelloWorldFramework1 = FirstHelloWorldFramework1()
        let sfirstHelloWorldFramework1Greeting:String           = firstHelloWorldFramework1.sayHello()
        let sfirstHelloWorldFramework2Greeting:String           = firstHelloWorldFramework1.sayHelloTo(to:"Everyone")
        
        print("\(sCurrMethodDisp) Intermediate 'sfirstHelloWorldFramework1Greeting' is [\(sfirstHelloWorldFramework1Greeting)]...")
        print("\(sCurrMethodDisp) Intermediate 'sfirstHelloWorldFramework2Greeting' is [\(sfirstHelloWorldFramework2Greeting)]...")
        
        #expect(sfirstHelloWorldFramework1Greeting == "Hello, World!")
        #expect(sfirstHelloWorldFramework2Greeting == "Hello, Everyone!")
    //  #expect(sfirstHelloWorldFramework2Greeting == "Hello, World}, Everyone!")
        
        print("\(sCurrMethodDisp) Exiting...")
        
        return
        
    }   // End of @Test func testGreeting()async throws.

}   // End of struct FirstHelloWorldFramework1Tests.

