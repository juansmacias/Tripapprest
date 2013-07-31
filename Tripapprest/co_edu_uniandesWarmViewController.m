//
//  co_edu_uniandesWarmViewController.m
//  Tripapprest
//
//  Created by Macias on 18/07/13.
//  Copyright (c) 2013 Innovandes.co. All rights reserved.
//

#import "co_edu_uniandesWarmViewController.h"
#import "SWRevealViewController.h"

@interface co_edu_uniandesWarmViewController ()

@end

@implementation co_edu_uniandesWarmViewController

@synthesize sidebarButton = _sidebarButton;
@synthesize menuCiudad = _menuCiudad;
@synthesize tablaCiudad = _tablaCiudad;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.sidebarButton.target = self.revealViewController;
    self.sidebarButton.action = @selector(revealToggle:);
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    self.tablaCiudad.delegate = self;
    self.tablaCiudad.dataSource = self;
    self.menuCiudad = @[@"WUP",@"WUP1",@"WUP2"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.menuCiudad count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellI = [self.menuCiudad objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellI forIndexPath:indexPath];
    
    return cell;
}



@end
