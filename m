Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5A934D9E5B
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 16:09:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237934AbiCOPKm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 11:10:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234857AbiCOPKl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 11:10:41 -0400
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E16981263F
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 08:09:29 -0700 (PDT)
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
        by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 22FD4lKJ000728;
        Tue, 15 Mar 2022 15:09:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=eYM+yBW2DlTCLm/duti1qsFVJ+7Vc25dsIvpYZxUv4s=;
 b=0LNKRca9WsVo00h9gPGIBXwaXldDyczTWQdq9gMrRoFxvQ4vwnd5i8HRLTQo6ndY4da7
 PTIK+afR+qvULQkrRIbX2ENX0KWXhjEAmtWZsj8AJE0hT3vc5LqArJwKwp7xggLe+rIE
 Qq/R0TQCx7wRaw7fkpt69tRuB+z6OXY3RRC7cBzvpRjCb90ag9WRjg775TGEdVO8eLMN
 YVhDTPnuI+dpL0wjQYMw+tCTm/ZuUuUwLVMN2CKzRjj0GzCHzgAj/whR6QvXD+foe6An
 1hz0G/GR3QVpS5ruz9LaiLMD/PPw/IrPMh3FYUdOvJIzYdl9Z5vIDMervakaWGYdUNK3 uQ== 
Received: from userp3030.oracle.com ([156.151.31.80])
        by mx0b-00069f02.pphosted.com with ESMTP id 3et5fu3he9-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Tue, 15 Mar 2022 15:09:29 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
        by userp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 22FF6re4083427;
        Tue, 15 Mar 2022 15:09:27 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2104.outbound.protection.outlook.com [104.47.58.104])
        by userp3030.oracle.com with ESMTP id 3et65pnrcq-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Tue, 15 Mar 2022 15:09:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BiFPbRyoKBrjJYkQiVgGjl1ZD3dykx/Eat1+q8dRSbBaFrgqnaDsSiv31VlaphBXv6HwSsjCwZxC1YCnSeUJBzoA+mk1D9bWb1/yMBAQJo9XJnb+GqwByIRkNupZNO12vDuH40Esbw1xFYhzO8ikw17gU54obcBgSZTHFWZvBnhJYQ6bNkL17UWYRrOXFLSfJ2xPPgLZPFbrh4pjqPNiKeXAUYpYjpz/JFoibvpYyO5k2TfAubP0cWWTZiyluKZXDc2ZhVHQn7SP+u2fQp2w2TFny1moeYbwDrLihZZiUMk4HQBzoj0o8BcxXmLiPBHB0x5ZO0fARyhyraWDfAifjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eYM+yBW2DlTCLm/duti1qsFVJ+7Vc25dsIvpYZxUv4s=;
 b=QWJoynIBFG2kFa00q7DI2RuNgb60TkR/TZg6Td3upvLrYOmcuEUc56e+yHufHkhVHpA+QaJl5TsRBnpxmxZE4S4tr/toaSHRXTgM9eQIT5boR9LSurFiNEeThoMZ8pT3dXNdv9KEYulyppmEEKYV9sea56ybH2FJEBfSmQD4jX2I0c3FgS635PtkqT7khEQBd+D0J8CQh+frSYU5Y5ciIuw4LGgtbVvs8sO64DdNIAIoKv6vp7zA9MqFj9GaHkfyEwbp43cJ2Mm+sXl2HOo0as9IVyMJ+8UCR/BnOvHHqaQ11IHg5VUNHAnhi+TnzoEwejIfcQPMWnIjGLdtAultAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eYM+yBW2DlTCLm/duti1qsFVJ+7Vc25dsIvpYZxUv4s=;
 b=raaAD9qsqOR/YzUK1Dmhevqen8EZ6I21pBhIYlp7FTWwqYzWd4VcG3tzaT0PXsSqxpukGodSKQ4vdBI3Inmx5jgqv+HkETKAw3eqpiINYvNWNPnHShwn1cEBgTfRz0XH4nx9BNzoDGmixSP8wi3/o7dWiePy+d9L9NZnA14gwIE=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by SA1PR10MB5823.namprd10.prod.outlook.com
 (2603:10b6:806:235::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.26; Tue, 15 Mar
 2022 15:09:21 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::2c3d:92b5:42b3:c1c5]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::2c3d:92b5:42b3:c1c5%4]) with mapi id 15.20.5061.022; Tue, 15 Mar 2022
 15:09:21 +0000
