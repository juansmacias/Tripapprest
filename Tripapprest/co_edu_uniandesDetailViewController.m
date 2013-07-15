//
//  co_edu_uniandesDetailViewController.m
//  Tripapprest
//
//  Created by Macias on 15/07/13.
//  Copyright (c) 2013 Innovandes.co. All rights reserved.
//

#import "co_edu_uniandesDetailViewController.h"

@interface co_edu_uniandesDetailViewController ()
- (void)configureView;
@end

@implementation co_edu_uniandesDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
