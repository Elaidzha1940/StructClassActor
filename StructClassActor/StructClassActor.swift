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

extension StructClassActor {
    
    private func runTest() {
        print("Test started")
        //        structTest1()
        //        printDivider()
        //        classTest1()
        structTest2()
        printDivider()
        classTest2()
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

struct MyStruct {
    var title: String
}

// Immutable struct - Data inside this struct will not change
struct CustomStruct {
    let title: String
    
    func updateTitle(newTitle: String) -> CustomStruct {
        CustomStruct(title: newTitle)
    }
}

struct MutatingStruct {
    private(set) var title: String
    
    init(title: String) {
        self.title = title
    }
    
    mutating func updateTitle(newTitle: String) {
        title = newTitle
    }
}

extension StructClassActor {
    
    private func structTest2() {
        print("structTest2")
        
        var struct1 = MyStruct(title: "Title1")
        print("Struct1: ", struct1.title)
        struct1.title = "Title2"
        print("Struct1: ", struct1.title)
        
        var struct2 = CustomStruct(title: "Title1")
        print("Struct2: ", struct2.title)
        struct2 = CustomStruct(title: "Title2")
        print("Struct2: ", struct2.title)
        
        var struct3 = CustomStruct(title: "Title1")
        print("Struct3: ", struct3.title)
        struct3 = struct3.updateTitle(newTitle: "Title2")
        print("Struct3: ", struct3.title)
        
        var struct4 = MutatingStruct(title: "Title1")
        print("Struct4: ", struct4.title)
        struct4.updateTitle(newTitle: "Title2")
        print("Struct4: ", struct4.title)
        
    }
}

class MyClass {
    var title: String
    
    init(title: String) {
        self.title = title
    }
    
    func updateTitle(newTitle: String) {
        title = newTitle
    }
}

extension StructClassActor {
    
    private func classTest2() {
        print("classTest2")
        
        let class1 = MyClass(title: "Title1")
        print("Class1: ", class1.title)
        class1.title = "Title2"
        print("Class1: ", class1.title)
        
        let class2 = MyClass(title: "Title1")
        print("Class2: ", class2.title)
        class2.updateTitle(newTitle: "Title2")
        print("Class2: ", class1.title)
    }
}