Date:   Tue, 15 Mar 2022 18:09:12 +0300
From:   Dan Carpenter <dan.carpenter@oracle.com>
To:     michal.simek@xilinx.com
Cc:     devicetree@vger.kernel.org
Subject: [bug report] of: base: Introduce of_alias_get_alias_list() to check
 alias IDs
Message-ID: <20220315150912.GA24574@kili>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: ZR0P278CA0136.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::15) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 597597a6-9dbf-4d87-3aad-08da0695c8d5
X-MS-TrafficTypeDiagnostic: SA1PR10MB5823:EE_
X-Microsoft-Antispam-PRVS: <SA1PR10MB5823E70BB50936EF4B1D350C8E109@SA1PR10MB5823.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ldEnmRXcgXsgVRw4peLcuUyxMVMCyXNhJez2UqS+JGsdcPKzAe2mBBQIaWxgmBJDHtQMHBGQ8G7ULWw7R+kNjnXvh9YTINNGbjP9LcW60s3rzOcFxTnKaRwkbWnF7RIe3Mtpa9s+Iyft/X3WuOVj6pVRVmBSja5aj8TpsXHBxe6/LkDnUByzucp62GZFaDDW6DhvSUcIdldRRlcsClGxO/LWBu5/96K+GyuYjlBoksLdkIBIbEP6RLqmmy7s5U93hS5SQxiq0k3ivczLkSFnRPGj3kb3e3f8HVvJRU16mDrf3netmQRoBDv5Sm5gGEHBekWNAOhVg/qhB6KwrjLOx7F/fcK/HREIlUUulwVoPZK4sE+2D0mVY74uvX2oSMOxRSkUoO+01D3WAaEgl4gUaKkzRAEi+K92XoVmIViIfha/7GArdB6RvUoXdorEel2cc2fLRfoWUgv02kdHhknU2eENOH6AzDCKDi8BHq6xXxWh3sBO4wU2MHZO36Ru9ynU9TACZykqEwRXwXtA/AHQ4Bkd2ooTgVeZeZdom3Z6vDPQydnpR0busnVjUxHdSnCpWzp4JeWszk3EU3ZnH0nTv6ucf3oIeW5GXQwFRTUA6dMu1X0uV4vn0KZDJ3Nxxj6ejIBhPsalc8nv4LBrZnYPaoumEyYSYX4cVjI2uprdXC4FqJq8LksZPZ3l/mPlwEXEMY/GECoftuilmNhKQidU3g==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1001MB2365.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(7916004)(366004)(83380400001)(8936002)(508600001)(186003)(316002)(26005)(6916009)(4326008)(2906002)(66946007)(8676002)(66476007)(66556008)(52116002)(5660300002)(1076003)(38350700002)(38100700002)(33656002)(86362001)(6512007)(6666004)(9686003)(44832011)(33716001)(4744005)(6486002)(6506007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FAKqOr0J4SFoSD/TSmP9piu+3JO05DbuXKTqq+FbQlJ84LKLFL9SwyKwnIHw?=
 =?us-ascii?Q?b2uvjVeVoVKszhyIFztjaOt+SFa0krT7iQN2ZqM8TY9W2yTHMx1ZHtDi9Cob?=
 =?us-ascii?Q?IkHdxe/Ryp8HoYPkVgGd98GjdfFX/ePJl3BeVbYa95OOlCVoMXrd9dMraXgS?=
 =?us-ascii?Q?Q06j+ttAQ8O8F4Uxpawc6CVPqNjr8dYg3EpVaWSqJBdwXpjPfzd42WgK7G09?=
 =?us-ascii?Q?ZxkNusBTrCDRmjsy0qO4Fi0K6nI1TsmYhSkNKqbF6+VNh6SDbDoxKWvokeWW?=
 =?us-ascii?Q?wftqUmw5srwDIS2YrXkTnQzeIzRqC0DbghbX7yQcYtQvixFsXp6KsUDmQclz?=
 =?us-ascii?Q?D8nEO1RLFhA6JNbBIrXdsLvbwY29wcieSlm1Lcq/aoLq/qSeZ1x1rRIUGzC4?=
 =?us-ascii?Q?vfWaHu2DkQ4PwfX2M/XWWgIQREsHDCrxXnXQcew9bHjumBCToFs6qAq6If5y?=
 =?us-ascii?Q?jT7Hsm1VQwlBM3c8eapmIQBeeIw0yAriczcW7YUJptfGR56cVINfVEgAd2Hx?=
 =?us-ascii?Q?iYX/l71CyD882z/4J+uPr4gt0jmqozEPzvecf81vkuDo1qE0mTEhtnMkMuAX?=
 =?us-ascii?Q?6KMfp/qpfmsVOnJYtoNEUJHths4iIzDjhebmaLhNzO02lCw04dLNeUO4OJb9?=
 =?us-ascii?Q?lVlLUBXZZDCj163U8ILqDJmyjVlA//ENYjmrwPKi61EgrHzeiL87+xNfqta1?=
 =?us-ascii?Q?0A1X3Q/1YyYsaGfDsD/wkXe8mmWI4TIREzb9iitbP3rJoTt5AQP/DUsPxXcD?=
 =?us-ascii?Q?MQxOQKtysrXFw766vEnipLdXHMla3CDnc0x5wtmfG8a64MTtMsOK7COXapzq?=
 =?us-ascii?Q?jYxA4LXm5xJKenWjb7XAv/qiYPk0JAT13rUQwr3vgFZV+rPGT0xYj9GtEVlk?=
 =?us-ascii?Q?b8fYr7XHaa/31laPux6wwepBJYdaOcUPBz0m5sEzxxjGZZOttze85A6CJ7nS?=
 =?us-ascii?Q?ulEXBXSxkQu+VD7iGGztgY2Mj80J7S009R4KTvQp2sfct9gSUTcbUt2WcIF7?=
 =?us-ascii?Q?2H1YuLWdBw5gwbF/glBVrV6B0clqBNZUVPq4lmPss+TI9ZwLypg9COzzaHU/?=
 =?us-ascii?Q?Hn7a/D8OzAhpwntbD9SDQT5ClqmaxsV5YoaRCME3SfWGEgLWmCAb+IIoO7cU?=
 =?us-ascii?Q?AG5W1HEcgzxCHl2ltn0eo/BWrD6FlKFhy7JGWkHc5zh3y59HNQdeaAuSNxsB?=
 =?us-ascii?Q?usvFVwmP3d2DXVthfaroTmpaYd2IYs76Kc45NzLTTvbF4LkjA5y4cTVY76/Q?=
 =?us-ascii?Q?T8x9eF+XZ+UWV0JgyKPcrqnOuhkTmLjSKdzp7Ddsf/MfLzACagt0ZVa6TQIn?=
 =?us-ascii?Q?DbIVXi1Jj0lgVqSfHiS7rm9smkfdr161m82Sy6ty46plxCIvBYuQWWB+ksk0?=
 =?us-ascii?Q?fSq25/tlmZ8MVoHaQsk9cg2cRAB7iwpDsuhf+A4w7xKyukqVgkrm169KupLa?=
 =?us-ascii?Q?MSbiwG+L+mO1prssDlG2hyB8ydeNMkGdCCqyz1koKc1qv2XwJ6EyEg=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 597597a6-9dbf-4d87-3aad-08da0695c8d5
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2022 15:09:21.7688
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2/Vp9i+e4fa8piPmqQecSwUED3dDu+j4q0u0Px0il1i0KNH31mHsMzkale6ErP1oUbYjm5Fkpr+pPlqFgiRH0cxTL0Fv+GX+8JPPWKNdcgg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB5823
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10287 signatures=693139
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=821 phishscore=0
 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203150099
X-Proofpoint-GUID: I51SNLQ9XB1jeAlZVF7XkmfSF3cbt4F2
X-Proofpoint-ORIG-GUID: I51SNLQ9XB1jeAlZVF7XkmfSF3cbt4F2
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Michal Simek,

The patch b1078c355d76: "of: base: Introduce
of_alias_get_alias_list() to check alias IDs" from Sep 20, 2018,
leads to the following Smatch static checker warning:

	drivers/of/base.c:2038 of_alias_get_alias_list()
	warn: passing negative bit value 's32min-(-2),0-s32max' to 'set_bit()'

drivers/of/base.c
    2028                 }
    2029 
    2030                 if (of_match_node(matches, app->np)) {
    2031                         pr_debug("%s: Allocated ID %d\n", __func__, app->id);
    2032 
    2033                         if (app->id >= nbits) {
    2034                                 pr_warn("%s: ID %d >= than bitmap field %d\n",
    2035                                         __func__, app->id, nbits);
    2036                                 ret = -EOVERFLOW;
    2037                         } else {
--> 2038                                 set_bit(app->id, bitmap);

Yes, there is a possibility for passing negative bits to set_bit().
But don't these bounds checks really belong in of_alias_add()?  Adding
invalid aliases seems like a risky thing.

    2039                         }
    2040                 }
    2041         }
    2042         mutex_unlock(&of_mutex);
    2043 
    2044         return ret;
    2045 }

regards,
dan carpenter
