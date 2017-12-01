# CS193P

CS193P Project codes

## 概述

其实看 [MichelDeiman](https://www.youtube.com/user/MichelDeiman) 的视频有好几季了，可以说从他的Objective-C 视频，看到了 Swift 都已经这个版本了，这次真的不想再白看一遍了，端正态度，该记的笔记要记，该写的code也要写，希望这次学有所成吧。另外这次的项目也终于更新了，终于开篇不是计算器了

## 语法

### lazy

非常酷的东西, 因为比如说 controller 里面的所有必须初始化,但是有些是有依赖的,lazy的话 就可以保证其他的初始化后 就能赋值

lazy 不能 {didSet}

### static method

相当于 global method, 只是有个 type

### Struct vs Class

在 swift 中这两个基本上是一样的，但是还是有两个区别

* Struct 不能继承
* Struct 是 value types， class 是 reference types
* Struct 没有默认 init() 需要手动添加, class 有默认 init

### ??

```swift
        if let chosenEmoji = emoji[card.identifier] {
            return chosenEmoji
        } else {
            return "?"
        }

        // 简写

        return emoji[card.identifier] ?? "?"
```

## 项目

### Concentration

* 右键点击StoryBoard 可以查看所有的属性
* 如果是StoryBoard关联的字段要改名，command+点击 然后选 rename,这样关联才不会断
* 任何的 Instance value 必须初始化 （！可以不用）
* Instance value 可以设置 didSet 方法，用于这个value change 自动更新页面
* 如果一个函数的返回值是 Int? (optional), 可以用 value！来解包，但是这个nil!是会crash的，所以安全的解包方法 是  if let xx = funcreturnInt? {} 这样就比较安全
* delegate 是 view 回传 controller , datasource 是特殊的 delegate
