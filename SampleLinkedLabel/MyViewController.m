//
//  MyViewController.m
//  SampleLinkedLabel
//
//  Created by 山口 達也 on 11/10/04.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "MyViewController.h"

@implementation MyViewController

#pragma mark - View lifecycle
- (void)loadView
{
    [super loadView];
    
    //put label object
    LinkedLabel *label1 = [[LinkedLabel alloc] initWithOrigin:CGPointMake(10, 10) text:@"hoge@apple.com" font:[UIFont systemFontOfSize:14.f]];
    label1.tag = 1;
    [self.view addSubview:label1];
    label1.delegate = self;
    [label1 release];
    
    LinkedLabel *label2 = [[LinkedLabel alloc] initWithOrigin:CGPointMake(10, 50) text:@"twitter.com/hoge" font:[UIFont systemFontOfSize:14.f]];
    label2.tag = 2;
    [self.view addSubview:label2];
    label2.delegate = self;
    [label2 release];
}

#pragma mark LinkedLabelDelegate
- (void) didTouchOn:(UILabel *)label
{
    //delegate method, called when the label is tapped
    NSLog(@"[%d] %@",label.tag, label.text);
}

- (void)dealloc
{
    [super dealloc];
}

@end
