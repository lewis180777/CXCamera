//
//  CXCameraZoomSlider.m
//  CXCamera
//
//  Created by c_xie on 16/4/2.
//  Copyright © 2016年 CX. All rights reserved.
//

#import "CXCameraZoomSlider.h"
#import "UIView+CXExtension.h"


@interface CXCameraZoomSlider ()

@end

@implementation CXCameraZoomSlider

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}



- (void)layoutSubviews
{
    [super layoutSubviews];
    
    _subtractButton.origin = CGPointMake(0, 0);
    _subtractButton.size = CGSizeMake(self.height, self.height);
    
    _plusButton.size = CGSizeMake(self.height, self.height);
    _plusButton.origin = CGPointMake(self.width - _plusButton.width, 0);
    
    _slider.center = CGPointMake(self.width * 0.5, self.height * 0.5);
    _slider.width = self.width - 2 * _subtractButton.width;
}


- (void)setup
{
    UIButton *plusButton = [[UIButton alloc] init];
    [plusButton setImage:[UIImage imageNamed:@"icon_camera_plus"] forState:UIControlStateNormal];
    [self addSubview:plusButton];
    _plusButton = plusButton;
    
    UIButton *substractButton = [[UIButton alloc] init];
    [substractButton setImage:[UIImage imageNamed:@"icon_camera_subtract"] forState:UIControlStateNormal];
    [self addSubview:substractButton];
    _subtractButton = substractButton;
    
    UISlider *slider = [[UISlider alloc] init];
    slider.value = 0;
    slider.minimumValue = 0.f;
    slider.maximumValue = 1.0f;
    [slider setThumbImage:[UIImage imageNamed:@"slider_handle"] forState:UIControlStateNormal];
    [self addSubview:slider];
    _slider = slider;

}





















@end
