Swift: Struct vs Class vs Actor, Value vs Reference Types, Stack vs Heap...
===========================================================================

Topics include:
1. Structs vs Classes vs Actors
2. Value vs Reference Types
3. Stack vs Heap memory
4. Automatic Reference Counting (ARC) in Swift
5. Weak vs Strong References

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
