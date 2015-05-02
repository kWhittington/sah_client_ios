//
//  BlackCardViewController.h
//  StringsAgainstHumanity
//
//  Created by Kyle Whittington on 3/12/15.
//  Copyright (c) 2015 Kyle Whittington. All rights reserved.
//

@import UIKit;

@class BlackCard;
@class BlackCardView;

@interface BlackCardViewController : UIViewController
+ (instancetype)withBlackCard:(BlackCard *)blackCard;

- (instancetype)initWithBlackCard:(BlackCard *)blackCard;

- (BlackCardView *)blackCardView;
@end