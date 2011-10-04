//
//  LinkedLabel.h
//  TestBasic
//
//  Created by 山口 達也 on 11/09/21.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

@protocol LinkedLabelDelegate;

#import <UIKit/UIKit.h>

@interface LinkedLabel : UILabel {
    
    id<LinkedLabelDelegate> _delegate;
}
@property (nonatomic, assign) id<LinkedLabelDelegate> delegate;



- (id)initWithOrigin:(CGPoint)origin text:(NSString *)text font:(UIFont *)font;

@end


@protocol LinkedLabelDelegate
- (void)didTouchOn:(UILabel *)label;
@end