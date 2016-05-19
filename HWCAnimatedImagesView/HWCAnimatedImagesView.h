//
//  HWCAnimatedImagesView.h
//  HWCAnimatedImagesView
//
//  Created by 黄文昌 on 16/5/19.
//  Copyright © 2016年 黄文昌. All rights reserved.
//

#import <UIKit/UIKit.h>

//动画时长
#define kJSAnimatedImagesViewDefaultTimePerImage 5.0f

@protocol HWCAnimatedImagesViewDelegate;

@interface HWCAnimatedImagesView : UIView

@property (nonatomic, assign) id<HWCAnimatedImagesViewDelegate> delegate;

@property (nonatomic, assign) NSTimeInterval timePerImage;
//开始动画
- (void)startAnimating;
//结束动画
- (void)stopAnimating;

- (void)reloadData;

@end

@protocol HWCAnimatedImagesViewDelegate
- (NSUInteger)animatedImagesNumberOfImages:(HWCAnimatedImagesView *)animatedImagesView;
- (UIImage *)animatedImagesView:(HWCAnimatedImagesView *)animatedImagesView imageAtIndex:(NSUInteger)index;
@end

