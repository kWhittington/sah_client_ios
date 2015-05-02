//
//  PlaymatViewControllerFactory.m
//  StringsAgainstHumanity
//
//  Created by Kyle Whittington on 3/19/15.
//  Copyright (c) 2015 Kyle Whittington. All rights reserved.
//
// clang-format off
//
#import "FactoryLibraries.pch"
#import "PlaymatViewController.h"

FGFactoryBegin(PlaymatViewController)
  [builder initFrom:PlaymatViewController.class];
  [builder initWith:@selector(empty) fieldNames:@[]];

  traitDefiners[@"empty"] = ^(FGDefinitionBuilder *builder) {
    [builder initWith:@selector(empty) fieldNames:@[]];
  };
FGFactoryEnd