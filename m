Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36D8F3E126C
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 12:18:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239999AbhHEKSk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 06:18:40 -0400
Received: from mail-am6eur05on2110.outbound.protection.outlook.com ([40.107.22.110]:44570
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S239866AbhHEKSk (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 5 Aug 2021 06:18:40 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZxY7qJ9VGk5yaSEAT2TvAObuVPKBT8YkhyLp0H+Dl9ZJY88yuoseejet0R1J9hlCBPYzMLzmvV3RQO75AEl2MOZuqH7fXFb/Dj4wwWVD0uwoF/dbjRBq7q6MFVVoJ3Tf8g52vsn396py116G5thwHPGrADSBp4HMPMNgkmHypeioWE+qvDYWbb3DTY7PKCz1y7jMlDlUcXllZnMcsx6Lz0+RsJ9jBcE/Lwc0cLbfS4FMknje/M5b5KCYXfz+0juxK83lpxtzN4ARje2lX8EW70un75Y1hvgBgxBQeY+mLjK4OPpTRfxkYMabVH7M4mXE+enI4+xwRcfN2wr7sy7FPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BN8NgR0BXFOnO1ms8HAe0lBmVqjJbzqEce3bVHcRNlA=;
 b=EG09bWexVS3blTfa7rOiaz4QG8b/51Vy6sFszoOqzcB8khOf0959TFIKjSLeoqT11k7wS5u7Wt8ykBwehBOMSR3unDJoZmUf0F0la+jPm5aI+8JilpOXLdTpTGAdfG4ndwcb3VZLSW2g6rerCdf98o6eR5VGXYy9fy+T2KwAW8AoDhRubl4HjZxdAOX/HoS8zjA/7Ki6GRfklqZ/5CChE0rSSM5kupSHL9ZpHeSq2QYY7W27iRLBxRS0xpR3slfD7i4VjMxFhe0FNu5T0T8VTUMLldIMTwdSf6N3gVUIMCseGv1854fvY3+8wb9UqQ/4YgBcHriTuf/gI0tZ/7nhwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BN8NgR0BXFOnO1ms8HAe0lBmVqjJbzqEce3bVHcRNlA=;
 b=OlXjaKwqYiO3d3D8/8OIYubDT/Y+VNDtsnDddEDISBsq6rHyXGQConr+FvSdFOpDnY4jehwcIkoKn0YfmIUr4vBOqkAZB7yFvTuG1k+80VU2tVsauCgrJl0hhXriZHXnaTs+cZyNTAvylxQGEhc2vO/wvM1y6WlrSeUc3+Zy/jU=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=kontron.de;
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:157::14)
 by AM0PR10MB3298.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:17e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.17; Thu, 5 Aug
 2021 10:18:24 +0000
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::30d6:1ff9:85e4:48d1]) by AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::30d6:1ff9:85e4:48d1%5]) with mapi id 15.20.4394.017; Thu, 5 Aug 2021
 10:18:24 +0000
Subject: Re: [PATCH v2 00/18] i.MX8MM GPC improvements and BLK_CTRL driver
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
Message-ID: <818b52fe-8fa6-b47a-6dde-783ac378c603@kontron.de>
Date:   Thu, 5 Aug 2021 12:18:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210721204703.1424034-1-l.stach@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM3PR07CA0077.eurprd07.prod.outlook.com
 (2603:10a6:207:6::11) To AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:157::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.10.32] (46.142.69.7) by AM3PR07CA0077.eurprd07.prod.outlook.com (2603:10a6:207:6::11) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.5 via Frontend Transport; Thu, 5 Aug 2021 10:18:23 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ad36d816-56e7-4dd0-a093-08d957fa5bd7
