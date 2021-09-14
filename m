Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EABF140AC48
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 13:17:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232025AbhINLTP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 07:19:15 -0400
Received: from mail-eopbgr70073.outbound.protection.outlook.com ([40.107.7.73]:47776
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231965AbhINLTN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 07:19:13 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NRt87k9WrGLo9ROmw792w0fEbEg4VGXZt+Wz5ushrYzPBvwJdRnF8CAUPKl2fwIIKMTE51xhBmTtU3dK6oJJKQb0KL3EgvXjbN8Lf5s+a/qzXWldMBZKgzB/JGpdmibHU51MgERc5Gz6/0ByyPQg+IHKrySJIhjlsOg0XTBSrO61UFU7p4IG26EFNH9WFFtUIYtqeVfn1CcOWUzg3ynxcJMF0wcshoZT9BrdABov0nskiHRAmEne5YTtW1HYTDXKy8BHpC1sEj/6WU+zG/wZ59gbGA8FcfNxfGkdhte9qUf4kNQ2hXJPHwg8kgtqBmBxyTkfr0P3glGSYfpe4MYO4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=bgo7yzc2jVQK8Tx5eO4R74aEtkYN8UNKLHS7VyBTd74=;
 b=S5ZW8ud68t2FG8D7psIoLbBKKSCbLRJe0NC78uBCQXaGo/H8Hl0u6TM5BnTCnvuY2aW8hVZoGzZ2aejs+CpFe21/EquO7EmPGYC/wPm9qGptQmGwx670DiOq/GeksVDbLrNoh+kIP9A45TzjEn76yAcEhfDctkQZ6NRl7X5QrFdcTnUQDSpKxeDnde059jl4ikpY9N1teNIJ01GcvXHBBd+4QHvHdOF9Z4U/8dfkX4fRiffdCwl2CIkGYViHCeewmOaCqcHl9fW62TFq4Yd1DQSKsZC76eniypubGAR+k32LFEW18v8mWRu7n92x18uuFr3W137aldxCEjyqhGHe9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bgo7yzc2jVQK8Tx5eO4R74aEtkYN8UNKLHS7VyBTd74=;
 b=iIPou/A7Il9tnqe9xu+4JdosIxSHsFRYItQOgFm3+nvvayu6lc+wecu15YQ3aECHB47fqs/RdfChfEobIuUdXS1kiLn02honcIbNh2elyZ0yJFWv6qWjj2MYae67eZW1UfLJph4uI5gP0HT3aORK+G997PU1ACorD+MfbK0l/NE=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com (2603:10a6:800:57::8)
 by VE1PR04MB7293.eurprd04.prod.outlook.com (2603:10a6:800:1a8::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Tue, 14 Sep
 2021 11:17:54 +0000
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb]) by VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb%10]) with mapi id 15.20.4500.019; Tue, 14 Sep
 2021 11:17:54 +0000
Date:   Tue, 14 Sep 2021 14:17:51 +0300
From:   Abel Vesa <abel.vesa@nxp.com>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, p.zabel@pengutronix.de,
        kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/9] Add imx8ulp clock & reset driver support
