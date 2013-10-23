//
//  ViewController.m
//  RSSreader
//
//  Created by Adrian Wilczyński on 23/10/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "APPMasterViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIButton *displaySecondViewController;
@end

@implementation ViewController

- (void) performDisplaySecondViewController:(id)paramSender{
    APPMasterViewController *secondController = [[APPMasterViewController alloc] initWithNibName:nil bundle:NULL];
    [self.navigationController pushViewController:secondController
                                         animated:YES];
}
//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
 //       // Custom initialization
  //  }
 //   return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.title = @"Main Controller";
    
    self.displaySecondViewController = [UIButton
                                        buttonWithType:UIButtonTypeSystem];
    [self.displaySecondViewController
     setTitle:@"Display Second View Controller"
     forState:UIControlStateNormal];
    [self.displaySecondViewController sizeToFit];
    self.displaySecondViewController.center = self.view.center;
    [self.displaySecondViewController
     addTarget:self action:@selector(performDisplaySecondViewController:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.displaySecondViewController];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
