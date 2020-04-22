//
//  FUConstant.m
//  FUSE
//
//  Created by Ch666 on 2017/4/13.
//  Copyright © 2017年 CH. All rights reserved.
//

#import "FUConstant.h"
#pragma mark 事件统计常量

NSString *const dialog_homepage_share_dialogshow = @"dialog_homepage_share_dialogshow";

NSString *const button_homepage_share = @"button_homepage_share";

NSString *const button_homepage_checknow = @"button_homepage_checknow";

NSString *const button_additional_risk_confirm = @"button_additional_risk_confirm";

NSString *const button_choose_company_confirm = @"button_choose_company_confirm";

NSString *const button_first_confirm_page = @"button_first_confirm_page";

NSString *const button_car_ownerpage_confirm = @"button_car_ownerpage_confirm";

NSString *const button_car_infopage_confirm = @"button_car_infopage_confirm";

NSString *const button_policy_infopage_confirm = @"button_policy_infopage_confirm";

NSString *const button_choose_bank_confirm = @"button_choose_bank_confirm";

NSString *const dialog_pay_success_dialog_show = @"dialog_pay_success_dialog_show";

NSString *const button_pay_success_dialog = @"button_pay_success_dialog";

NSString *const view_home = @"view_home";

NSString *const view_choose_additional = @"view_choose_additional";

NSString *const view_choose_company = @"view_choose_company";

NSString *const view_first_confirm = @"view_first_confirm";

NSString *const view_car_owner_info = @"view_car_owner_info";

NSString *const view_car_info = @"view_car_info";

NSString *const view_policy_info = @"view_policy_info";

NSString *const view_choose_bank = @"view_choose_bank";

NSString *const view_pay_success = @"view_pay_success";

#pragma mark-通用常量

NSString *const User_isFirstLogin = @"User_isFirstLogin";

NSString *const FuseIsLogin = @"FuseIsLogin";

NSString *const User_photo = @"User_photo";

NSString *const User_customerName = @"User_customerName";

NSString *const User_mobile = @"User_mobile";

NSString *const User_certificationStatus = @"User_certificationStatus";

NSString *const User_priKey = @"User_priKey";

NSString *const User_idCard = @"User_idCard";

NSString *const User_nickName = @"User_nickName";

NSString *const User_birthday = @"User_birthday";

NSString *const User_mailingAddress = @"User_mailingAddress";

NSString *const User_registerTime = @"User_registerTime";

NSString *const User_email = @"User_email";

NSString *const User_gender = @"User_gender";

NSString *const User_timeZone = @"User_timeZone";

NSString *const User_isAgent = @"User_isAgent";

NSString *const User_Password = @"User_Password";

NSString *const Agent_OneProfitRate = @"Agent_OneProfitRate";

NSString *const Agent_TwoProfitRate = @"Agent_TwoProfitRate";

NSString *const Agent_Type = @"Agent_Type";
NSString *const User_referralId = @"User_referralId";


NSString *const User_referralCode = @"User_referralCode";

NSString *const User_isChangePsw = @"User_isChangePsw";

NSString *const User_AccountId = @"User_AccountId";

NSString *const User_Phone = @"User_Phone";

NSString *const User_PkId = @"User_PkId";

NSString *const User_Token = @"User_Token";

NSString *const User_KTP = @"User_ktp";

NSString *const User_DataToken = @"User_DataToken";

NSString *const APP_Currency = @"APP_Currency";

NSString *const User_PureMobile = @"User_PureMobile";

NSString *const User_PureEmail = @"User_PureEmail";

NSString *const User_PureKtp = @"User_PureKtp";

NSString *const User_corperateType = @"User_corperateType";

//东平
//NSString *const BaseAPI_Auto = @"http://192.168.3.20/auto/";



#if ENV_PRODUCTION
//production server
NSString * BaseAPI = @"https://www.fuse.co.id/insurance-finance-vs-api/";
#elif ENV_PRERELEASE
//pre-production server
NSString * BaseAPI = @"http://uat.fuse.co.id/insurance-finance-vs-api/";
#elif ENV_STAGING
//ENV_STAGING server


