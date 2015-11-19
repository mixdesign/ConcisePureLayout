# ConcisePureLayout

**ConcisePureLayout** was created to facilitate the method invocations of [PureLayout library](https://github.com/PureLayout/PureLayout "PureLayout github page"). _(Objective-C only, Swift comming next)._

##Installation
```objective-c
pod 'ConcisePureLayout'
```

>**Dependency**
>
**ConcisePureLayout** is based on third party [PureLayout library](https://github.com/PureLayout/PureLayout "PureLayout github page"). So, PureLayout  will be installed along with ConcisePureLayout.

##Example

**Sample Code**
```objective-c
UIView * headerView = [UIView newAutoLayoutView];
[headerView setBackgroundColor:[UIColor blackColor]];
[self.view addSubview:headerView];

UIView * footerView = [UIView newAutoLayoutView];
[footerView setBackgroundColor:[UIColor redColor]];
[self.view addSubview:footerView];

// PureLayout implementation
[headerView autoSetDimension:ALDimensionHeight toSize:200];
[headerView autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:10];
[headerView autoPinEdgeToSuperviewEdge:ALEdgeLeft withInset:20];
[headerView autoPinEdgeToSuperviewEdge:ALEdgeRight withInset:20];

[footerView autoSetDimension:ALDimensionWidth toSize:250];
[footerView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:headerView withOffset:5];
[footerView autoAlignAxisToSuperviewAxis:ALAxisVertical];
[footerView autoPinEdgeToSuperviewEdge:ALEdgeBottom];

// ConcisePureLayout makes it more concise
[headerView aa_setHeight:200];
[headerView aa_superviewTop:10];
[headerView aa_superviewFitWidthWithInset:20];

[footerView aa_setWidth:250];
[footerView aa_pinUnderView:headerView offset:5];
[footerView aa_centerHorizontal];
[footerView aa_superviewBottom:0];
```

**Example project**<br>
This screenshot demonstrates how you can create and place complex UI elements with ConcisePureLayout:

![ConcisePureLayoutScreenshot1.png](https://github.com/mixdesign/ConcisePureLayout/blob/master/ConcisePureLayoutScreenshot1.png)

#Contribution
ConcisePureLayout still very young. Not all methods of PureLayout have been simplified with it. Simplification of the remaining methods require time and rethinking how to do it better. Let's do it together!
It would be great if together we get something as simple as powerful.</br>
Please, fork & PR!
</br></br>
Almas Adilbek</br>
Regards!
