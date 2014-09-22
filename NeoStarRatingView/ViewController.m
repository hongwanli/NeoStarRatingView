//
//  ViewController.m
//  NeoStarRatingView
//
//  Created by neolix on 14-8-29.
//  Copyright (c) 2014年 Neolix. All rights reserved.
//

#import "ViewController.h"
#import "NeoStarRatingView.h"
@interface ViewController ()<NeoStarRatingViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor greenColor];
    NeoStarRatingView * starView = [[NeoStarRatingView alloc] initWithFrame:CGRectMake(30, 69, 240, 46) numberOfStar:5];
    starView.delegate = self;
    [self.view addSubview:starView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - NeoStarRatingViewDelegate

- (void)starRatingView:(NeoStarRatingView *)view score:(float)score{
    NSLog(@"score====%f",score);
}

@end
