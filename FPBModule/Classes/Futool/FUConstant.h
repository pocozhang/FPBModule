//
//  FUConstant.h
//  FUSE
//
//  Created by Ch666 on 2017/4/13.
//  Copyright © 2017年 CH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XMNetworking.h"
#pragma mark 接口定义
//extern NSString *const BaseAPI_Temp;

extern NSString * BaseAPI;

extern NSString *const BaseAPI_General;

extern NSString *const BaseAPI_Account;

extern NSString *const Login;

extern NSString *const Registers;

extern NSString *const GetCode;

extern NSString *const CodeValid;

extern NSString *const ResetPassword;

////
extern NSString *const GetBanner;

extern NSString *const GetCarBrand;

extern NSString *const GetHomeMsg;

extern NSString *const GetInsuredInfo;

extern NSString *const GetCompanyList;

extern NSString *const UpdateUserIcon;

extern NSString *const UpdateKTP_STAK;

extern NSString *const OrderPay;

extern NSString *const BankPay;

extern NSString *const PolicyList;

extern NSString *const PolicyDetailMsg;

extern NSString *const UnreadPolicyCount;

extern NSString *const ComissionList;

extern NSString *const GetDownlineCount;

extern NSString *const GetBanner;

extern NSString *const GetDownlineList;

extern NSString *const AgentApply;

extern NSString *const AgentStatus;

extern NSString *const IsHaveActivity;

extern NSString *const UserBindonline;

extern NSString *const UploadFcmToken;

extern NSString *const GetAutoType;

extern NSString *const UserWithdraw;

extern NSString *const UserBankList;

extern NSString *const BindBnakCard;

extern NSString *const UnbindBankCard;

extern NSString *const CancelWithdraw;

extern NSString *const GetPayMrthord;

extern NSString *const GetGoldDetailList;

extern NSString *const QuoteCompanyList;

extern NSString *const AlertRequest;

extern NSString *const FindWorklist;

extern NSString *const GetPackageList;

extern NSString *const ModifyPolcyDetail;

extern NSString *const CountryCode;

extern NSString *const UserLogout;

extern NSString *const HomeDialog;

extern NSString *const GetProductCategoryV2;

extern NSString *const AgentCurrentMonthBonus;

extern NSString *const GetCarYear;

extern NSString *const GetCarType;

extern NSString *const GetCarSeries;

extern NSString *const GetCarPlat;

extern NSString *const GetCarProductList;

extern NSString *const GetCarMaxMin;

extern NSString *const ChangeAddtinalPremi;

extern NSString *const GetCarQuote;

extern NSString *const GetGeneralQuote;

extern NSString *const GetTravelQuote;

extern NSString *const HiddenOrShowCar;

extern NSString *const uploadImage;

extern NSString *const getOrder;

extern NSString *const PaGetOrder;

extern NSString *const filterTravelInsurance;

extern NSString *const getTravelList;

extern NSString *const getTravelProductDetail;

extern NSString *const filterIns;

extern NSString *const getInsuranceAddtionalInfo;

extern NSString *const GeneralOrderPay;

extern NSString *const GetAgentInfo;

extern NSString *const ChangeAgentInfo;

extern NSString *const GetBankCard;

extern NSString *const BankCardWithdraw;

extern NSString *const GetNationalBankList;


extern NSString *const AddBankCard;

extern NSString *const GetBonusHistory;

extern NSString *const GetWithdrawHistory;

extern NSString *const GetWithdrawDetail;

extern NSString *const CancelWithdrawV2;

extern NSString *const GetPolicyListV2;

extern NSString *const GetCarPolicyDetailV2;

extern NSString *const GetMainPolicyDetail;

extern NSString *const GetGeneralPolicyDetailV2;

extern NSString *const GetPayMothordV2;

extern NSString *const VApay;

extern NSString *const GetPayBankList;

extern NSString *const CreditCardPay;

extern NSString *const CashPay;

extern NSString *const GetTravelDestination;

extern NSString *const DownlienListV2;

extern NSString *const getWorkshopListV2;

extern NSString *const getImageFullPath;

extern NSString *const EditPolicyV2;

extern NSString *const SendFcmToken;

extern NSString *const UpdateAppV2;

extern NSString *const DokuPayV2;

extern NSString *const BankTransferV2;

extern NSString *const GetRenewalPolicyList;

extern NSString *const RenewalPolicy;

extern NSString *const RnealCarProductDeatil;

