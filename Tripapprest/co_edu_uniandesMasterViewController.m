//
//  co_edu_uniandesMasterViewController.m
//  Tripapprest
//
//  Created by Macias on 15/07/13.
//  Copyright (c) 2013 Innovandes.co. All rights reserved.
//

#import "co_edu_uniandesMasterViewController.h"
#import "co_edu_uniandesDetailViewController.h"
#import "co_edu_uniandesProfileViewController.h"
#import "SWRevealViewController.h"
#import "co_edu_uniandesProfileViewController.h"

@interface co_edu_uniandesMasterViewController () {
    NSMutableArray *_objects;
}
@end

@implementation co_edu_uniandesMasterViewController

@synthesize menulista = _menulista;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //self.view.backgroundColor = [UIColor darkGrayColor];
    //self.tablaMenu.backgroundColor = [UIColor colorWithWhite:0.25 alpha:0.5];
    //self.tablaMenu.separatorColor = [UIColor colorWithWhite:0.1 alpha:0.2f];
    
    self.menulista = @[@"title", @"profile", @"warmup", @"explore", @"community", @"signout"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.menulista count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellI = [self.menulista objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellI forIndexPath:indexPath];

    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Set the title of navigation bar by using the menu items
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    UINavigationController *destViewController = (UINavigationController*)segue.destinationViewController;
    destViewController.title = [[self.menulista objectAtIndex:indexPath.row] capitalizedString];
    
    if ([segue.identifier isEqualToString:@"showPerfil"]) {
        

    }
    if ([segue.identifier isEqualToString:@"showPerfil"]) {
        
        
    }
    
    if ( [segue isKindOfClass: [SWRevealViewControllerSegue class]] ) {
        SWRevealViewControllerSegue *swSegue = (SWRevealViewControllerSegue*) segue;
        
        swSegue.performBlock = ^(SWRevealViewControllerSegue* rvc_segue, UIViewController* svc, UIViewController* dvc) {
            
            UINavigationController* navController = (UINavigationController*)self.revealViewController.frontViewController;
            [navController setViewControllers: @[dvc] animated: NO ];
            [self.revealViewController setFrontViewPosition: FrontViewPositionLeft animated: YES];
        };
        
    }

}

@end