Message-ID: <YUCE31J0a2/SP72U@ryzen>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210914065208.3582128-1-ping.bai@nxp.com>
X-ClientProxiedBy: VI1PR02CA0052.eurprd02.prod.outlook.com
 (2603:10a6:802:14::23) To VI1PR0401MB2559.eurprd04.prod.outlook.com
 (2603:10a6:800:57::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ryzen (188.25.164.198) by VI1PR02CA0052.eurprd02.prod.outlook.com (2603:10a6:802:14::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 11:17:53 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2fc5b962-f160-4562-abeb-08d977714bce
X-MS-TrafficTypeDiagnostic: VE1PR04MB7293:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB72931B7A7F4AF2968D90C8F2F6DA9@VE1PR04MB7293.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2150;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ew3ZYmio0zcCrbkvOLkHk/enly6UKItE88l9ilkfdPrhDFWV/qYb8rgIotuUmaAdYXaWBsVAZ2aL7C5DtyYtGw0S/nKCmO84EMt9j8a1h0HPwzGuMLjX473nvmtPqNirI0z3ZzYkpPxqSFiTsNcXEJr9GDEm5yV5ZGR2m5qFWwbCXsPVo27PAEIK/xrFcHN0nHLQjD+xkwchRDhp6hGpTYQYfH0eVXMtCz+vfBc/5QsggNbsSvi72QejHR4u3jfZy6HbxBMWQXYdq3mNkNZLa7gDBvkclBZgJ5mAGiIi+15WbPakqz+rquENME6Iu5sJK0jDwLom8C3RNpaeq4GiXXUNlK8djnoc5+RzqTX/tfOrHmBieQ2lc1f5rtCFLuqEdgX+uwdFUDd/tlwiHPwEFj1w0EfCRUmff5N2cRpbeiW2jbDA+W91lO+tr3EJXY12CDKxx8GMxDh4r2o5YdT2t1aOFqClx5v8MjYwjH5+keUSflUnKWsIyMBul2kWLTeAHq9fjJUImTainjmp1g8UaVT7cAOUJEfnPYnQJ5pWqawFyQU4EamIHluX8p3Bpe7cipnIi04t7mrnpmVUMfq9T38iGJPHb6pCVJDK97fIkNg2J9+3sOJKGhnBYBQ/yejMSACBTKze2iD6V6yfSqrK7yMUvgusqZ2oxQG6XvrscyYgsKm2jU2+F/jZJCZmDHJG3YZl6iC92bcImj5hcttsG3be1/BGxeaj2HdWMoUEX+epPF7lbOKtt4Nq8Tdc5KH4XMQ9d/bJstPB9enIRR+5R1ob5Xn7LQPnFcv0w/j885Ck1AkkRcr+jyaTPutm/Hej
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0401MB2559.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(366004)(136003)(39850400004)(346002)(33716001)(52116002)(6636002)(6496006)(478600001)(53546011)(9686003)(66556008)(38100700002)(55016002)(8936002)(9576002)(6862004)(66946007)(8676002)(44832011)(966005)(956004)(186003)(26005)(5660300002)(86362001)(66476007)(2906002)(38350700002)(83380400001)(316002)(4326008)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ljwsfib89NncE01HJLtFsdR+Tup1VcpHdsvQ/VDpuuIPgdJDb28x0c0nZSCd?=
 =?us-ascii?Q?o5CDIN8TnnVQ87BY7Tr9BEC/kxnyowV9CMlUk/wDagI8Ampa596WSXex6XYp?=
 =?us-ascii?Q?GMLD7C/IXRxbMvx2bbDvenh7tWgXs1XXFzAQTQRAynx+ujVJnWI03t1wNAIL?=
 =?us-ascii?Q?HKfjW7JOXd0m5QaMEpDWWYttHCUHR11/QR7q32dJFn+RrkmN4/TmYmRLXAKp?=
 =?us-ascii?Q?uVBPrLv/CttxVSnrkhqZQiMpbD73Yf9CsdlXFHq83iFu6Uhnxa2E7V8YDfyL?=
 =?us-ascii?Q?Va0w9+I0wORorenedsj3WdgnW/BoYDsfsekx7VjTIPLn1oZEqAgkh0i7m2Fv?=
 =?us-ascii?Q?2srS2WfZMukk18rdxTYt8afSmJmFBT6TUTEUsK4YSXfkrgWJpRW36RbYI649?=
 =?us-ascii?Q?uYD5WbvIais+DAZ5anT4ji+vOY9hthbu4g0QiCC5SgH5v0dZJnQmtMqAEfCf?=
 =?us-ascii?Q?elIoxcEndFXBNztYNBzBMx5ICEXxwtR4NVLmPnoPGlDWpwBs9RfXPC1Ycjjj?=
 =?us-ascii?Q?/T6Os+xxno16us4VbaGN4PkBw5AiXBjh8iPI83fb4SJJUKE6gykHorMMrI4n?=
 =?us-ascii?Q?QgCEMpfE3RsJGm7KZ4HtsxINDKCKl8v4B8kXuzFvrawezAf6Ci1b4WYT+VAj?=
 =?us-ascii?Q?rJg5jte4Ei9NwP1DtiLADgmtbiQtAQ9IYzu+ZXwPi6snMA9r0q3uqGLpMk1d?=
 =?us-ascii?Q?34ecY4mnH6pxtKeUab7xuygHLAHOiTviwBgHyEvj/eMMtx0TnRGtkJ9uadQ7?=
 =?us-ascii?Q?dztIInNk1DKx8mbH1+NmzYCZW0Jaam3IMXVuUUdvawhG1XXkU15CFVp1Za4y?=
 =?us-ascii?Q?FNVAckD6JNDjE21uDnAc7UYbM8gK2VngpLcITcxpq2fGX/4W/wK2Dsmx9Keu?=
 =?us-ascii?Q?m1ni3JcQ4I4w1dmvozNebmKk5q2+qMtTlnQmoFO9/bHC57khZmNxldkSr3Xo?=
 =?us-ascii?Q?/MaPTSttFybDku2jSKRsmX1Y/ubp8oclXEC/1WT3rWIr++aOEKKmFuyRYzRT?=
 =?us-ascii?Q?BHNXTjVCRieC7kKKYCQu7WCzPKzIbi1KCntNtqvt1fv5YkpX9OogdW2HY8Ev?=
 =?us-ascii?Q?yEDFi8imRTX2/QRUPJajFTJ//CKsLYVtgarH0U72IV8gLceyVAjOHtF1s6X2?=
 =?us-ascii?Q?kqjdwWkpjpeLvG7CLuf71VW37c6iZEjDFI+zYC6OjAJDtVgh60dV4L7wRteV?=
 =?us-ascii?Q?9i0w7jiqv3/TIZ8wiY/qnCw/TE054x7HE/x2U2bOW0qUVW2yYKiPJhfKA0fZ?=
 =?us-ascii?Q?yg0BxSbym8Cds5yaWaM6GWQuE2xayQZITXNbVFkKdHy18sNC8NZXshWBTkDY?=
 =?us-ascii?Q?fK3fOJ0QX5/TJ86ovk0+Yqbl?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fc5b962-f160-4562-abeb-08d977714bce
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0401MB2559.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 11:17:54.2488
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vp3rDcVXkaZQOwFUeHZpAfJ0gK2PR3Z1Dqja0OnCtRAqOnNQkIyxnsopROwprJy4coen10BEp1gZmQOfFhgbjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7293
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

Usually, the clock patches need to be sent to linux-clk mailing list
too.

> 
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
