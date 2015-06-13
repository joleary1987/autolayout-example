//
//  SecondViewController.h
//  autolayout-sample
//
//  Created by Jeff O'Leary on 6/13/15.
//  Copyright (c) 2015 GDI. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol SecondViewControllerDelegate <NSObject>
- (void)dismissSecondViewController;
@end

@interface SecondViewController : UIViewController
@property (nonatomic, weak) NSObject <SecondViewControllerDelegate> *delegate;
@end