//NSString * BaseAPI = @"http://47.74.177.113/fuse-app/";

NSString * BaseAPI = @"http://47.74.177.113/insurance-finance-vs-api/";

#else
//test server

NSString * BaseAPI = @"http://47.110.255.17/insurance-finance-vs-api/";

//NSString * BaseAPI = @"http://47.110.255.17/fuse-app/";


#endif


//登录
NSString *const Login = @"api/fuse/user/login";

//注册
NSString *const Registers = @"api/customer";

//获取验证码
NSString *const GetCode = @"api/customer/code/";

//验证码是否正确
NSString *const CodeValid = @"api/customer/code/valid";

//重置密码
NSString *const ResetPassword = @"api/customer/password";


//获取所有品牌
NSString *const GetCarBrand = @"api/fuse/auto/brand";

//获取首页相关信息
NSString *const GetHomeMsg = @"api/car/";

//获取用户所有优惠券
NSString *const GetInsuredInfo = @"api/price/quotes";

//获取公司列表
NSString *const GetCompanyList = @"api/company";

//上传用户头像
NSString *const UpdateUserIcon = @"customer/api/customer/photo";

//上传用户KTP STNK照片
NSString *const UpdateKTP_STAK = @"api/policy/uploadPic";

//下单
NSString *const OrderPay = @"api/policy";

//支付
NSString *const BankPay = @"api/pay";

//保单列表
NSString *const PolicyList = @"api/policy/list/";

//保单详情
NSString *const PolicyDetailMsg = @"api/policy/detail/";

//未读保单数量
NSString *const UnreadPolicyCount = @"api/policy/status/";

//GetIncome
NSString *const ComissionList = @"customer/api/agent/income/";

//获取下限数量
NSString *const GetDownlineCount = @"customer/api/agent/downline/num/";

//获取banner图
NSString *const GetBanner = @"api/fuse/sys/banner";

//获取代理下限列表
NSString *const GetDownlineList = @"customer/api/agent/downline/income/";

//申请成为代理
NSString *const AgentApply = @"api/agent/agentApply";

//申请代理进度
NSString *const AgentStatus = @"api/customer/info/";

//查询是否有活动
NSString *const IsHaveActivity = @"api/activity";

//用户绑定下线
NSString *const UserBindonline = @"api/customer/bindonline/";

//上传fcm token
NSString *const UploadFcmToken = @"api/fcm/bind";

//代理提现
NSString *const UserWithdraw = @"customer/api/account/withdraw";

//用户银行卡列表
NSString *const UserBankList = @"customer/api/account/banks/";

//用户绑定银行卡
NSString *const BindBnakCard = @"customer/api/account/bind/bank";

//用户解绑银行卡
NSString *const UnbindBankCard = @"customer/api/account/unbind/bank/";

//用户取消提现
NSString *const CancelWithdraw = @"customer/api/account/withdraw/cancel/";

//获取支付方式
NSString *const GetPayMrthord = @"api/pay/list";

//获取收支列表
NSString *const GetGoldDetailList = @"customer/api/account/gold/list/";

//获取公司列表（新增）
NSString *const QuoteCompanyList = @"api/company/quotes";

//首页弹窗接口
NSString *const AlertRequest = @"api/system/popup";


//获取所有品牌
NSString *const GetMotoBrand = @"api/moto/brand";

NSString *const GetMoto = @"api/moto/";

NSString *const GetMotoCompanyList = @"api/company/moto";



//获取所有公司
NSString *const GetCompany = @"api/company/";

//获取某个公司产品
NSString *const GetCompanyProducts = @"api/company";

//获取用户所有优惠券
NSString *const GetCoupon = @"api/coupon/";

//获取可用优惠券数量
NSString *const GetValiadCouponCount = @"api/coupon/count/";

//获取公司产品组
NSString *const CompanyGroup = @"api/product/company/group/";