X-MS-TrafficTypeDiagnostic: AM0PR10MB3298:
X-Microsoft-Antispam-PRVS: <AM0PR10MB3298EC67AC2ADAB698201963E9F29@AM0PR10MB3298.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: f+OnnH0ceR29cU5jZO1SV3gS+si588AEETEh6lcz3hLj1Qfr3g/hDdxQ82D9VLcbVjg50ic43inJvsFWTHW6knWszT+ZA2DqNtBTHIlxpsY8X5Sv1shUFlsIKemUKoKWWKoLKl/fHLMxJShij0rLJiTibOOjmVbyW9McW/nu2s4WS8cm6LtG+vor1eG8GNc+JKUy+GZaFoFnq0yRjU6c4e4Cqg39QfAlt+qB5Pk7RaLGCiXWKJs5KEiu7Bg4qYbVgzdD+TThsIy1H+MKg1Bxb8yjxdj02e4La4M7Cle6nFaBV1a0oRwAwpbJcJfMmlQf1GxE43X/u/8z8JOTaSBj3Fdw0+YsY6uu2NaE91TCXP4TfYliBD1+kx5oxE4aCqVkDDnbRuec9yfQkiaaM9b21hDf9fTV3K6X2VFxg5y3m2zoueHH7XCYUq1TXOuSoS9w0ZUr1kdHQ8P5npcsta67KfpGxCyKVSd7us3HgY1TO7ZEthfeqwztmeC67UUp8DBrrNxoHEDUAftRhRyVqknVU+OCTW8b+qidw8L0eqpTqiP9EVFGJHoTsnoP4/he69zCPTBTaxlKld3/R5dMGoKVgifUxZj68W0YDT6hPFXJirtkz4S0Oo7ZdSONGKNfDXYomtqV+/oSEgSQrKPIPR879C6yiIFzFsdBZvPPhs/s08ezxwHplOr1jZEkk6MHhLA24XUnjYnd/bQqYxGl8oM1n1PKr7d6eb4Qg8aBcHK3R2jcIHpeQj8fTryoyi0ZOMfjwENVytm9cPG0lFrv02m+2+he2PK5Axurk0A8xWmLlkb2iAkVXXs6cwjMSZQwCo9D
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(396003)(346002)(39860400002)(376002)(86362001)(53546011)(478600001)(26005)(8936002)(966005)(956004)(38100700002)(44832011)(2616005)(5660300002)(36756003)(54906003)(110136005)(31696002)(83380400001)(31686004)(186003)(316002)(4326008)(16576012)(66556008)(66946007)(66476007)(8676002)(6486002)(7416002)(2906002)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWw5MDdNMnhYYlVTdG1LKzV5VFhwdElQT0k0ajA1OHRDa3lLeFNKNzBNUm9V?=
 =?utf-8?B?dlpNeVVQZk84OXlYb3RRbitweUw1STJKeGlQSUduaDM0d0NtYXlkekpKQ05H?=
 =?utf-8?B?MFFmbjErUlpYS1FMV0o0WHdDZEZUMC81MWk0RWZGKzB5NVZvMXBKc2FVcUJG?=
 =?utf-8?B?Uk1XZEF0T1FxWHh0aHJqemhqOVJyd05HWTZBeXJtbWlHako0V3dMNnRsdUkx?=
 =?utf-8?B?c0RycHhyZENJVFhjajRnQTluRjY0TGZKaUM0WG1GYnl1NE16MmsxcmFFRHlr?=
 =?utf-8?B?VHVFYnE2WUZEYjZCb0FnZmsxNk1CamlmUmNNVldlOGozeks1SmRWUVNkb2FV?=
 =?utf-8?B?VDBaVDE0ZWU3OUMrT2M4SFh3TE9XazFDaDUwakZFM0hRQVpqRmJ1dGFFYnNT?=
 =?utf-8?B?b1YzM2pqVWhDaTJQcGZYTUFheW5HY3NzMzN3MGN3d3FOUXAzbGRwOWNiUFBs?=
 =?utf-8?B?UmU0U1hINGV1cTgxMUh0UzZqMFBTT1oyNDlQcTZDWUNKNWx2YTZubVkrdGNy?=
 =?utf-8?B?Z1ZKdjRKcExtbWlJZUpkaU9waWpOQTYvMDdOU3U4dU5XR3RMM3VtUjFua3do?=
 =?utf-8?B?OExMYW40MnN2TkRsMllqUUdldkVOS3NHQXV0bDNna3NpZWRmRndqZlcySXF0?=
 =?utf-8?B?SFFqWi80L05haFB2SGc4SDMrQjl4bmZQNmgyV3pwNzF6K0o3bE1WSnRMRHdY?=
 =?utf-8?B?Q2dpNWxFQlpubEZuREVnRnU4NUxWQm9Cd1FFdTFHUzVSNGlYTXpocVVsNTkr?=
 =?utf-8?B?TkxEWURxQUV1a0VQM0NycGMvT1dFaE5nRkF1ekdENUd6MlVxTkJiRlNxZjI4?=
 =?utf-8?B?VTBZT2h5OFQxSUhjZ3VwTjVKTGc5dTltYTgrZW45NHpkUC8yS3ZHWElFLzlx?=
 =?utf-8?B?S0JuTVJZZWUwU2RQQ2JXc3JmNkhhWVZXVDJYdGp2akY4eXpna0N0Z25wc3RW?=
 =?utf-8?B?cXdIRjhlVjFuYTRmYnVjRnBMR1NKRlcxcGF6citUSTlZZUNDRU5zQXJtSmc0?=
 =?utf-8?B?YUxFQ2wyZmhMVlJQVjZmYkcyanZ1RENlNWxNd25ncDEvZ0NjSDRHRlJsMjgz?=
 =?utf-8?B?VHYzOGYwYlhoS2pVcDFhR3JVZjJjbzROUTBnQTJzbXNqLzFPcXpodkx3RjE2?=
 =?utf-8?B?c3IzT2pVQUpQbkFiblo4czQ2dGpxT0pGSWVlSGxyK1ZhV1FTcGd6NlZmMEFN?=
 =?utf-8?B?bnVJUVY1K0VjY2NaZ0NrOXVOOUczcHowS0xCeFUwYTYrWm1uclVnWDluS2o1?=
 =?utf-8?B?UjVMYno2RzVMdTlCcWloay9EYlhuVDVhTFgzcEl3UUhkcm10MkpFZzViL2JI?=
 =?utf-8?B?MWhOdnJ5ZWJPUkxTQUtDYTNWZ3ErMWt5YzhoRDU0TWdSckYvZWQySjN5RmZH?=
 =?utf-8?B?U1FLUnhUTjNnSkVJdEFWbGNlV2NCUndMVVpYYlhsQ2d6TVovYVlXN0psNmc2?=
 =?utf-8?B?dWNZdzZlMithNGJ2TWtMZk4zQnU2ajlQWEZSd2d1b2J4QXpvQ2RrV2gvVWRp?=
 =?utf-8?B?VWoyaU9LMkJBZVI3K2dOL3ptRlNsMFBydkF0a3lVdkRCR3ZkbXhERm9iVGI4?=
 =?utf-8?B?U3FHMUp0bnk1OUQ1SlBmYUVDeHFrL1pyWHk1alJCRGcyM1RtbVFPRHFXa0Qz?=
 =?utf-8?B?ZVdQdlpzaGRhcW1uUkw0a0kvSTdxU1pWeEppUHZpVGRNdlhScGIwSGRwS3VT?=
 =?utf-8?B?bGkxL25WSytrNXRseG9oSlVUb09vdnhZc3pRbHg4eks4c280eU5GTm5uV1Bi?=
 =?utf-8?Q?lbO6avuCsua4HLB99GnMLmdllXyMvQcaI5pLDiI?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: ad36d816-56e7-4dd0-a093-08d957fa5bd7
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2021 10:18:24.4633
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PYWJBMxoDn53fstW1Dgjki6uVP4xkYU5R9KucH6SmRaf5AIJSQgH4fBHUzUXQLO0LZSbRFE6dDZ4NjD8pRFaYwVnkHzffMoBS9AS1xmcxhE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB3298
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21.07.21 22:46, Lucas Stach wrote:
> Hi all,
> 
> second revision of the GPC improvements and BLK_CTRL driver to make use
> of all the power-domains on the i.MX8MM. I'm not going to repeat the full
> blurb from the v1 cover letter here, but if you are not familiar with
> i.MX8MM power domains, it may be worth a read.
> 
> This 2nd revision fixes the DT bindings to be valid yaml, some small
> failure path issues and most importantly the interaction with system
> suspend/resume. With the previous version some of the power domains
> would not come up correctly after a suspend/resume cycle.
> 
> Updated testing git trees here, disclaimer still applies:
> https://git.pengutronix.de/cgit/lst/linux/log/?h=imx8m-power-domains
> https://git.pengutronix.de/cgit/lst/linux/log/?h=imx8m-power-domains-testing

I finally did some tests on my side using USB, GPU and DSI (no PCIe, VPU, CSI so far) and the results are promising. Thanks for the effort!

I will try to run some more automated suspend/resume and reboot test cycles over the weekend and report the results here afterwards.
