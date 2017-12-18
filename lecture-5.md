# Lecture 5

## Exception

```swift
func save() throws

do {
    try context.save()
} catch let error {
    throw error //this would rethrow error
}

try! context.save() // error not throw

let x = try? errorPerhapsHappenFunctionReurunInt() // will be Int?

```


## Any

```swift
let attibutes: [NSAttibuteStringKey: Any] = ...


func prepare(for segue: UIStoryboardSegue, sender: Any?)

let unknown: Any = ...

if let foo = unknown as? MyType {

}

if let cvc = vc as? ConcentrationViewController {
    cvc.flipCard(...)
}
```



## Casting as?

* Any as?
* 父类 as？ 子类


## CG

* (0,0) origin is up-left
* Units are points not pixels
* bounds where drawing  CGRect
* UIView 是  superclass 不是在UIView 上面draw
* Use frame and/or center to position a UIView


* CGFloat
* CGPoint - CGPoint(x,y)
* CGSize - CGSize(width, height)
* CGRect - CGRect(origin, size)

 
```swift
// let newView = UIView(frame: myViewFrame)
let newView = UIView() // frame will be CGRect.zero

let labelRect = CGRect(x: 20, y:20, width: 100, height:50)
let label = UILabel(frame: labelRect)
label.text = "Hello"
view.addSubview(label)
```

## draw 

only one way to draw

```swift
override func draw (_ rect: CGRect)

// Never call this method above

setNeedsDisplay()
setNeedsDisplay(_ rect: CGRect)
```

### define a path

```swift
let path = UIBezierPath()

path.move(to: CGPoint(80, 50))
path.addLine(to: CGPoint(140, 150))
path.addLine(to: CGPoint(10, 150))

path.close()

UIColor.green.setFill()
UIColor.red.setStroke()
path.linewidth = 3.0
path.fill()
path.stroke()
```


### draw text

通常情况下 用 Label
少数情况下:

```swift
let text = NSAttributedString(string: "text")
text.draw(at: aCGPoint)
let textSize:CGSize = text.size
```

### Font

```swift
let font = UIFont(name: "xxx", size: 36.0)

// 可变的

let metrics = UIFontMetrics(forTextStyle: .body)
let fontToUse = metrics.scaledFont(for: font)
```

### ImageView


```swift
let image: UIImage? = UIImage(named: "foo")
```

put image in Assets.xca...