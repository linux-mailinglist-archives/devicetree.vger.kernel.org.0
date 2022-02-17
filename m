Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31B464B98B7
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 07:02:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229911AbiBQGAl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 01:00:41 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:51110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229847AbiBQGAk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 01:00:40 -0500
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-sgaapc01on2051.outbound.protection.outlook.com [40.107.215.51])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B5E728D3AD
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 22:00:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MlkfpJmNe2FcYLo2dbort8+kn0ZRgYwjvK0ynZOHXz23BzJz7pWa/EZZdbGKCW66YamV8E7bJhCaC2GUOOufw3tW8gY13JHNVQlujvBnZh8QZxFHPsEO7MC+fLZob/hmesaSUKsPXSoSk2qZgOPlG/NwX6k0tH8sXHA5s/NOhP4f7b2yIn0d4WJ3slULjqHRQkvpwrKpwZurcFQynnjkVI8Da9ILUvYxuQ70VqutERnTctAwMvils7hjWtAqpLJgjgL2sGp/ST6wPNcag0qvIt/sy/0KFabQ7V/kFIFB0Kpai8jT0cEAZznSlTi7lJP4U56PEh2rAn/CmLg1YfnWMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BEyo9zenBLycEDfxQKxPGKkoUPnRpfL0Xn7QT/4E5lE=;
 b=Tlx6LRPo9POsw43aA+YPnlNqAvLg3RYbSdWWet0hbZSf5Ei27UEjkTvhlhz2adNjgYsHvNQ8onBv7F6zbUE0xpbOrYWiav6bwZQwUhx07RPRMuCtUYhXYdE0lgq8uEOmLOWQlEBx8HSzJONc4jMN+/nakhDr949bWVmN9edRyVmoSiOLKfNTuJkEJvL/GgBg6V9f2vJ/+f5TvLNQwowa59aTQxkY7dcJYBkmp9efjSX4kIuNldPbC4SXncMh2wYQIaLvycCclBhHrNWyjbHqi5DNbbP3RxCT1WU+Z2KJJmkYDBWm2ON5NDEW340jKM8RSsOC2oKndigNvYGgOQ10UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nuvoton.com; dmarc=pass action=none header.from=nuvoton.com;
 dkim=pass header.d=nuvoton.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nuvoton.onmicrosoft.com; s=selector2-nuvoton-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BEyo9zenBLycEDfxQKxPGKkoUPnRpfL0Xn7QT/4E5lE=;
 b=Y+txwPqkOprt0oQ4E1v0oW5tU5p1qHrfWqEerpkNC8HqK472qgJg3ERIBwwJktkf84T426vdfXQai5jxQZkq/JQbrhr4UnEWkTVZ6xaRQUG8RidAHRmHLXRTWnA6jcl8bTVRRuZjWX8H99WEjISOXfyMMyJnbkf62fnxGuNeIs0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nuvoton.com;
