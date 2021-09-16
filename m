Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1030140D361
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 08:46:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232840AbhIPGrp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 02:47:45 -0400
Received: from mail-db8eur05on2075.outbound.protection.outlook.com ([40.107.20.75]:12993
        "EHLO EUR05-DB8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232254AbhIPGrp (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 Sep 2021 02:47:45 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gZtKfspwI3H6mZH00MzAoi+7p9yGRntqEFP7pXoGpYlPbN+XEFBNgMdvgB94f4EYXXIgFnDLY5610j1rU3rc/e61d3diBc+isSe2WH5H2NWNnB5KhvHWQx+KLMWdzkq2654LU6VpkM36kGKCd0TCLLmlKxkYMUfePZts+AMnnJ8s5OYIAl8mdO35ahe0+t/fa9GogZjl7crrvbMgdtL5h2T6MYAGn3taVUheKTp0TDJWvLoAmqch5YnCWJowYlQKjDok3clsk/0Dp7I0tPtr1Nb8mEVQ+ij/5Grd/rkTfLpAi/WjwIiLyZ65EbefAoblPleB6d6nJTA1nZtl1h/bmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=UzFVfWisvBapkXfVC6QqYcdmACX/QmfhxAgtkYTlhYs=;
 b=fF8ZCAeg22voFCrzB1cXNJjMESymI6rUGdPBsgolQzkYKSDTXGq2nHlnDLM+LCli+6zY1z8rVD/tB5z3tovn1kB+8M4LLXDHAb9AjJjwR4Nycv6YPTfFshXag8ABX9AytuRdNQnvR1IoBehhpoPOX+J5yK/J4CmWY0OiL+z3ACu1wNRqPQDSK4++P0s213tgdTlQY4c8XRTB9WkHB2E9lDDFp7rfm9AaGZ5ulro3ux/XC0RTm67N7G44qOF6/P7+8N1XHZoKpXpzQOKeFbbW+3RDPINzjoG3dtls1dEELkfjXsR0FJyNJeLMv2ulztZkaNEEvMf6AsDmGWVu7QlbrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UzFVfWisvBapkXfVC6QqYcdmACX/QmfhxAgtkYTlhYs=;
 b=eXT5dx6w1AJaa9mYQJOFPckN0iYK4O4f6O0Srj/f6Y1LsT1sJZ1YWu7EhFP7i2Wj0kkuCBBrIrABa3BB3w7TBsmMD5H8tfHRIPPPAtAdiZp2yAWL4H1sSXWB8KvMjqtusaLerq2G3rvO5DupTBLQSDPbU7l0D4pnCB/Ygh3CFlY=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com (2603:10a6:800:57::8)
 by VE1PR04MB6750.eurprd04.prod.outlook.com (2603:10a6:803:123::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Thu, 16 Sep
 2021 06:46:23 +0000
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb]) by VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb%10]) with mapi id 15.20.4523.016; Thu, 16 Sep
 2021 06:46:23 +0000
Date:   Thu, 16 Sep 2021 09:46:21 +0300
From:   Abel Vesa <abel.vesa@nxp.com>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, p.zabel@pengutronix.de,
        kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/9] Add imx8ulp clock & reset driver support
