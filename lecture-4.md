# Lecture 4

## struct vs class

* struct is value type
* class is reference type

## protocol

* a list of methods and vars not implemented
* claim to implement
* in swift implement all, in objc optioanal @objc

* protocol 有继承
* protocol 可以设置 init 让下面的class，stuct实现
* 如果 class 实现init protocal，必须加 required

## delegation

protocol 最常见的就是用于 delegation

1. a View declares a delegation protocol
2. The View's API has a weak delegation property whose type is that delegation protocol
3. The View uses the delegate property to get/do things it can't own or control on its own
4. The Controller declares that it implements the protocol
5. The Controller sets delegate of the View to itself using the property in #2 above
6. The Controller implements the protocol (probably has a lot of optional methods)


## Swift 支持 OOP and Functional Programming

## NSAttributedString

a string pairs a String and a Dictionary of attributes for each Character 


## Reference Type

Put in heap, Only Two

* class
* closure