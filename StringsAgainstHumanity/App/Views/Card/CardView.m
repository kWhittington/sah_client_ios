//
//  CardView.m
//  StringsAgainstHumanity
//
//  Created by Kyle Whittington on 4/20/15.
//  Copyright (c) 2015 Kyle Whittington. All rights reserved.
//

#import "CardView.h"
#import "Card.h"

@interface CardView ()
@property(nonatomic) Card *card;
@end

@implementation CardView
- (instancetype)initWithFrame:(CGRect)frame {
  return [self initWithFrame:frame andCard:[Card withString:@"Made by CardView - initWithFrame"]];
}

- (instancetype)initWithFrame:(CGRect)frame andCard:(Card *)card {
  self = [super initWithFrame:frame];

  if (self) {
    [self initCard:card];
  }

  return self;
}

- (instancetype)initWithMainScreenFrameAndCard:(Card *)card {
  return [self initWithFrame:[[UIScreen mainScreen] bounds] andCard:card];
}

- (void)initCard:(Card *)card {
  self.card = card;
}
@end
