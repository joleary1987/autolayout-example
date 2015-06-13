//
//  ViewController.m
//  autolayout-sample
//
//  Created by Jeff O'Leary on 6/13/15.
//  Copyright (c) 2015 GDI. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController () <SecondViewControllerDelegate>
- (IBAction)presentButtonTouched:(id)sender;
@property (strong, nonatomic) SecondViewController *secondViewController;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)presentButtonTouched:(id)sender {
    if (!self.secondViewController) self.secondViewController = [[SecondViewController alloc] init];
    self.secondViewController.delegate = self;
    [self presentViewController:self.secondViewController animated:YES completion:nil];
}

#pragma mark - SecondViewControllerDelegate
- (void)dismissSecondViewController {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
