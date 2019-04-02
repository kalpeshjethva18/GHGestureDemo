![](https://img.shields.io/badge/platform-iOS-red.svg) ![](https://img.shields.io/badge/language-Objective--C-orange.svg) 
![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 
![](https://img.shields.io/appveyor/ci/gruntjs/grunt.svg)


## GHGestureDemo

捏合手势和拖拽手势并存,实现调整焦距

### 拖拽手势 `UIPanGestureRecognizer `

先看api提供集成属性和方法

>`minimumNumberOfTouches` 设置最少需要几个手指拖动 
>`maximumNumberOfTouches`  设置最多支持几个手指拖动 
> `(CGPoint)translationInView:(nullable UIView *)view;` 获取当前位置  
> `(void)setTranslation:(CGPoint)translation inView:(nullable UIView *)view;`设置当前位置 
> `(void)setTranslation:(CGPoint)translation inView:(nullable UIView *)view;` 设置拖拽速度


### 捏合手势 `UIPinchGestureRecognizer `

>`scale` 缩放比例

>`velocity` 拖拽速度 

两种手势都可以在初始化的时候添加监听事件

```
UIPinchGestureRecognizer *pinchGest = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(pinchView:)];

UIPanGestureRecognizer *panGest = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panView:)];

```
分别实现监听方法

```
- (void)pinchView:(UIPinchGestureRecognizer *)pinchGest{
}

- (void)panView:(UIPanGestureRecognizer *)panGest{
}
```

