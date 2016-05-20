//
//  ViewController.m
//  HWCAnimatedImagesView
//
//  Created by 黄文昌 on 16/5/19.
//  Copyright © 2016年 黄文昌. All rights reserved.
//

#import "ViewController.h"
#import "HWCAnimatedImagesView.h"
@interface ViewController ()<HWCAnimatedImagesViewDelegate>

@property (nonatomic,strong)HWCAnimatedImagesView *animatedImagesView;

@property (nonatomic,strong)NSArray *array;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.array = @[@"1.png",@"2.png",@"3.png"];
    // test commit
    // Do any additional setup after loading the view, typically from a nib.
    self.animatedImagesView = [[HWCAnimatedImagesView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    
    [self.view addSubview:self.animatedImagesView];
    
    self.animatedImagesView.delegate = self;
}

- (NSUInteger)animatedImagesNumberOfImages:(HWCAnimatedImagesView*)animatedImagesView
{
    return self.array.count;
}

- (UIImage*)animatedImagesView:(HWCAnimatedImagesView*)animatedImagesView imageAtIndex:(NSUInteger)index
{
    return [UIImage imageNamed:self.array[index]];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.animatedImagesView startAnimating];
    
}
- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    [self.animatedImagesView stopAnimating];
}
@end
