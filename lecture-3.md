# Lecture 3 

## Range

for i in stride(from: 0.5, through: 15.25, by: 0.3){}

## Protect internal implement

* Internal - default
* private - only callable 
* private(set)
* fileprivate

* public
* open

## enum

optional is just an enum

```
enum Optional<T> {
    case none
    case some(<T>)
}
```

optional chain

## memory management

* strong - normal
* weak - a weak pointer will never keep on object in the heap