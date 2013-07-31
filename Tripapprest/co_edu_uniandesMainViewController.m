//
//  co_edu_uniandesMainViewController.m
//  Tripapprest
//
//  Created by Macias on 16/07/13.
//  Copyright (c) 2013 Innovandes.co. All rights reserved.
//

#import "co_edu_uniandesMainViewController.h"
#import "SWRevealViewController.h"

@interface co_edu_uniandesMainViewController ()

@end

@implementation co_edu_uniandesMainViewController

@synthesize sideBarButton = _sideBarButton;
@synthesize menuPost =_menuPost;

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.sideBarButton.tintColor = [UIColor lightGrayColor];
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    self.sideBarButton.target = self.revealViewController;
    self.sideBarButton.action = @selector(revealToggle:);
    
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    self.menuPost = @[@"photosC",@"photosC1",@"photosC2",@"photosC3"];
    self.tablaPosts.delegate = self;
    self.tablaPosts.dataSource = self;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)agregarFamilia:(UIBarButtonItem *)sender {
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.menuPost count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellI = [self.menuPost objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellI forIndexPath:indexPath];
    
    return cell;
}

@end
