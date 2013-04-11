//
//  RabbitViewController.h
//  MultiView
//
//  Created by Peter Pan on 4/10/13.
//  Copyright (c) 2013 Peter Pan. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(int, RabbitType) {
    SLEEP_RABBIT,
    EAT_RABBIT,
    PAPER_RABBIT
};

@interface RabbitViewController : UIViewController

-(id)initWithType:(RabbitType)type;

@end