Message-ID: <YULoPX6FI7So8ntf@ryzen>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210914065208.3582128-1-ping.bai@nxp.com>
X-ClientProxiedBy: VI1PR04CA0043.eurprd04.prod.outlook.com
 (2603:10a6:802:2::14) To VI1PR0401MB2559.eurprd04.prod.outlook.com
 (2603:10a6:800:57::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ryzen (188.25.164.198) by VI1PR04CA0043.eurprd04.prod.outlook.com (2603:10a6:802:2::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14 via Frontend Transport; Thu, 16 Sep 2021 06:46:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c4817edc-bff5-4fc0-a7e0-08d978ddb2a0
X-MS-TrafficTypeDiagnostic: VE1PR04MB6750:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB67502F958B84DD0E4C1C8131F6DC9@VE1PR04MB6750.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u4SLds/tdesQngiDLJQTWk4QlFaNHRVIShKiNEtveILliscfAOcpq6W9awuRBtZc/V/CdnYp23sz3BS0425nQe95nImcCcptqYcoOAXDAJYYaDppxw3Q50W3TwfK/+ZNmsepMsDiXYSVgEeAZOmJfAMPFt4vm3ph/GFqyQkCCws/VWvONztm33HaQphCI2NMJ/tkBDrmffAqsUjocP+rJizZYmoW7RBkJAAT+RjxIAnFaCtYovXQK76EaXoW6zNt4fvwKVlzsvpODRxPPY6jWJKII10qCVz9f8G9PVJ+j6otXuusXpLb1XCgUiAieSIrhgb0R2k9tOjRsggCsOnxQyz85TelddtKXg29wURRB+lnuug0n8sRECW5kxGVWGMnQZS0M+PCL1wXoB385M9I4p7ThlIGc+XhQabe2K8DzKAZbPnuw+tHQqkG8895pzKC+zJBHoQp29fpHq32AXmJanWPG0EioJQnd5YddKU6Ar0cgpChYM6nc52AG8HuU12ksfYZJVlJZ04Go4X+LBCU0JB8LHBft2SFYr+F1Pq7uMPEl7tOR1YuAv/iqKm5nyUJisJPPP16ZqmgRMIrzSjBXhTYjx3JurAosp5R60ccZ/zVDf53hF07pJtrUcRDeHUPf3al3j6Y0RguR4WsZxNuhkLeUZ3Yb7mMYPdvhf+wPYbhRJ3ZqkT0ySzXdoHV69R4y+ydqUrZYLeINeziFnCy4vqvU1+ss3iRSHS78OPw5pGE4G6qwO8OCBf2SWBeOuB3Khlz4By4cAkfz47lJExEXQCjQfkSKAlRHanS6hq+9YrWGoFZatT2kKIxVdfOD5XU
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0401MB2559.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(136003)(376002)(39860400002)(396003)(366004)(6862004)(8936002)(4326008)(6636002)(53546011)(52116002)(8676002)(2906002)(5660300002)(9686003)(55016002)(316002)(83380400001)(6496006)(38100700002)(38350700002)(86362001)(44832011)(9576002)(33716001)(956004)(66946007)(478600001)(966005)(26005)(186003)(66556008)(66476007)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CnFzCYrMSoZo08wgraMWi6oV49JBINgHjgg8a/6HmE8LJI5t3Xqri+3loS1b?=
 =?us-ascii?Q?psrPFLOtGE2IWwEPU99bs+jObvwd/m1o7FSNSnl1t24aYAiR54VWPH0lDidy?=
 =?us-ascii?Q?+gA0PB1pTTqkQ+SdOrNnjE4JJhDniONx4eBWxmBSSfDQZEUOnU8eksqPDh05?=
 =?us-ascii?Q?12j9PZ+Qrq/hgYlHLmvS/fkIZ896UNrkNCzPf8aWyeuClSLDbJ23Sz2xwv2W?=
 =?us-ascii?Q?/wwEbJXmEhxyyH+yT87p0us6DF3MRnoHOGe9+F2tef3TC7OQ3An7R0ytWTpp?=
 =?us-ascii?Q?6Uwg/VM6QhCsI2AZUo/fkOBO7uk3OUhNVTAnCdXAi4620Tzn47mfYbXy4t0F?=
 =?us-ascii?Q?nTjqA9Lj/Igfp3XSGJJKVPQkLUKogbfMcFuHjpd0pcW3cbjN8CvKVNqGAnKF?=
 =?us-ascii?Q?ZAjh+xr4X7qRJgL+oI60TtCe1zctqj2bqnaWhEq8YvEm9a+Y/Ef6l78o4f06?=
 =?us-ascii?Q?Ic/Z9CDXmBsM6Uw52vRfp7SnR4gvyrw7qxjNn8vOfX5BjOhgnOgc55W+Iq26?=
 =?us-ascii?Q?xUhhKL0ko0lc8Q3cuK3+TaraQGVqMxz1/Mov0H9sbid391s62lo1yeYrSGrs?=
 =?us-ascii?Q?Bt62hCAyW+7aEU0Vo2QwaKZH19McOGDLzRACRgQwJXq4aaFJkw3K3mtrUu3V?=
 =?us-ascii?Q?j2yv6ULe36GHyD5vVSnkf7UyN49KXdAHiQKMNNu0uQ1kDlpPKC10s/nWGbyS?=
 =?us-ascii?Q?Z12TgYSRv6TwAdMYwmJ4LxjIBcSJropFj7Y1TT8fnPFHdZ5+3oTW/qE6gulv?=
 =?us-ascii?Q?s3sMqxiNEndfwtBSavNqU76KZST6OzLXKU9wQ4DDbPyTFP8GBS3iinxhwSra?=
 =?us-ascii?Q?fVmaC3XYzGlrMvUHmv6YhfRFYYBhUVKN9GPMPPo4S1XHi2CGMFvmkq8yOsn/?=
 =?us-ascii?Q?g3dlFEwS5J7ZhEXeHpP8udbuX/aZIH23I4XsT+LU3pTIoGwGzk6ylnXGgUne?=
 =?us-ascii?Q?xW6PUceHCQ2TTWsE96mRhvVuF4QoEmqpxSK9ExSrE9jdJ2UgOCQ0NiAGtfCh?=
 =?us-ascii?Q?33g+4feB2rOv1AI2HUNULkoBGrguXfZuf+Ql515tvetUzqau3gvWLOCnDsJX?=
 =?us-ascii?Q?bkpYHtnTl1eB2mxIBxkCCv+vp0U66jF3Tk5wyNmCNkfpzFl0LFGaCZhJJNIn?=
 =?us-ascii?Q?Go77COTF9InBl5Ox6ByYLG/KHG0r/DaXv0mOFvB5bgLGfBW1Ij/cnT3JZ4pe?=
 =?us-ascii?Q?B364U2PNe9MDYmeR6yGOTERTi1DNMlPciJMAjswt9Rpsq6gvgX8PAzK9LKsR?=
 =?us-ascii?Q?94kjAzqsb63j6W9MWyrkIq02qXa6at2XHxel86KdKBeci5kKUCUngzCl3Tu5?=
 =?us-ascii?Q?8a8XMPE6mdSDtnrOcLaFGni3?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4817edc-bff5-4fc0-a7e0-08d978ddb2a0
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0401MB2559.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2021 06:46:23.1443
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h2G4z7zUysrWC/bxM6S+iZreu0Fy3X1ZtcW84ldwu+PpM/ivpjVYwe0MX6PfYxx75tHJL/vvNAiyggV0Z0HwRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6750
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21-09-14 14:51:59, Jacky Bai wrote:
> This patchset adds the clock & reset driver support for i.MX8ULP.
> For some of the PCC slot, As there is a SWRST control bit share
> the same pcc register for peripheral reset ccontrol. To simplify
> the case, register the pcc reset controller driver when pcc
> clock driver is registered.
> 
> Patch 1/9 for the dt-bindings part is send out for review previously
> with the dts patchset:
> https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210607083921.2668568-1-ping.bai@nxp.com/
> 
> Shawn suggests to send out the clock driver part firstly, so this
> patch is included in this patchset for now.
> 

Applied all. 

Thanks.

> v3 changes:
>   - split the clock dt schema file into two file, one for pcc, one for cgc
> 
> v2 changes:
>   - remove the useless clocks & clock-names from the dt-binding doc
>   - remove the redundant fixed clock register.
> 
> Anson Huang (1):
>   clk: imx: disable i.mx7ulp composite clock during initialization
> 
> Jacky Bai (8):
>   dt-bindings: clock: Add imx8ulp clock support
>   clk: imx: Update the pllv4 to support imx8ulp
>   clk: imx: Update the compsite driver to support imx8ulp
>   clk: imx: Add 'CLK_SET_RATE_NO_REPARENT' for composite-7ulp
>   clk: imx: disable the pfd when set pfdv2 clock rate
>   clk: imx: Update the pfdv2 for 8ulp specific support
>   clk: imx: Add clock driver for imx8ulp
>   clk: imx: Add the pcc reset controller support on imx8ulp
> 
>  .../bindings/clock/imx8ulp-cgc-clock.yaml     |  43 ++
>  .../bindings/clock/imx8ulp-pcc-clock.yaml     |  50 ++
>  drivers/clk/imx/Kconfig                       |   6 +
>  drivers/clk/imx/Makefile                      |   2 +
>  drivers/clk/imx/clk-composite-7ulp.c          |  87 ++-
>  drivers/clk/imx/clk-imx7ulp.c                 |  20 +-
>  drivers/clk/imx/clk-imx8ulp.c                 | 569 ++++++++++++++++++
>  drivers/clk/imx/clk-pfdv2.c                   |  22 +-
>  drivers/clk/imx/clk-pllv4.c                   |  34 +-
>  drivers/clk/imx/clk.h                         |  24 +-
>  include/dt-bindings/clock/imx8ulp-clock.h     | 258 ++++++++
>  include/dt-bindings/reset/imx8ulp-pcc-reset.h |  59 ++
>  12 files changed, 1142 insertions(+), 32 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/clock/imx8ulp-cgc-clock.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/imx8ulp-pcc-clock.yaml
>  create mode 100644 drivers/clk/imx/clk-imx8ulp.c
>  create mode 100644 include/dt-bindings/clock/imx8ulp-clock.h
>  create mode 100644 include/dt-bindings/reset/imx8ulp-pcc-reset.h
> 
> -- 
> 2.26.2
> 
