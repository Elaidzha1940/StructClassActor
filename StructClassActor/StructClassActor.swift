//  /*
//
//  Project: StructClassActor
//  File: StructClassActor.swift
//  Created by: Elaidzha Shchukin
//  Date: 04.01.2024
//
//  */

import SwiftUI

struct StructClassActor: View {
    var body: some View {
        
        VStack {
         Text("Hoooo")
        }
        .onAppear {
            runTest()
        }
    }
}

#Preview {
    StructClassActor()
}

struct MyStruct {
    var title: String
}

class MyClass {
    var title: String
    
    init(title: String) {
        self.title = title
    }
}

extension StructClassActor {
    
    private func runTest() {
        print("Test started")
        structTest1()
        printDivider()
        classTest1()
    }
    
    private func printDivider() {
        print("""

        - - - - - - - - - - - -
        
        """)
    }
    
    private func structTest1() {
        
        print("structTest1")
        
        let objectA = MyStruct(title: "Starting title.")
        print("objectA", objectA.title)
        
        print("Pass the Value of objectA to objectB")
        var objectB = objectA
        print("objectB", objectB.title)
        
        objectB.title = "Second title."
        print("objectB title changed.")
        
        print("objectA", objectA.title)
        print("objectB", objectB.title)
    }
    
    private func classTest1() {
        
        print("classTest1")

        let objectA = MyClass(title: "Starting title.")
        print("objectA", objectA.title)
        
        print("Pass the Reference of objectA to objectB")
        let objectB = objectA
        print("objectB", objectB.title)

        objectB.title = "Second title."
        print("objectB title changed.")
        
        print("objectA", objectA.title)
        print("objectB", objectB.title)
    }
}
