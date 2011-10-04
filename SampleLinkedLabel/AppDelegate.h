//
//  AppDelegate.h
//  SampleLinkedLabel
//
//  Created by 山口 達也 on 11/10/04.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    MyViewController *viewController;
}

@property (strong, nonatomic) UIWindow *window;

@end