//获取公司某个产品详情//
NSString *const CompanyProductDetail = @"api/product/productList/";

//获取主页展示的产品列表
NSString *const HomeProductCatalogs = @"api/product/catalogs";

//获取产品分类列表，例如 健康险类、旅游险类
NSString *const ProductCatalogs = @"api/product/catalogs/group/";

//获取未读消息总数
NSString *const GetUnreadMsgCount = @"api/message/";

//获取未读消息类型，及每个类型的数量
NSString *const GetMsgTypeCount = @"api/message/type/";

//获取具体类型未读消息的列表
NSString *const GetSpecialMsg = @"api/message/type/";

//获取个人中心页面未读 保单的数量
NSString *const MinePolicyMsgCount = @"api/policy/all/count/";

//获取个人中心页面未读 理赔的数量
NSString *const MineClaimMsgCount = @"api/claims/all/count/";

//获取用户所有保单的列表
NSString *const AllPolicyList = @"api/policy/";

//获取用户联系人列表
NSString *const GetUserContact = @"api/customer/contacts/";

//获取用户可用优惠券
NSString *const GetUserCoupon = @"api/coupon/";

//获取保单id
NSString *const GetPolicyId = @"api/policy";

//获取支付参数
NSString *const GetPayParams = @"api/pay/";

//获取可用理赔次数
NSString *const CanClaimsCount = @"api/claims/";

//获取可用理赔次数
NSString *const UpdateClaims = @"api/claims/update";



//获取评论
NSString *const GetComments = @"api/product/evaluate/";

//添加评论
NSString *const AddComments = @"api/product/evaluate/add";

//2.0金币支付
NSString *const FuseGeneralGoldPay = @"api/pay/gold";

//根据fusecode查询保单详情
NSString *const DetailPolicyWithFuseCode = @"api/policy/detail/code/";

//下限收益列表
NSString *const DownlineIncomeNewList = @"customer/api/agent/income/downline";

//合作维修点列表
NSString *const FindWorklist = @"api/workshop/find";

//打包列表
NSString *const GetPackageList = @"api/product/quotes";

//修改保单
NSString *const ModifyPolcyDetail = @"api/policy/modify";

//获取客户端版本信息
NSString *const ClientVersionInfo = @"api/system/version";

//修改车价的比率
NSString *const ChangeCarValueRate = @"api/price/carSurchargeRange";

//获取区域编号
NSString *const CountryCode = @"api/fuse/country/info";

//登出
NSString *const UserLogout = @"api/fuse/user/logout";

//获取首页弹窗
NSString *const HomeDialog = @"api/fuse/sys/dialog";

//获取产品列表
NSString *const GetProductCategoryV2 = @"api/fuse/query/productCategoryList";

////获取代理当月bonus
NSString *const AgentCurrentMonthBonus = @"api/fuse/agent/yearMonthAmount";

//获取车辆年份
NSString *const GetCarYear = @"api/fuse/auto/year";

//获取车辆类型
NSString *const GetCarType = @"api/fuse/auto/type";

//获取车辆型号
NSString *const GetCarSeries = @"api/fuse/auto/series";

//获取车辆区域
NSString *const GetCarPlat = @"api/fuse/auto/area";

//获取车辆产品列表
NSString *const GetCarProductList = @"api/fuse/product/productList";

//获取车辆加装费上下限
NSString *const GetCarMaxMin = @"api/fuse/productAuto/calcAutoPriceCoverage";

//修改附加险费用
NSString *const ChangeAddtinalPremi = @"api/fuse/productAuto/calcTPLPrice";

//车险报价
NSString *const GetCarQuote = @"api/fuse/auto/quote";

//普通险报价
NSString *const GetGeneralQuote = @"api/fuse/general/quote";

//旅游报价
NSString *const GetTravelQuote = @"api/fuse/travel/quote";

//显示隐藏或者非必填字段
NSString *const HiddenOrShowCar = @"api/fuse/auto/fields";

//上传图片
NSString *const uploadImage = @"api/fuse/file/oper/file/upload";

