Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F221E5B8EE6
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 20:31:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229565AbiINSbw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 14:31:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229511AbiINSbv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 14:31:51 -0400
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (mail-tyzapc01hn2200.outbound.protection.outlook.com [52.100.223.200])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E00497330A;
        Wed, 14 Sep 2022 11:31:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vl0PXC3ilGCGn4wtPT0hMvGIC0eueHgEIFTGvn17wdcA6bXj0JbwudcybzPZlnBjHRO6QzYMT6CZIEvxmvJcsusGKwbxuHFqymARZQ6hQM9i+im7wMBLCYPOQ7ZJx45xYTTg9yP4kA6Ce0fkau9RpZKdzpBQVJlwQ+A0mfNn5Lw+ZxlQAdPgQ1exiBAIsUSlnNDvwJM/jalfBp2dC1UP0pV3dryq163rYjtDRXWXsByzlMpfvQLXFZyqB1Yv6EmMPWbhfcPrTKFu+6Y89aWyd7wPJSBmTLCL1Cm8PcA6O2nKlH8XXEDtEZXNWsa5LY6Cbr7rI1L0w9XUUIA8rF/+4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bs10Md+15nMnyayKLyd22Uv+/ZH79IcFcpzuzGLq1Fg=;
 b=Uryzxd3LYDtOQO8VpulX6kkUEbm+pzCCnT389rGOnGSec0tpEJ9PlJTO/HsYLBA7xB8G0uq3zkdRulGZwD826KMjmOF0KwGx4cG0ZtGOI3GoUfLqlvr+H1FPHagwb2r3tnnf26bsrt9MEOC0Y7GDKAr5mqnw5knyEoPk+sSEPo5jgFe7nfXP6UgsUe4CtCqmoL3MVGBCcr5u/6kIBY78Yd38n+7XEdKHoaM/YLMRrjcG2QDA0qGpVEYsi62bXnupN8LW8wPbZ1NdoaxckidEUZaxR0e0QqPS6ShhLhdFABTDBu/MQ3H4iafBfJ1DRtgoOUBkXKKvr5vJkMlWQCWDXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 37.19.199.139) smtp.rcpttodomain=3x-7d9432a51d.png smtp.mailfrom=t4.cims.jp;
 dmarc=bestguesspass action=none header.from=t4.cims.jp; dkim=none (message
 not signed); arc=none (0)
