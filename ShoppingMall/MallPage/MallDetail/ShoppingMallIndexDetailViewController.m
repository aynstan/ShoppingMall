//
//  ShoppingMallIndexDetailViewController.m
//  ShoppingMall
//
//  Created by Codeguesser on 2014/1/26.
//  Copyright (c) 2014年 Macie. All rights reserved.
//

#import "ShoppingMallIndexDetailViewController.h"
#import "MyAccountHomePageViewController.h"
#import "HomePageViewController.h"
#import "MallGiftListPageViewController.h"

@interface ShoppingMallIndexDetailViewController ()

@end

@implementation ShoppingMallIndexDetailViewController

@synthesize mall = _mall;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)setUpAdButton:(UIView*)view {
    // Handle Single Tab action on the Scanning View
    UITapGestureRecognizer *singleTab = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(adButtonClick)];
    singleTab.numberOfTapsRequired = 1;
    view.userInteractionEnabled = YES;
    [view addGestureRecognizer:singleTab];
}

- (IBAction)adButtonClick {
    [self buttonClickToClass:@"ShopPromoViewController" iPhone5Nib:@"ShopPromoViewController5" nib:@"ShopPromoViewController"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    mallName.text = [_mall mallName];
    mallAddress.text = [_mall mallAddress];
    [self setUpAdButton:adButton1];
    [self setUpAdButton:adButton2];
    [self setUpAdButton:adButton3];
    [self setUpAdButton:adButton4];
    [self setUpAdButton:adButton5];
  }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backBtnClick {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)myAccountBTnClick {
    [self buttonClickToClass:@"MyAccountHomePageViewController" iPhone5Nib:@"MyAccountHomePageViewController5" nib:@"MyAccountHomePageViewController"];
}

- (IBAction)shoppingMallBtnClick {
    [self buttonClickToClass:@"HomePageViewController" iPhone5Nib:@"HomePageViewController5" nib:@"HomePageViewController"];
}

- (IBAction)numberOfGiftBtnClick {
    MallGiftListPageViewController* controller =
    (MallGiftListPageViewController*)[self buttonClickGetClass:@"MallGiftListPageViewController" iPhone5Nib:@"MallGiftListPageViewController5" nib:@"MallGiftListPageViewController"];
    [controller initWithMall:_mall];
    [self popOrPush:@"MallGiftListPageViewController" controller:controller];
}

- (IBAction)giftBtnClick {
    [self buttonClickToClass:@"GiftViewController" iPhone5Nib:@"GiftViewController5" nib:@"GiftViewController"];
}

- (void)initWithMall:(MockMall*)mall {
    _mall = mall;
}

@end
