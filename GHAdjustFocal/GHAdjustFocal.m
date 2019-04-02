//
//  GHAdjustFocal.m
//  GHGestureDemo
//
//  Created by zhaozhiwei on 2019/4/2.
//  Copyright © 2019年 GHome. All rights reserved.
//

#import "GHAdjustFocal.h"
#import "UIView+GHAdd.h"

#define ColorRGBA(r, g, b, a) ([UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)])

@interface GHAdjustFocal()

/**
 背景
 */
@property (nonatomic , strong) UIView *backGround;

/**
 圆头
 */
@property (nonatomic , strong) UIView *circle;

/**
 滑杆
 */
@property (nonatomic , strong) UIView *slider;

/**
 "+"
 */
@property (nonatomic , strong) UILabel *add;

/**
 "-"
 */
@property (nonatomic , strong) UILabel *sub;

@end

@implementation GHAdjustFocal

- (void)setCircleY:(CGFloat)circleY {
    _circleY = circleY;
    self.circle.gh_top = circleY;
}

- (instancetype)init {
    if (self == [super init]) {
        [self setupUI];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self == [super initWithFrame:frame]) {
        [self setupUI];
    }
    return self;
}

#pragma mark - 创建UI
- (void)setupUI {

    self.backGround.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);

    CGFloat sliderY = 20;
    self.slider.frame = CGRectMake(10, sliderY, 10, self.bounds.size.height - sliderY * 2);
    
    self.circle.frame = CGRectMake(5,20, 20, 20);

    self.add.frame = CGRectMake(5,5, 20, 10);

    self.sub.frame = CGRectMake(5,self.slider.gh_height + self.slider.gh_top + 5, 20, 5);

    [self addSubview:self.backGround];
    [self.backGround addSubview:self.slider];
    [self.backGround addSubview:self.circle];
    [self.backGround addSubview:self.add];
    [self.backGround addSubview:self.sub];
}

#pragma mark - get
- (UILabel *)sub {
    if (_sub == nil) {
        _sub = [[UILabel alloc]init];
        _sub.text = @"-";
        _sub.textColor = [UIColor whiteColor];
        _sub.textAlignment = NSTextAlignmentCenter;
    }
    return _sub;
}

- (UILabel *)add {
    if (_add == nil) {
        _add = [[UILabel alloc]init];
        _add.text = @"+";
        _add.textColor = [UIColor whiteColor];
        _add.textAlignment = NSTextAlignmentCenter;
    }
    return _add;
}

- (UIView *)circle {
    if (_circle == nil) {
        _circle = [[UIView alloc]init];
        _circle.backgroundColor = [UIColor yellowColor];
        _circle.layer.masksToBounds = YES;
        _circle.layer.cornerRadius = 10;
    }
    return _circle;
}

- (UIView *)slider {
    if (_slider == nil) {
        _slider = [[UIView alloc]init];
        _slider.backgroundColor = [UIColor lightGrayColor];
        _slider.layer.masksToBounds = YES;
        _slider.layer.cornerRadius = 5;
    }
    return _slider;
}

- (UIView *)backGround {
    if (_backGround == nil) {
        _backGround = [[UIView alloc]init];
        _backGround.backgroundColor = ColorRGBA(0, 0, 0, 102.0/255);
        _backGround.layer.masksToBounds = YES;
        _backGround.layer.cornerRadius = 15;
        _backGround.alpha = 0.3;
    }
    return _backGround;
}


- (CGFloat)getCircleY {
    return self.circle.gh_top;
}

- (CGFloat)getSliderHeight {
    return self.slider.gh_height;
}
@end