//下单
NSString *const getOrder = @"api/fuse/auto/policy";

//PA下单
NSString *const PaGetOrder = @"api/fuse/auto/paPolicy";

//筛选旅游险显示影藏
NSString *const filterTravelInsurance = @"api/fuse/policy/travelFilterList";

//普通险产品列表
NSString *const getTravelList = @"api/fuse/product/productList";

//普通险产品详情
NSString *const getTravelProductDetail = @"api/fuse/productGeneral/details";

//过滤普通险受益人被保人隐藏或显示
NSString *const filterIns = @"api/fuse/product/generalProdcutFieldList";


//获取普通险附加信息
NSString *const getInsuranceAddtionalInfo = @"api/fuse/productGeneral/addition";

//普通险下单
NSString *const GeneralOrderPay = @"api/fuse/policy/generalPolicyOrder";


//获取代理信息
NSString *const GetAgentInfo = @"api/fuse/agent/detail";

//修改个人信息
NSString *const ChangeAgentInfo = @"api/fuse/agent/updateInfo";

//获取银行卡列表
NSString *const GetBankCard = @"api/fuse/bankCard/select";

//查询汽车分类
NSString *const GetAutoType = @"api/fuse/query/autoCategory";

//银行卡提现
NSString *const BankCardWithdraw = @"api/fuse/bankCard/withdraw";

//获取当前国家银行
NSString *const GetNationalBankList = @"api/fuse/countryBankCard/select";

//添加银行卡
NSString *const AddBankCard = @"api/fuse/bankCard/Add";

//交易列表
NSString *const GetBonusHistory = @"api/fuse/agent/hisTransaksiV1List";

//提现历史列表
NSString *const GetWithdrawHistory = @"api/fuse/agent/hisWithDrawList";

//提现详情
NSString *const GetWithdrawDetail = @"api/fuse/withdraw/queryDesc";

//取消提现
NSString *const CancelWithdrawV2 = @"api/fuse/agent/cancleWithDraw";


//保单列表
NSString *const GetPolicyListV2 = @"api/fuse/policy/policyList";

//车险保单详情
NSString *const GetCarPolicyDetailV2 = @"api/fuse/policy/autoPolicyDetails";

//主保单详情
NSString *const GetMainPolicyDetail = @"api/fuse/policy/policyDetails";

//普通险保单详情
NSString *const GetGeneralPolicyDetailV2 = @"api/fuse/policy/generalPolicyDetails";

//支付方式列表
NSString *const GetPayMothordV2 = @"api/fuse/pay/payTypeList";

//VA支付
NSString *const VApay = @"api/fuse/pay/nicePayVA";

//VA支付银行列表
NSString *const GetPayBankList = @"api/fuse/pay/bankList";

//信用卡支付
NSString *const CreditCardPay = @"api/fuse/pay/nicePayCC";

//现金支付
NSString *const CashPay = @"api/fuse/pay/cashPay";

//旅游险目的地
NSString *const GetTravelDestination = @"api/fuse/product/travelArea";

//下线列表
NSString *const DownlienListV2 = @"api/fuse/DownLineList/Query";

//维修店列表
NSString *const getWorkshopListV2 = @"api/fuse/shop/workShopList";

//获取图片完整链接
NSString *const getImageFullPath = @"api/fuse/file/oper/file/get";

//编辑保单
NSString *const EditPolicyV2 = @"api/fuse/policy/autoPolicyEdit";


//摩托车品牌
NSString *const GetMotoBrandV2 = @"api/fuse/moto/brand";

//摩托车类别
NSString *const GetMotoTypeV2 = @"api/fuse/moto/type";

//摩托车类型
NSString *const GetMotoSeriesV2 = @"api/fuse/moto/series";

//摩托车年份
NSString *const GetYearSeriesV2 = @"api/fuse/moto/year";

//修改保单状态
NSString *const ChangePolicyStatusV2 = @"api/fuse/policy/changeStatus";

