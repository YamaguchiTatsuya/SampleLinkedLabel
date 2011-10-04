//
//  LinkedLabel.m
//  TestBasic
//
//  Created by 山口 達也 on 11/09/21.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "LinkedLabel.h"

@implementation LinkedLabel

@synthesize delegate = _delegate;

- (id)initWithOrigin:(CGPoint)origin text:(NSString *)text font:(UIFont *)font
{
    
    self = [super init];
    if (self) {
                
        //decide label size
        CGSize maximumLabelSize = CGSizeMake(320,30);
        CGSize expectedLabelSize = [text sizeWithFont:font
                                    constrainedToSize:maximumLabelSize 
                                        lineBreakMode:UILineBreakModeWordWrap]; 
        
        
        float sizeWidth,sizeHeight;
        sizeWidth = expectedLabelSize.width;
        sizeHeight = expectedLabelSize.height;
        
        self.frame = CGRectMake(origin.x, origin.y, sizeWidth, sizeHeight);
        self.font = font;
        self.text = text;
        
        self.textColor = [UIColor colorWithRed:0.006 green:0.000 blue:0.914 alpha:1.000];
        self.backgroundColor = [UIColor clearColor];
        
        self.userInteractionEnabled = YES;
        
        
        
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    
    //drawing blue underline
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetRGBStrokeColor(context, 0.006, 0.f, 0.914, 1.0);
    CGContextSetLineWidth(context, 1.0f);

    CGContextMoveToPoint(context, rect.origin.x, rect.origin.y+rect.size.height-1.5f);
    CGContextAddLineToPoint(context, rect.origin.x+rect.size.width, rect.origin.y+rect.size.height-1.5f);
    CGContextStrokePath(context);
    
    
}

-(void)touchesEnded:(NSSet*)touches withEvent:(UIEvent *)event 
{
    UITouch *touch = [[event allTouches] anyObject];
    if (CGRectContainsPoint(self.frame,[touch locationInView:self.superview])) {//Is the label touched?
        
        [_delegate didTouchOn:self];
    }
}


- (void)dealloc
{
    [super dealloc];
}


@end
