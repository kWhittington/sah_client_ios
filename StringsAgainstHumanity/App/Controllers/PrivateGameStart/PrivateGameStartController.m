//
//  PrivateGameStartController.m
//  StringsAgainstHumanity
//
//  Created by Kyle Whittington on 3/2/15.
//  Copyright (c) 2015 Kyle Whittington. All rights reserved.
//

#import "PrivateGameStartController.h"
#import "Hand+DataSource.h"
#import "Card.h"

@interface PrivateGameStartController ()
@property(strong) Hand *hand;

@end

@implementation PrivateGameStartController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  [self.hand removeAllCards];
  [self.hand addCard:[Card withString:@"Create Game"]];
  [self.hand addCard:[Card withString:@"Join Game"]];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before
navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
