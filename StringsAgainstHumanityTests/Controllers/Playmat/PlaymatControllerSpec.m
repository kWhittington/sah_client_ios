//
//  PlaymatControllerSpec.m
//  StringsAgainstHumanity
//
//  Created by Kyle Whittington on 3/19/15.
//  Copyright (c) 2015 Kyle Whittington. All rights reserved.
//

#import "TestLibraries.pch"
#import "PlaymatController.h"
#import "BlackCardController.h"
#import "HandController.h"

SPEC_BEGIN(PlaymatControllerSpec)
describe(@"PlaymatController", ^{
  let(playmatController, ^PlaymatController *{
    return FGBuildTrait(PlaymatController.class, @"empty");
    //    return
    //      [Constants.Storyboard
    //      instantiateViewControllerWithIdentifier:PlaymatController.StoryboardID];
  });

  let(blackCardController, ^BlackCardController *{
    return playmatController.blackCardController;
  });

  let(handController, ^HandController *{
    return playmatController.handController;
  });

  it(@"subclasses UIViewController", ^{
    [[playmatController should] beKindOfClass:UIViewController.class];
  });

  describe(@".blackCardController", ^{
    it(@"returns the BlackCardController responsible for the background BlackCard", ^{
      [[blackCardController should] beKindOfClass:BlackCardController.class];
    });
  });

  describe(@".handController", ^{
    it(@"returns the HandController reponsible for the foreground Hand", ^{
      [[handController should] beKindOfClass:HandController.class];
    });
  });

  describe(@"- debugDescription", ^{
    let(debugDescription, ^{
      return playmatController.debugDescription;
    });

    it(@"equals HandController - description", ^{
      [[debugDescription should] equal:playmatController.description];
    });
  });

  describe(@"- description", ^{
    let(description, ^{
      return playmatController.description;
    });

    let(expectedFormat, ^{
      return NSStringWithFormat(
        @"<PlaymatController: %p; blackCardController = %@; handController = %@>",
        playmatController, blackCardController, handController);
    });

    it(@"returns '<PlaymatController: [memory_address]' blackCardController=[blackCardController"
        ".description] handController=[handController.description]>",
       ^{
         [[description should] equal:expectedFormat];
       });
  });
});
SPEC_END