Received: from TYCPR01CA0147.jpnprd01.prod.outlook.com (2603:1096:400:2b7::12)
 by SEZPR04MB6755.apcprd04.prod.outlook.com (2603:1096:101:ea::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Wed, 14 Sep
 2022 18:31:44 +0000
Received: from TYZAPC01FT042.eop-APC01.prod.protection.outlook.com
 (2603:1096:400:2b7:cafe::fb) by TYCPR01CA0147.outlook.office365.com
 (2603:1096:400:2b7::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.12 via Frontend
 Transport; Wed, 14 Sep 2022 18:31:44 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 37.19.199.139)
 smtp.mailfrom=t4.cims.jp; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=t4.cims.jp;
Received-SPF: Pass (protection.outlook.com: domain of t4.cims.jp designates
 37.19.199.139 as permitted sender) receiver=protection.outlook.com;
 client-ip=37.19.199.139; helo=User; pr=M
Received: from mail.prasarana.com.my (58.26.8.159) by
 TYZAPC01FT042.mail.protection.outlook.com (10.118.152.183) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5632.12 via Frontend Transport; Wed, 14 Sep 2022 18:31:44 +0000
Received: from MRL-EXH-02.prasarana.com.my (10.128.66.101) by
 MRL-EXH-02.prasarana.com.my (10.128.66.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Thu, 15 Sep 2022 02:31:23 +0800
Received: from User (37.19.199.139) by MRL-EXH-02.prasarana.com.my
 (10.128.66.101) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Thu, 15 Sep 2022 02:30:46 +0800
Reply-To: <rhashimi202222@kakao.com>
From:   Consultant Swift Capital Loans Ltd <info@t4.cims.jp>
Subject: I hope you are doing well, and business is great!
Date:   Thu, 15 Sep 2022 02:31:31 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="Windows-1251"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <994c9eb8-288c-4afa-bce3-de22fa6cebb3@MRL-EXH-02.prasarana.com.my>
To:     Undisclosed recipients:;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: ip=[37.19.199.139];domain=User
X-MS-Exchange-ExternalOriginalInternetSender: ip=[37.19.199.139];domain=User
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZAPC01FT042:EE_|SEZPR04MB6755:EE_
X-MS-Office365-Filtering-Correlation-Id: 92435f22-d595-4991-72cf-08da967f6038
X-MS-Exchange-AtpMessageProperties: SA|SL
X-MS-Exchange-SenderADCheck: 0
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?windows-1251?Q?cupoEo+oL772SSmhK1JjwE4r5Tc6YuHh//LAxmhRp9pXTtVKWDTyAlXb?=
 =?windows-1251?Q?3OZX0pboZuI47eWI/eEZNjN3pSQlOuTvxErjInTMXR7uCHcrfzQO73PV?=
 =?windows-1251?Q?cPVJG8Zys4W1VguJc9EHD5Ry5cYBEW0kLZPrB8cSfpYWJHGx5cglEqmK?=
 =?windows-1251?Q?F6DE9Vv1ENeupJhXlM6LIVf2YaTdRE0FCIC8TayaH4SNE5lleO5Fa6zv?=
 =?windows-1251?Q?bwamWp2s4ysUDZ5yNc1QFfF1HofCL/eVZoHZ4I1R6qvuOIYV8aZKxt2U?=
 =?windows-1251?Q?Bfp17mIe69iL6clsoeHgSrnFgKw0eGJHGgQ8dybqhaZpV9tI294hsW7C?=
 =?windows-1251?Q?kDIX3nGglxG8J42nEBdm8ZAIl7Y/ykVuo/EEm9KhpTfK7zHy7JFKE5/U?=
 =?windows-1251?Q?KUJ63ijICkvL5iqWiX9HgE4Jg9eyl7UgcSTBlZL/NB5/aTuuk8CwxyNH?=
 =?windows-1251?Q?yrblYxvuIQRMXka5BOtIGfvNtXvGW1RhVNlQQugmkWXnXRYqGrrnINSm?=
 =?windows-1251?Q?BxUThdxCrcJT89MCOsrojtymYpwrn0PkMVID3O4mknb29DNeoVBWyEUL?=
 =?windows-1251?Q?YOgUC8ItxkUWz8hAWcLR94jfd+vVh734kguoraXjU2OSW5d18zYJQmyl?=
 =?windows-1251?Q?/+ueo0vDRH5oTpuFUgre8aQSTiIP7Onl7dSw0AmBs+r9jzJLBgV+KXkn?=
 =?windows-1251?Q?yrHj67VaZBBChBA3nb5wndJM+rxuMCXv6czRHUeDHZObg1HGGQT5pHFE?=
 =?windows-1251?Q?deKBHpPkIqsqAUUXZ8vmUKMantYVpHUt6o3yEQtdzqTpnjlHjzSjg/fh?=
 =?windows-1251?Q?EvVCaPhWK43NLer3KEc89JpBGGPaJ8B0xlvV8YJWLEnh3bGpDLFYVQHp?=
 =?windows-1251?Q?bcMcxLb+1muam3Rn0hqogX0zhgW0NUKPRrcnAOrta5Bzn1wXW4FikjJz?=
 =?windows-1251?Q?iCNXHV3Y1njnY3XMcp/vDRI42XnmffU1mCVfSlUtPRuJjhoXrLXoU1y+?=
 =?windows-1251?Q?wMZO9OU9sYnYH92uY6No/1ENNx+9EETYlcJW2jSMu1QNRBLQJwMz73na?=
 =?windows-1251?Q?EVIF900oNL2fk/eHp9DWmGwgPj0ys0WvxpQ4E7gh1lEmWIiNLKoE1o8H?=
 =?windows-1251?Q?034BVCQn02P34tN+tIQ3aJJP3gV+G+iFgH6aoX3N9wNS8fnV3YI/ZpWS?=
 =?windows-1251?Q?VAZbPl6rrCWf+tEmASB3/yDtBAl3ynlCCYqr8E7XQmSqk5CfSxX7Vrjz?=
 =?windows-1251?Q?gfzrgcCfA7Pcqq4hHwJbcpQ3s9FbR2C2krHbHAlBEgZibhCpwR1ylJ/j?=
 =?windows-1251?Q?KAInUJwz7RM2atSFpdimGF2TWTkhZTdMW+NB/MxBp+3UpeZf?=
X-Forefront-Antispam-Report: CIP:58.26.8.159;CTRY:US;LANG:en;SCL:5;SRV:;IPV:NLI;SFV:SPM;H:User;PTR:unn-37-19-199-139.datapacket.com;CAT:OSPM;SFS:(13230022)(4636009)(376002)(396003)(136003)(346002)(39860400002)(451199015)(40470700004)(46966006)(47076005)(26005)(336012)(316002)(7406005)(40480700001)(81166007)(8936002)(2906002)(86362001)(31696002)(31686004)(40460700003)(109986005)(35950700001)(70206006)(9686003)(41300700001)(82740400003)(956004)(6666004)(156005)(82310400005)(7416002)(5660300002)(36906005)(498600001)(32850700003)(70586007)(4744005)(8676002)(2700400008);DIR:OUT;SFP:1501;
X-OriginatorOrg: myprasarana.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 18:31:44.4422
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 92435f22-d595-4991-72cf-08da967f6038
X-MS-Exchange-CrossTenant-Id: 3cbb2ff2-27fb-4993-aecf-bf16995e64c0
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3cbb2ff2-27fb-4993-aecf-bf16995e64c0;Ip=[58.26.8.159];Helo=[mail.prasarana.com.my]
X-MS-Exchange-CrossTenant-AuthSource: TYZAPC01FT042.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR04MB6755
X-Spam-Status: Yes, score=6.2 required=5.0 tests=AXB_XMAILER_MIMEOLE_OL_024C2,
        AXB_X_FF_SEZ_S,BAYES_50,FORGED_MUA_OUTLOOK,FSL_CTYPE_WIN1251,
        FSL_NEW_HELO_USER,HEADER_FROM_DIFFERENT_DOMAINS,NSL_RCVD_FROM_USER,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [52.100.223.200 listed in list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5009]
        *  0.0 NSL_RCVD_FROM_USER Received from User
        *  3.2 AXB_X_FF_SEZ_S Forefront sez this is spam
        *  0.0 FSL_CTYPE_WIN1251 Content-Type only seen in 419 spam
        * -0.0 RCVD_IN_MSPIKE_H2 RBL: Average reputation (+2)
        *      [52.100.223.200 listed in wl.mailspike.net]
        * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
        *  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
        *      mail domains are different
        * -0.0 SPF_PASS SPF: sender matches SPF record
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 AXB_XMAILER_MIMEOLE_OL_024C2 Yet another X header trait
        *  0.0 FSL_NEW_HELO_USER Spam's using Helo and User
        *  1.9 FORGED_MUA_OUTLOOK Forged mail pretending to be from MS Outlook
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

I hope you are doing well, and business is great!
However, if you need working capital to further grow and expand your business, we may be a perfect fit for you. I am Ms. Kaori Ichikawa Swift Capital Loans Ltd Consultant, Our loans are NOT based on your personal credit, and NO collateral is required.

We are a Direct Lender who can approve your loan today, and fund as Early as Tomorrow.

Once your reply I will send you the official website to complete your application

Waiting for your reply.

Regards
Ms. Kaori Ichikawa
Consultant Swift Capital Loans Ltd
