//
//  GiftDetailPageViewController.h
//  ShoppingMall
//
//  Created by Codeguesser on 2014/1/26.
//  Copyright (c) 2014年 Macie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"

@interface GiftDetailPageViewController : BaseViewController{
    IBOutlet UIButton *MyAccountBtn;
    IBOutlet UIButton *backBtn;
    IBOutlet UIButton *shoppingMallListBtn;
    IBOutlet UIButton *giftBtn;
}
- (IBAction)myAccountBtnClick;
- (IBAction)backBtnClick;
- (IBAction)shoppingMallBtnClick;
- (IBAction)scanBtnClick;
- (IBAction)giftBtnClick;
@end