Received: from HK0PR03MB3937.apcprd03.prod.outlook.com (2603:1096:203:97::12)
 by KL1PR03MB4917.apcprd03.prod.outlook.com (2603:1096:820:1a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.14; Thu, 17 Feb
 2022 06:00:22 +0000
Received: from HK0PR03MB3937.apcprd03.prod.outlook.com
 ([fe80::a564:9d5e:a0d6:1ef]) by HK0PR03MB3937.apcprd03.prod.outlook.com
 ([fe80::a564:9d5e:a0d6:1ef%6]) with mapi id 15.20.4995.013; Thu, 17 Feb 2022
 06:00:22 +0000
From:   CFLi0@nuvoton.com
To:     devicetree@vger.kernel.org
Subject: 
Date:   Thu, 17 Feb 2022 14:00:16 +0800
Message-Id: <20220217060016.32240-1-CFLi0@nuvoton.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-ClientProxiedBy: HK2PR03CA0047.apcprd03.prod.outlook.com
 (2603:1096:202:17::17) To HK0PR03MB3937.apcprd03.prod.outlook.com
 (2603:1096:203:97::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3044d8d8-df63-4ad2-07a5-08d9f1dac8e4
X-MS-TrafficTypeDiagnostic: KL1PR03MB4917:EE_
X-Microsoft-Antispam-PRVS: <KL1PR03MB49170BE5C5FAD42B7E72FB88F2369@KL1PR03MB4917.apcprd03.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
X-MS-Oob-TLC-OOBClassifiers: OLM:1728;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UpFyx5IRTNmStyt3EJ/2kJrJogC+5BuuCR/0CUzgPBKzRcVuhwU207sBOwuRVoKXW1Natf2oRWiimPX2boHYhjQ7lYBKKeakjSPYmkJlscVLdt06e9Ky7LtfCuuT4tPqQ/+zZNeTWkkkkYre3mp9fmlRmY+HqswN/dcem+CXOLhd93Vns/WHHkVsOvGIOIsl39+XfOvAmmG40PFVZQxJ+EI5GiFQ0a4l+zkickQSTdwYQu6AOot0Mmk0lTrgmzFR6IaPKONfXF+/+ZC3gbNxaX6ysEvQ4aSd50VEtEmVSxpltG4igVuaTUpRArTYL6fskZPpIRmw6QiIIWTKLRIXpqoo/8iZujsovTPb97yucPmiDZnimqQa8tY+wvQDyXiWovTtPeg6/JzDUHcNPEXMIWRt9K1n3V0JnlE7edevOiMyaRtgtM75yZNhujabbyne1Xr29JVikmWxrzLIK4DnYmhA03yp/CIjS23A3J/mf5HOSpoDZQ9WbbNSe0l/8gzhOpfKI8+7tmlFwZ34lDicXTYxlnGwHQYiMEuleqV0NYnskeuk5pF67H1JTHkydy31OZuSZLwSBQUzypjnOP5xdEQAAkGB1AEVF95c0lf4ikcp+BiSTlzoCZyFWEVAHc1HF0PyCikEFbt4/+lqo4VT83fPsStdWxueoXVVmhbHtkvcOOZM3l7DjGBe4OBDoQIfuYdUYRtxeHQ2+h2sRVp24w==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HK0PR03MB3937.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(52116002)(6486002)(2616005)(6506007)(508600001)(36756003)(66946007)(83380400001)(6666004)(6512007)(9686003)(6916009)(66476007)(38350700002)(66556008)(38100700002)(86362001)(8936002)(2906002)(4744005)(1076003)(5406001)(316002)(26005)(5660300002)(186003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FWWagvR+1+Q52eHZRUJhNbEO5+AopM4OiBqGO5q3aogOrnSEUjf4XfGxSciz?=
 =?us-ascii?Q?s/cEvokBNkzlXpwZq9/lp1Jv8jKeR8KfaXAn0paY063s1K0XhUUT/nRXqHFM?=
 =?us-ascii?Q?9zagdtv86KRzmtbzp593tVOPK1J+oYCYv0CU0aZ+Fb2YfiHEqW6S8D43Zbc1?=
 =?us-ascii?Q?72EkwlYAiwaB6FwUsNEVbL4sYKYiDJmlWiuVtQ8lf3393Rl29XNp6GFIAGOv?=
 =?us-ascii?Q?77vlkEBdD269SEeyzrnhj/hngz4GHTC2N3juxLEHfgxn9WloIW6T+z6c+mmf?=
 =?us-ascii?Q?NKSWSOY8aaAC9WpgI21msZ3F36Vf9F05YgnPNI6Df4a0WSnIfQaR/ZEtaO73?=
 =?us-ascii?Q?jBlXIpVyoDyl+HtMnNct4NYdTkNHCoHXc5WXDcTO04TFOsnosfxtAsKAYhSX?=
 =?us-ascii?Q?ka9ptL7YjR9SGZ/Dv2bXOE1DqV2oFuQJQ7Ro4kLb/yESSM3/XfdG1auSIqav?=
 =?us-ascii?Q?9khhUI+yLtlxt17RK11QhuH3mOk8xoez30StH3UCrx0WlPYO1QATarWNvydN?=
 =?us-ascii?Q?Ny+ZPoLeKLjBKLftFMjeA1caPC5XncxDicPdBC8MICQML54KnT7pb+vEc3vL?=
 =?us-ascii?Q?9Ta8tZPIHudll5rB2Ho44Q8CndTJZM/Pj1hq5XeOOelFTr93RZRmGFymYt2v?=
 =?us-ascii?Q?Lv/pmysYoU3PbU/X5iCCqMk4lNicdpkNtelUfT65k5FpWNXuTDebGk/ZX6ZV?=
 =?us-ascii?Q?9ivhurSG/KE+mO7WzKk6rW9L4lMJEkMFm5MWWGQ9DVb+2f7foNjmHX5MDA8c?=
 =?us-ascii?Q?mRreazK8I7IO3a+LuczcqUviXA3FN0TQhfirHJQx+fJaR2c+t5FuYFbuHYxU?=
 =?us-ascii?Q?JcQ1MtIJfaEfACOV5eVB/vpCcnnxbSW4cPmxWZK3RgX/kRgKROJ75XOZOmnE?=
 =?us-ascii?Q?pZ/xxBj3ihtUXwCdc/ku5L2hWsCkNdao6ve/iB8INAKjJtOdSrXZSMEKk975?=
 =?us-ascii?Q?4afN5EFY+gA2AfW6fRBKyE5PUsor1f0KK00tlRGqpJSK7huYI/MGT6ljLYs1?=
 =?us-ascii?Q?ciYJOKmcsMkrcW1jgrpj0EJ1xx0DBNys5oL6XnoAWauOeW5qLQxFqS1MODgb?=
 =?us-ascii?Q?axnNnmxcqq5nCMyys4GumS8QZ0P/BmEKoKF4qUgYaNlhioe1JZujVoLvAC4T?=
 =?us-ascii?Q?rX76KzLXu5llv7ng8srugEierjMbTJlsFiNTxHz5znv6GPh1aj5A/yPM7DEH?=
 =?us-ascii?Q?jaXKpA+VyVonwZAB2tQUoNnk8+Z4z1oHn0DlGr3Ye3ufJSu6jJc/CbDElUAv?=
 =?us-ascii?Q?IvMBbS5mC2eSPIGAjoJWtAtC0WQ5cfGUiAkVRtJIEk2yToYMBoJuhyMndWEz?=
 =?us-ascii?Q?ylORkJbQqQT7ZPMs1yNP7ryJLGKj0A+0XO2Lf9Mngq4u9cAAEWbcbQN1izKy?=
 =?us-ascii?Q?Zw7+JhQe2WOjKdyS2BTVwGDYN32c0Zq5yaiD5pDg6UtprpECKpmrU2y3JZdY?=
 =?us-ascii?Q?FCLdY8DYJVOAjlTG7eGe1/yOAFmqDft8sg7oYKYYxqpSOwnoyP+ttHKbYsDr?=
 =?us-ascii?Q?1nNu7cCgt4Oy9py7Un0Qwyh/59+2LKTE44fc+7Ct8RdsOPAMWKJnToLCiyF8?=
 =?us-ascii?Q?EPTPfrSKHnc5MN1kwtI647wMh1LjpD6a4/ywJUZo093NdBm0o7z0r/GWOOFI?=
 =?us-ascii?Q?5gZIuh0UxDTDRsTwnVzrWOY=3D?=
X-OriginatorOrg: nuvoton.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3044d8d8-df63-4ad2-07a5-08d9f1dac8e4
X-MS-Exchange-CrossTenant-AuthSource: HK0PR03MB3937.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2022 06:00:22.8000
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a3f24931-d403-4b4a-94f1-7d83ac638e07
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RuRF1kDjqeO/TuFZZVNHgxHFUd+1xNQMwYCueFEMhQMWf5BQu2jkQkgqNpbBiyz73hOMu74jRvLgRcIr0a7zqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB4917
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

subscribe devicetree

________________________________
________________________________
 The privileged confidential information contained in this email is intende=
d for use only by the addressees as indicated by the original sender of thi=
s email. If you are not the addressee indicated in this email or are not re=
sponsible for delivery of the email to such a person, please kindly reply t=
o the sender indicating this fact and delete all copies of it from your com=
puter and network server immediately. Your cooperation is highly appreciate=
d. It is advised that any unauthorized use of confidential information of N=
uvoton is strictly prohibited; and any information in this email irrelevant=
 to the official business of Nuvoton shall be deemed as neither given nor e=
ndorsed by Nuvoton.