//代理身份认证
NSString *const AgentCertificationV2 = @"api/fuse/agent/authentication";

//代理认证状态
NSString *const GetCertificationStatus = @"api/fuse/agent/authenticationStatusQuery";

//上传fcm token
NSString *const SendFcmToken = @"api/fuse/user/mobileTokken";

//新注册代理登录后是否弹窗

NSString *const SpecialActivity = @"api/fuse/agent/activity";

//获取更新信息
NSString *const UpdateAppV2 = @"api/fuse/operation/versionInfo";

//doku支付
NSString *const DokuPayV2 = @"api/fuse/pay/dukoPay";

//现金支付
NSString *const CashPayV3 = @"api/fuse/pay/cashPay";

//银行转账
NSString *const BankTransferV2 = @"api/fuse/pay/bankTransfer";

//保单续约保单列表
NSString *const GetRenewalPolicyList = @"api/fuse/renew/policyList";


NSString *const SendPolicyQuotationLink = @"api/fuse/policyQuotation/sendPolicyQuotationLink";

#pragma mark - 特殊需求

NSString *const GetSpecialProductList = @"api/fuse/activity/queryProductList";


//续约下单接口
NSString *const RenewalPolicy = @"api/fuse/renew/policy";

//续约获取产品详情
NSString *const RnealCarProductDeatil = @"api/fuse/renew/additional";

//续约获取产品详情
NSString *const getCurrentAgentDetailBonus = @"api/fuse/agent/agentDownlineStatistics";

//旅游险下单
NSString *const TravelPolicyOrder = @"api/fuse/policy/travelPolicyOrder";

//获取消息列表
NSString *const GetInboxNotification = @"api/fuse/Inbox/Query";

//更改消息为已读
NSString *const UpdateNotificationToread = @"api/fuse/Inbox/update";

//获取验证码
NSString *const OTPgetCode = @"api/fuse/forgetPassword/sms";

//验证码是否正确
NSString *const IsCorrectOtpCode = @"api/fuse/password/smsReset";

//登录页面重置密码
NSString *const FogetPasswordReset = @"api/fuse/password/reset";

//获取广告列表
NSString *const GetPromotionList = @"api/fuse/promotion/list";

//更新广告是否已读
NSString *const UpdatePromotionToread = @"api/fuse/promotion/read";

//全部已读
NSString *const UpdateInboxToread = @"api/fuse/Inbox/allread";

//生成红点
NSString *const UpdateRedPoint = @"api/fuse/Inbox/showred";

//充值金额列表
NSString *const ChargeAmountList = @"api/fuse/topup/amount";

//获取反馈列表
NSString *const GetFeedbackList = @"api/fuse/feedback/init";

//上传反馈
NSString *const UploadFeedback = @"api/fuse/feedback/add";

//获取倒计时
NSString *const GetCountTime = @"api/fuse/countdown/init";

//是否可筛选产品
NSString *const AutoCanNext = @"api/fuse/autoPolicy/canNext";

//上传支付凭证ID
NSString *const UploadProofId = @"api/fuse/payment/uploadProof";

//信用卡支付列表
NSString *const CreaditPayList = @"api/fuse/creditCard/payTypeList";

//合法的旅行险日期
NSString *const IsValidateDay = @"api/fuse/product/traveldayvalidate";

//旅游险一物多价
NSString *const GetMultiPrice = @"api/fuse/travel/multiPrice";

NSString *const newMultiPrice = @"api/fuse/travel/newMultiPrice";


//旅游险一物多价
NSString *const theNewTravelList = @"api/fuse/product/travelList";

//旅游险一物多价
NSString *const NewTravelProductList =@"api/fuse/product/newTravelList";

//未支付保单列表
NSString *const AllUnpaidPolicyList = @"api/fuse/policy/unpaidList";

//pay later支付
NSString *const PayLaterQuest = @"api/fuse/pay/payLater";

//pay later 未支付列表
NSString *const PayLaterUnpaidList = @"api/fuse/payLater/unpaidList";