extern NSString *const getCurrentAgentDetailBonus;

extern NSString *const TravelPolicyOrder;

extern NSString *const GetInboxNotification;

extern NSString *const UpdateNotificationToread;

extern NSString *const OTPgetCode;

extern NSString *const IsCorrectOtpCode;

extern NSString *const FogetPasswordReset;

extern NSString *const GetPromotionList;

extern NSString *const UpdatePromotionToread;

extern NSString *const UpdateInboxToread;

extern NSString *const UpdateRedPoint;

extern NSString *const ChargeAmountList;

extern NSString *const AutoCanNext;

extern NSString *const UploadProofId;

extern NSString *const CreaditPayList;

extern NSString *const IsValidateDay;

extern NSString *const GetMultiPrice;

extern NSString *const newMultiPrice;

extern NSString *const theNewTravelList;

extern NSString *const NewTravelProductList;

extern NSString *const AllUnpaidPolicyList;

extern NSString *const PayLaterQuest;

extern NSString *const PayLaterUnpaidList;

extern NSString *const MathAddressByPost;

extern NSString *const ExternalPolicyOrder;

extern NSString *const GetOtherPolicyList;

extern NSString *const GetOtherPolicyDetails;

extern NSString *const ValidateLifeInsuranceKtp;

extern NSString *const GetLifeInsuranceProvince;

extern NSString *const EndorsementOrder;

extern NSString *const EndorsementPolicyList;

extern NSString *const ExpressProcessInfo;

extern NSString *const EndorsChangeStatus;

extern NSString *const HomePageLoopData;

extern NSString *const DeleteQuotePolicy;

extern NSString *const ChangeAppLanguage;

extern NSString *const ManualPolicyList;

extern NSString *const ManualPolicyDetail;

extern NSString *const AgreeeOrNotManualPolicy;

extern NSString *const FusePointHistory;

extern NSString *const FusePointExchangeHistory;

extern NSString *const ExchangeFusePoint;

extern NSString *const GetCouponList;

extern NSString *const WriteOffRandom;

extern NSString *const BindedCouponList;

extern NSString *const BuyFlowFusepointDetail;

extern NSString *const PayShortLinkUrl;

extern NSString *const agentYearData;

extern NSString *const ShowFaceAuth;

extern NSString *const RenewPropertyProductDetail;

extern NSString *const canEndorsNext;

extern NSString *const CreateCliamInfo;

extern NSString *const EditCliamInfo;

extern NSString *const GetEditOccuInfo;

extern NSString *const GetCargoPolicyDetail;

extern NSString *const FilterCargoCharector;

extern NSString *const ScanPlatEngine;

extern NSString *const GetHomeInquiry;

extern NSString *const GetNewAdminFee;

extern NSString *const GetPayNowMsg;

extern NSString *const GetPayTypeInfo;

#pragma mark 2.0

extern NSString *const GetBanner;

extern NSString *const GetCompany;

extern NSString *const GetCompanyProducts;

extern NSString *const GetCoupon;

extern NSString *const GetValiadCouponCount;

extern NSString *const CompanyGroup;

extern NSString *const CompanyProductDetail;

extern NSString *const ProductCatalogs;

extern NSString *const HomeProductCatalogs;

extern NSString *const GetUnreadMsgCount;

extern NSString *const GetMsgTypeCount;

extern NSString *const GetSpecialMsg;

extern NSString *const MinePolicyMsgCount;

extern NSString *const MineClaimMsgCount;

extern NSString *const AllPolicyList;

extern NSString *const GetUserContact;

extern NSString *const GetUserCoupon;

extern NSString *const GetPolicyId;

extern NSString *const GetPayParams;

extern NSString *const CanClaimsCount;

extern NSString *const UpdateClaims;

extern NSString *const UpdateUserIcon;

extern NSString *const GetComments;

extern NSString *const AddComments;

extern NSString *const FuseGeneralGoldPay;

extern NSString *const DetailPolicyWithFuseCode;

extern NSString *const DownlineIncomeNewList;

extern NSString *const ClientVersionInfo;

extern NSString *const ChangeCarValueRate;

extern NSString *const GetMotoBrandV2;

extern NSString *const GetMotoTypeV2;

extern NSString *const GetMotoSeriesV2;

extern NSString *const GetYearSeriesV2;

extern NSString *const ChangePolicyStatusV2;

extern NSString *const AgentCertificationV2;

extern NSString *const GetCertificationStatus;
//摩托车

