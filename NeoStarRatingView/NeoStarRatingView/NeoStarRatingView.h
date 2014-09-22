//
//  NeoStarRatingView.h
//  NeoStarRatingView
//
//  Created by neolix on 14-8-29.
//  Copyright (c) 2014年 Neolix. All rights reserved.
//

#import <UIKit/UIKit.h>
@class NeoStarRatingView;
@protocol NeoStarRatingViewDelegate <NSObject>

@optional
- (void)starRatingView:(NeoStarRatingView *)view score:(float)score;
@end

@interface NeoStarRatingView : UIView
@property (nonatomic, readonly) int numberOfStar;

@property (nonatomic, weak) id <NeoStarRatingViewDelegate> delegate;

- (id)initWithFrame:(CGRect)frame numberOfStar:(int)number;

- (void)setScore:(float)score withAnimation:(bool)isAnimate;

- (void)setScore:(float)score withAnimation:(BOOL)isAnimate completion:(void(^)(BOOL finished))completion;

#define kGray_Star @"home-list-star"
#define kHL_Star @"home-list-star-hl"
#define kGap_Star 5

@end