//根据邮编匹配地址
NSString *const MathAddressByPost = @"api/fuse/province/getcity";

//特殊险下单
NSString *const ExternalPolicyOrder = @"api/fuse/other/orderExternalPolicy";

//特殊险保单列表
NSString *const GetOtherPolicyList = @"api/fuse/other/externalPolicyList";

//特殊险保单详情
NSString *const GetOtherPolicyDetails = @"api/fuse/other/externalPolicyDetail";

//校验人寿险ktp是否合格
NSString *const ValidateLifeInsuranceKtp = @"api/fuse/check/life";

//人寿险获取省市
NSString *const GetLifeInsuranceProvince = @"api/fuse/simas/getcity";

//背书下单
NSString *const EndorsementOrder = @"api/fuse/endorsement/policyOrder";

//背书列表
NSString *const EndorsementPolicyList = @"api/fuse/endorsement/policyList";

//物流详情
NSString *const ExpressProcessInfo = @"api/fuse/track/list";

//是否同意背书
NSString *const EndorsChangeStatus = @"api/fuse/endorsement/review";

//首页刺激系统轮播
NSString *const HomePageLoopData = @"api/fuse/excite/query";

//删除quote保单
NSString *const DeleteQuotePolicy = @"api/fuse/delete/quatation";

//修改app语言
NSString *const ChangeAppLanguage = @"api/fuse/change/language";

//手动录入保单列表
NSString *const ManualPolicyList = @"api/fuse/backdoor/policyList";

//手动录入保单详情
NSString *const ManualPolicyDetail = @"api/fuse/backdoor/policyDetail";

//手动录入保单同意或拒绝
NSString *const AgreeeOrNotManualPolicy = @"api/fuse/backdoor/agentConfirm";

//fusePoint交易历史
NSString *const FusePointHistory = @"api/fuse/fusePoint/detail";

//fusePoint兑换历史
NSString *const FusePointExchangeHistory = @"api/fuse/fusePoint/exchangeHistory";

//发起fusePoint兑换
NSString *const ExchangeFusePoint = @"api/fuse/fusePoint/exchange";

//获取优惠券列表
NSString *const GetCouponList = @"api/fuse/coupon/list";

//核销优惠券
NSString *const WriteOffRandom = @"api/fuse/coupon/writeOff";

//获取保单已绑定的优惠券
NSString *const BindedCouponList = @"api/fuse/coupon/getCouponByFusePolicyCode";

//购买流程会员等级说明
NSString *const BuyFlowFusepointDetail = @"api/fuse/members/preCalcConf";

//生成支付短链接
NSString *const PayShortLinkUrl = @"api/fuse/sharePayLink/getPayShortLink";

//更新用户信息
NSString *const UpdateLoginInfo = @"api/fuse/user/sign";

//财产险基础信息
NSString *const PropertyRiskInfo = @"api/fuse/property/getEnum";

//财产险产品列表
NSString *const GetPropertyProductList = @"api/fuse/property/getProductList";

//财产险产品详情
NSString *const PropertyProductDetail = @"api/fuse/property/productDetail";

//财产险产品列表
NSString *const PropertyOrder = @"api/fuse/property/propertyOrder";

//财产险询价
NSString *const PropertyQuotation = @"api/fuse/property/propertyQutation";

//校验续约信息
NSString *const CheckRenewalInfomation = @"api/fuse/auto/renewCheck";

//校验续约信息
NSString *const KtpOrPassportValid = @"api/fuse/blackList/validation";

//是否能邀请朋友
NSString *const isValidInviteFriend = @"pre/agent/getAgentInfo";

//上传手机联系人
NSString *const UploadContactInfo = @"api/fuse/agent/book";

//健康险省份城市
NSString *const GetHealthArea = @"api/fuse/health/city";

//健康险产品列表
NSString *const GetHealthProductList = @"api/fuse/health/productList";

//健康险下单
NSString *const HealthPolicyOrder = @"api/fuse/health/order";

//车险产品详情
NSString *const GetCarProductDeatil = @"api/fuse/query/autoProductDetail";

