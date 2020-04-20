//
//  CarPolicyTableHeaderView.h
//  FUSEPRO
//
//  Created by Ch666 on 2018/5/14.
//  Copyright © 2018年 FUSENANO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FUCommonPolicyTableHeaderView : UIView
+(instancetype)FUCommonPolicyTableHeaderView;
@property (weak, nonatomic) IBOutlet UILabel *fuseCodeLab;
@property (weak, nonatomic) IBOutlet UILabel *fuseCodeClab;
@property (weak, nonatomic) IBOutlet UILabel *policyNoLab;
@property (weak, nonatomic) IBOutlet UILabel *policyNoClab;
@property (weak, nonatomic) IBOutlet UIButton *fuseCodeBtn;
@property (weak, nonatomic) IBOutlet UIButton *policyNoBtn;

@property (weak, nonatomic) IBOutlet UIView *popView;
@property (weak, nonatomic) IBOutlet UILabel *insuranceTypeLab;

@property (weak, nonatomic) IBOutlet UILabel *policyNumberLab;
@property (weak, nonatomic) IBOutlet UILabel *nameLab;
@property (weak, nonatomic) IBOutlet UILabel *policyStatusLab;
@property (weak, nonatomic) IBOutlet UILabel *policyStatusClab;

@property (weak, nonatomic) IBOutlet UILabel *policyPayLab;
@property (weak, nonatomic) IBOutlet UILabel *policyPayClab;
@property (weak, nonatomic) IBOutlet UIImageView *typeImg;
@property (weak, nonatomic) IBOutlet UILabel *companyNameLab;
@property (weak, nonatomic) IBOutlet UILabel *insTypeLab;
@property (weak, nonatomic) IBOutlet UILabel *priceLab;

@property (weak, nonatomic) IBOutlet UILabel *insTimeLab;
@property (weak, nonatomic) IBOutlet UILabel *orderTimeLab;
@property (weak, nonatomic) IBOutlet UILabel *insTimenClab;
@property (weak, nonatomic) IBOutlet UILabel *orderTimeClab;
@property (weak, nonatomic) IBOutlet UILabel *payTimeLab;
@property (weak, nonatomic) IBOutlet UILabel *payTimeClab;
@property (weak, nonatomic) IBOutlet UILabel *theCopyLab;
@property (weak, nonatomic) IBOutlet UIButton *theCopyBtn;
@property (weak, nonatomic) IBOutlet UILabel *policyCopyLab;

@property (weak, nonatomic) IBOutlet UILabel *reviewLab;
@property (weak, nonatomic) IBOutlet UILabel *reviewClab;
@property (weak, nonatomic) IBOutlet UIView *priceView;
@property (weak, nonatomic) IBOutlet UIView *infoView;
@property (weak, nonatomic) IBOutlet UIView *owerView;

@property (weak, nonatomic) IBOutlet UILabel *masterPolicyLab;
@property (weak, nonatomic) IBOutlet UILabel *masterPolicyClab;
@property (weak, nonatomic) IBOutlet UILabel *masterPriceLab;
@property (weak, nonatomic) IBOutlet UILabel *masterPriceClab;

@property (weak, nonatomic) IBOutlet UILabel *priceInfoLab;
@property (weak, nonatomic) IBOutlet UIButton *priceInfoBtn;
@property (weak, nonatomic) IBOutlet UILabel *carInfoLab;
@property (weak, nonatomic) IBOutlet UIButton *carInfoBtn;
@property (weak, nonatomic) IBOutlet UILabel *carOwerLab;
@property (weak, nonatomic) IBOutlet UIButton *carOwerBtn;
@property (weak, nonatomic) IBOutlet UILabel *ksLab;
@property (weak, nonatomic) IBOutlet UIButton *ksBtn;

@property (weak, nonatomic) IBOutlet UILabel *carPhotoLab;
@property (weak, nonatomic) IBOutlet UIButton *carPhotoBtn;
@property (weak, nonatomic) IBOutlet UIView *masterView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *masterHeight;
@property (weak, nonatomic) IBOutlet UILabel *priceDetaillAB;
@property (weak, nonatomic) IBOutlet UIButton *priceDetailBtn;
@property (weak, nonatomic) IBOutlet UIView *coverageTypeView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *coverageHeight;
@property (weak, nonatomic) IBOutlet UILabel *covergeTypeClab;
@property (weak, nonatomic) IBOutlet UILabel *coverageTypeLab;
@property (weak, nonatomic) IBOutlet UIView *bottomView;
@property (weak, nonatomic) IBOutlet UIView *badgeView;
@property (weak, nonatomic) IBOutlet UILabel *badgeLab;
@property (weak, nonatomic) IBOutlet UIButton *badgeBtn;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *badgeHeight;


@property (weak, nonatomic) IBOutlet NSLayoutConstraint *masterTop;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *badgeTopToMasterView;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tagViewTopToBadgeView;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *badgeTopToPeriod;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tagViewTopToMasterView;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tagViewTopToPeriod;

@end
