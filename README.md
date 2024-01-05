Swift: Struct vs Class vs Actor, Value vs Reference Types, Stack vs Heap...
===========================================================================

Topics include:
1. Structs vs Classes vs Actors
2. Value vs Reference Types
3. Stack vs Heap memory
4. Automatic Reference Counting (ARC) in Swift
5. Weak vs Strong References

Structs vs Classes:
-------------------

UPDATE (27 Mar 2018):

As of Swift 4.0, Xcode 9.2, running Release build on iPhone 6S, iOS 11.2.6, Swift Compiler setting is -O -whole-module-optimization:

class version took 2.06 seconds
struct version took 4.17e-08 seconds (50,000,000 times faster)

(I no longer average multiple runs, as variances are very small, under 5%)

Note: the difference is a lot less dramatic without whole module optimization. I'd be glad if someone can point out what the flag actually does.

Reference vs Value Types:
-------------------------
![til](https://miro.medium.com/v2/resize:fit:1500/format:webp/1*oiSNPErZHJ40FcWNTxAM0A.gif)

Link:
``````````ruby
https://abhimuralidharan.medium.com/difference-between-value-type-and-a-reference-type-in-ios-swift-18cb5145ad7a
``````````

Usually (in most programming languages), objects are blocks of data that are stored on heap, and then a reference (normally a pointer) to these blocks, contains a name is using to access these blocks of data. This mechanism allows sharing objects in the heap by copying the value of their references (pointers). This is not the case of basic data types such as Integers, and that is because the memory needed to create a reference is almost the same as the object (in this case integer value). Thus, they will be passed as values not as a reference in the case of large objects.

Below image shows the fundamental difference between value type and reference type:
-----------------------------------------------------------------------------------

<img src="https://github.com/Elaidzha1940/StructClassActor/assets/64445918/0214bdbe-1a81-4b4c-bb1e-caab6c604d6b" width="450" height="300">

Link:
``````````ruby
https://medium.com/@vinayakkini/swift-basics-struct-vs-class-31b44ade28ae
``````````

Stack vs Heap: 

<img width="491" alt="Stack vs Heap" src="https://github.com/Elaidzha1940/StructClassActor/assets/64445918/b1ae405f-e518-4170-9c2f-4e443bc703e6">

