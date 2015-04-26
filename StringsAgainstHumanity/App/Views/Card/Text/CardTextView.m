//
//  CardTextView.m
//  StringsAgainstHumanity
//
//  Created by Kyle Whittington on 4/20/15.
//  Copyright (c) 2015 Kyle Whittington. All rights reserved.
//

#import "CardTextView.h"
#import "CardView.h"

@implementation CardTextView
+ (instancetype)withFrame:(CGRect)frame andCardView:(CardView *)cardView {
  return [[self alloc] initWithFrame:frame andCardView:cardView];
}

+ (instancetype)withMainScreenFrameAndCardView:(CardView *)cardView {
  return [[self alloc] initWithMainScreenFrameAndCardView:cardView];
}

- (instancetype)initWithFrame:(CGRect)frame textContainer:(NSTextContainer *)textContainer {
  return [self initWithFrame:frame andCardView:[CardView withFrame:frame]];
}

- (instancetype)initWithFrame:(CGRect)frame andCardView:(CardView *)cardView {
  self = [super initWithFrame:frame textContainer:nil];

  if (self) {
    self.backgroundColor = [UIColor clearColor];
    self.font = [UIFont fontWithName:@"Helvetica-Bold" size:28];
    self.textAlignment = NSTextAlignmentLeft;
    [cardView addSubview:self];
  }

  return self;
}

- (instancetype)initWithMainScreenFrameAndCardView:(CardView *)cardView {
  return [self initWithFrame:UIScreen.mainScreen.bounds andCardView:cardView];
}

- (CardView *)cardView {
  if ([self.superview isKindOfClass:[CardView class]]) {
    return (CardView *)self.superview;
  }

  return nil;
}
@end