//免单支付金额
NSString *const GetFreePayFee = @"api/fuse/coupon/calcActualAmount";

//获取产品最大提成比例
NSString *const GetProductMaxCommission = @"api/fuse/product/getMaxCommissionScale";

//上传混合支付信息
NSString *const BindPayBonusInfo = @"api/fuse/product/bindPayInfo";

//paynow是否能继续支付
NSString *const CanGoOnPayNow = @"api/fuse/product/goOnPayNow";

//租车服务列表
NSString *const RentCarList = @"api/fuse/carRental/findServiceList";


//代理年度统计
NSString *const agentYearData = @"api/fuse/agent/statsTotal";

//租车服务列表
NSString *const ShowFaceAuth = @"api/fuse/sys/showFaceDiscern";

//续约查询财产险产品详情
NSString *const RenewPropertyProductDetail = @"api/fuse/property/queryPropertyProductDetail";

//能否背书
NSString *const canEndorsNext = @"api/fuse/get/agentEndorsementCount";

//发起理赔
NSString *const CreateCliamInfo = @"api/fuse/auto/createAutoClaim";

//编辑理赔
NSString *const EditCliamInfo = @"api/fuse/auto/editClaim";

//编辑代理信息occu列表
NSString *const GetEditOccuInfo = @"api/fuse/agent/occuAndLoc";

//支付统一调用接口
NSString *const NewCommonPay = @"api/fuse/";

//获取marine cargo 保单详情
NSString *const GetCargoPolicyDetail = @"api/fuse/mc/policyDetails";

//获取marine cargo 字段筛选
NSString *const FilterCargoCharector = @"api/fuse/mc/queryProductField";

//扫描车牌引擎号
NSString *const ScanPlatEngine = @"fuse-api/api/ocr";

//获取 ROP 保单详情
NSString *const GetROPPolicyDetail = @"api/fuse/rop/policyDetails";

//获取 首页Inquiry
NSString *const GetHomeInquiry = @"api/fuse/smallShop/statistics";

//获取 admin fee
NSString *const GetNewAdminFee = @"api/fuse/product/getAdminFee";

//获取 MoveAble第一步下拉文案
NSString *const GetMoveAbleDropDownText = @"api/fuse/moveAble/getDropDownText";
// 获取 MoveAble 产品列表
NSString *const GetMoveAbleProductList = @"api/fuse/moveAble/getProductList";
// 请求展示和必填字段
NSString *const GetMoveAbleProdcutFieldList = @"api/fuse/product/generalProdcutFieldList";
//获取MoveAble 产品详情
NSString *const GetMoveAbleProdcutDetail = @"api/fuse/moveAble/getProductDetail";
// MoveAble 询价
NSString *const GetMoveAbleGetQuote = @"api/fuse/general/quote";

NSString *const GetMoveAbleGeneralProdcutFieldList = @"api/fuse/product/generalProdcutFieldList";

NSString *const GetMoveAblePolicyDetail = @"api/fuse/policy/generalPolicyDetails";

//校验引擎号车架号是否能继续购买
NSString *const ChassisOrEngineCanNext = @"api/fuse/auto/existEngineOrChssis";

//smse登陆获取验证码
NSString *const SMSLoginCode = @"api/fuse/send/loginVerifyCode";


//点击推送统计
NSString *const PushNotificationAlaytice = @"api/fuse/pushApp/getResponse";

//获取邀请好友链接
NSString *const InviteFriendLink = @"api/fuse/register/getShortLink";

//优惠券排序
NSString *const CouponFilterFirst = @"api/fuse/coupon/updateCouponSelectedStatus";

//other险种购买列表
NSString *const GetQueryOtherProductList = @"api/fuse/other/queryOtherProductList";

//pay now 弹框信息
NSString *const GetPayNowMsg = @"api/fuse/policy/payNow/alertText";

//other险种购买列表
NSString *const GetPayTypeInfo = @"api/fuse/payment/payTimeType";
