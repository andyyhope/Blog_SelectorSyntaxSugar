![](https://cdn-images-1.medium.com/max/2000/1*L100yxVCNnyvn7Q5m8CCiQ.jpeg)

# Swift: Selector syntax sugar
## Objective-C developers be jelly

### Medium post
[Swift: Selector syntax sugar](https://medium.com/p/81c8a8b10df3/)

### tl;dr
Turn this:

````
let button = UIButton(type: .System)
button.addTarget(self, action: #selector(ViewController.buttonTapped(_:)), forControlEvents: .TouchUpInside)
````

Into this:

````
let button = UIButton(type: .System)
button.addTarget(self, action: .buttonTapped, forControlEvents: .TouchUpInside)
````
