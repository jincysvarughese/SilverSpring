//
//  SideMenuViewController.m
//  SampleProjectPOC
//
//  Created by Jincy Saramma Varughese on 17/05/17.
//  Copyright © 2017 Jincy Saramma Varughese. All rights reserved.
//

#import "SideMenuViewController.h"

@interface SideMenuViewController () <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSArray *labelDataSource;
@property (nonatomic, strong) NSArray *imagesDataSource;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
@implementation SideMenuViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
}

#pragma mark -
#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    switch (indexPath.row)
    {
        case 0:
            cell.textLabel.text  = @"HOME";
            cell.imageView.image = [UIImage imageNamed:@"sidemenu_home.png"];
            break;
        case 1:
            cell.textLabel.text  = @"VIDEOS";
            cell.imageView.image = [UIImage imageNamed:@"sidemenu_video.png"];
            break;
            
        case 2:
            cell.textLabel.text  = @"BECOME A CUSTOMER";
            cell.imageView.image = [UIImage imageNamed:@"sidemenu_customer.png"];
            break;
            
        case 3:
            cell.textLabel.text  = @"ABOUT US";
            cell.imageView.image = [UIImage imageNamed:@"sidemenu_about.png"];
            break;
            
            
    }
    cell.selectionStyle         = UITableViewCellSelectionStyleNone;
    cell.textLabel.font         = [UIFont fontWithName:@"SourceSansPro-Regular" size:15];
    cell.backgroundColor        = [UIColor clearColor];
    cell.textLabel.textColor    = [UIColor colorWithRed:(59.0/255.0) green:(175.0/255.0) blue:(90.0/255.0) alpha:1];
    
    return cell;
}

#pragma mark -
#pragma mark - UITableViewDelegate

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if(indexPath.row == 0) {
//        UIStoryboard *monthlyData;
//        if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad){
//            monthlyData = [UIStoryboard storyboardWithName:@"MonthlyDataViewController_iPad" bundle:nil];
//        }
//        else
//        {
//            monthlyData           = [UIStoryboard storyboardWithName:@"MonthlyDataViewController_iPhone" bundle:nil];
//        }
//        MonthlyDataViewController *monthlyDaataViewController = [monthlyData instantiateViewControllerWithIdentifier: @"MonthlyData"];
//        UINavigationController *navigationController = self.menuContainerViewController.centerViewController;
//        NSArray *controllers = [NSArray arrayWithObject:monthlyDaataViewController];
//        navigationController.viewControllers = controllers;
//        [self.menuContainerViewController setMenuState:MFSideMenuStateClosed];
//    }
//    else if (indexPath.row == 1) {
//        UIStoryboard *storyboard;
//        if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
//        {
//            storyboard = [UIStoryboard storyboardWithName:@"VideoViewController_iPad" bundle:nil];
//        }
//        else
//        {
//            storyboard = [UIStoryboard storyboardWithName:@"VideoViewController_iPhone" bundle:nil];
//        }
//        
//        VideoViewController *videoViewController = [storyboard instantiateViewControllerWithIdentifier: @"VideoViewControllerIdentifier"];
//        UINavigationController *navigationController = self.menuContainerViewController.centerViewController;
//        NSArray *controllers = [NSArray arrayWithObject:videoViewController];
//        navigationController.viewControllers = controllers;
//        [self.menuContainerViewController setMenuState:MFSideMenuStateClosed];
//    }
//    else if (indexPath.row == 2) {
//        NSURL *url = [NSURL URLWithString:@"http://www.geojit.com/about-us/account-opening"];
//        
//        if ([[UIApplication sharedApplication] respondsToSelector:@selector(openURL:options:completionHandler:)]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:NULL];
//        }else{
//            // Fallback on earlier versions
//            [[UIApplication sharedApplication] openURL:url];
//        }
//    }
//    else if (indexPath.row == 3) {
//        NSURL *url = [NSURL URLWithString:@"http://geojittechnologies.com/about-us/"];
//        
//        if ([[UIApplication sharedApplication] respondsToSelector:@selector(openURL:options:completionHandler:)]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:NULL];
//        }else{
//            // Fallback on earlier versions
//            [[UIApplication sharedApplication] openURL:url];
//        }
//    }
//}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}
@end