extern NSString *const GetMotoBrand;

extern NSString *const GetMoto;

extern NSString *const GetMotoCompanyList;

extern NSString *const GetFeedbackList;

extern NSString *const UploadFeedback;

extern NSString *const GetCountTime;

extern NSString *const UpdateLoginInfo;

extern NSString *const PropertyRiskInfo;

extern NSString *const GetPropertyProductList;

extern NSString *const PropertyProductDetail;

extern NSString *const PropertyOrder;

extern NSString *const PropertyQuotation;

extern NSString *const CheckRenewalInfomation;

extern NSString *const KtpOrPassportValid;

extern NSString *const isValidInviteFriend;

extern NSString *const UploadContactInfo;

extern NSString *const GetHealthArea;

extern NSString *const GetHealthProductList;

extern NSString *const HealthPolicyOrder;

extern NSString *const GetCarProductDeatil;

extern NSString *const GetFreePayFee;

extern NSString *const GetProductMaxCommission;

extern NSString *const BindPayBonusInfo;

extern NSString *const CanGoOnPayNow;

extern NSString *const RentCarList;

extern NSString *const ChassisOrEngineCanNext;

extern NSString *const SMSLoginCode;

extern NSString *const PushNotificationAlaytice;

extern NSString *const InviteFriendLink;

extern NSString *const CouponFilterFirst;


#pragma mark 用户通用常量

extern NSString *const User_isFirstLogin;

extern NSString *const FuseIsLogin;

extern NSString *const User_photo;

extern NSString *const User_customerName;

extern NSString *const User_mobile;

extern NSString *const User_certificationStatus;

extern NSString *const User_priKey;

extern NSString *const User_idCard;

extern NSString *const User_nickName;

extern NSString *const User_birthday;

extern NSString *const User_mailingAddress;

extern NSString *const User_registerTime;

extern NSString *const User_email;

extern NSString *const User_gender;

extern NSString *const User_isAgent;

extern NSString *const User_Password;

extern NSString *const Agent_OneProfitRate;

extern NSString *const Agent_TwoProfitRate;

extern NSString *const Agent_Type;

extern NSString *const User_referralId;

extern NSString *const User_referralCode;

extern NSString *const User_isChangePsw;

extern NSString *const User_AccountId;

extern NSString *const User_Phone;

extern NSString *const User_Token;

extern NSString *const User_DataToken;

extern NSString *const User_PkId;

extern NSString *const User_KTP;

extern NSString *const APP_Currency;

extern NSString *const User_timeZone;

extern NSString *const User_PureMobile;

extern NSString *const User_PureEmail;

extern NSString *const User_PureKtp;

extern NSString *const SendPolicyQuotationLink;

extern NSString *const User_corperateType;
#pragma mark 事件统计常量


extern NSString *const dialog_homepage_share_dialogshow;

extern NSString *const button_homepage_share;

extern NSString *const button_homepage_checknow;

extern NSString *const button_additional_risk_confirm;

extern NSString *const button_choose_company_confirm;

extern NSString *const button_first_confirm_page;

extern NSString *const button_car_ownerpage_confirm;

extern NSString *const button_car_infopage_confirm;

extern NSString *const button_policy_infopage_confirm;

extern NSString *const button_choose_bank_confirm;

extern NSString *const dialog_pay_success_dialog_show;

extern NSString *const button_pay_success_dialog;

extern NSString *const view_home;

extern NSString *const view_choose_additional;

extern NSString *const view_choose_company;

extern NSString *const view_first_confirm;

extern NSString *const view_car_owner_info;

extern NSString *const view_car_info;

extern NSString *const view_policy_info;

extern NSString *const view_choose_bank;

extern NSString *const view_pay_success;


#pragma mark - 特殊需求

extern NSString *const GetSpecialProductList;
extern NSString *const SpecialActivity;

#pragma mark - 支付

extern NSString *const CashPayV3;

extern NSString *const NewCommonPay;


#pragma ROP
extern NSString *const GetROPPolicyDetail;

#pragma MoveAble
extern NSString *const GetMoveAbleDropDownText;
extern NSString *const GetMoveAbleProductList;
extern NSString *const GetMoveAbleProdcutFieldList;
extern NSString *const GetMoveAbleProdcutDetail;
extern NSString *const GetMoveAbleGetQuote;
extern NSString *const GetMoveAblePolicyDetail;


extern NSString *const GetQueryOtherProductList;
