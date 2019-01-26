# DLVolumeButtons

[![CI Status](https://img.shields.io/travis/daiquanxiang/DLVolumeButtons.svg?style=flat)](https://travis-ci.org/daiquanxiang/DLVolumeButtons)
[![Version](https://img.shields.io/cocoapods/v/DLVolumeButtons.svg?style=flat)](https://cocoapods.org/pods/DLVolumeButtons)
[![License](https://img.shields.io/cocoapods/l/DLVolumeButtons.svg?style=flat)](https://cocoapods.org/pods/DLVolumeButtons)
[![Platform](https://img.shields.io/cocoapods/p/DLVolumeButtons.svg?style=flat)](https://cocoapods.org/pods/DLVolumeButtons)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

<br /> 
<img src="https://github.com/daiquanxiang/Success-Road/blob/master/001.png?raw=true"  width="313" height="616"  alt="Demo效果" align=center />
## Requirements

## Installation

DLVolumeButtons is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'DLVolumeButtons'
```

## 使用方法
需要强持有创建的对象

```objective-c
@property (nonatomic, strong) DLVolumeButtons *volumeButtons;
```

创建方法

```objective-c
- (void)setupVolumeButtons
{
    if (!self.volumeButtons) {
        
        __weak typeof(self) weakSelf = self;
        self.volumeButtons = [DLVolumeButtons volumeButtonHandlerWithUpBlock:^{
            NSLog(@"点击了 上音量键");
            [weakSelf showAlertWithText:@"点击了 上音量键"];
        } downBlock:^{
            NSLog(@"点击了 下音量键");
            [weakSelf showAlertWithText:@"点击了 下音量键"];
        }];
        
        if ([self.volumeButtons respondsToSelector:@selector(changeVolumeSuperView:)]) {
            [self.volumeButtons changeVolumeSuperView:self.view];
        }
    }
}
```

灵活开关 是否替换系统音量view

```objective-c
- (IBAction)valueChanged:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex) {
        // 开
        [self.volumeButtons startHandler:YES];
    } else {
        // 关
        [self.volumeButtons stopHandler];
    }
}
```

##注意

建议最好将当前可视窗口传给 DLVolumeButton，代码里面创建了一个 MPVolumeView 音量view，默认放在最前面的 window里，当你替换了音量键事件后，没有将新创建 音量view 放在当前 self.view上，有可能替换了事件但是还是会出现系统改音量的窗口。

```objective-c
[self.volumeButtons changeVolumeSuperView:self.view];
```

## Author

daiquanxiang, 919775874@qq.com

## License

DLVolumeButtons is available under the MIT license. See the LICENSE file for more info.
