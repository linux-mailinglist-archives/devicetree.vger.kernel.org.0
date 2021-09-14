Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3B9C40B323
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 17:30:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234772AbhINPcK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 11:32:10 -0400
Received: from mail-eopbgr00076.outbound.protection.outlook.com ([40.107.0.76]:60292
        "EHLO EUR02-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S234184AbhINPcJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 11:32:09 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RGa0FSL+y0xjbUuemeXlc0dhp3ocXa3AfGDMFKqTe97zufDtMPHa8B+YISCt6QgasiWSxe3qMaNkHFcckosepHZ/UgbIdVzB5iJMs/9j9Bzjc/qdvuNEXDFmIKsrtUJB5t1FRYlvd6BoXQe8psC8MKJzdN+0of7rzonDFicxqj/12AALp5yz/QBFUrrMGmAtXnX1tivfIY3ITyFWrkpGIbxw678WtxQG7SW/ZF9a22a9XAryr3Z5Obn3VZ6BOsBonzES6verLVyDXXfDQQxZQelnQdtvCIAVungod5TRKqe3lRTVrgmtGp4n+9ZAjxVJiPC7gpa/H/yyv6zsl8XiZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=61BGCOlvZTofgRlLXGOkuxcdEcuKZ6KJUb5IOjvixNA=;
 b=L80h5KaG2DUqXTQBFQXXK8PerymhLAAEvnHS05e5qK5Rthd8H0Ru4BIrucezvFJr1Bh4aTSvQcThhPLrWBi2A7LpWNyxHV50uK5MV5BpMtYeVAfYPDJZF7Jj6KXacY5GM1Tti9vj94RVG/HknDS+8X0Dt7L6fF1wMZON9ZOwvCJRZ1vnBJklnQ+bpXnNpZAxrw761K4Pba9f32bUzJ/p0L9ubAndvcz+qYUcPKOcaatHuQRCNxUp7OlQT1zBWjB8mO8DmoCSBokUQ5zN+1KfP/LjQFJiR6kviwsOc/gapuZYwtBVkH0ITMPW5tZqApAObtSfH5LLm4wHCUgAnfX2ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=61BGCOlvZTofgRlLXGOkuxcdEcuKZ6KJUb5IOjvixNA=;
 b=iEWJ3rs687/NNfy9n1DNzUxl4LCTdakBaPf1bjXDUWJg9X3Ti0WxUWT4kks5uV1U78WuNzT4XK54HPsuZwntWEqkYZUWQYWMsiu/pmXQ3Ntb3mrBYyVfpUq8x4P+PNWAnAK5x/DP9WOQhvyg4O8w1iQkXQnkw0TaOlhVA02CDME=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com (2603:10a6:800:57::8)
 by VI1PR0401MB2558.eurprd04.prod.outlook.com (2603:10a6:800:5c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.17; Tue, 14 Sep
 2021 15:30:50 +0000
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb]) by VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb%10]) with mapi id 15.20.4500.019; Tue, 14 Sep
 2021 15:30:50 +0000
Date:   Tue, 14 Sep 2021 18:30:47 +0300
From:   Abel Vesa <abel.vesa@nxp.com>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "sboyd@kernel.org" <sboyd@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v3 1/9] dt-bindings: clock: Add imx8ulp clock support
Message-ID: <YUDAJ18URdZRGIup@ryzen>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
 <20210914065208.3582128-2-ping.bai@nxp.com>
 <YUCGj2fDB3VWQ+BN@ryzen>
 <DBBPR04MB7930561625265F08CD3B630887DA9@DBBPR04MB7930.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DBBPR04MB7930561625265F08CD3B630887DA9@DBBPR04MB7930.eurprd04.prod.outlook.com>
X-ClientProxiedBy: VI1PR09CA0051.eurprd09.prod.outlook.com
 (2603:10a6:802:28::19) To VI1PR0401MB2559.eurprd04.prod.outlook.com
 (2603:10a6:800:57::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ryzen (188.25.164.198) by VI1PR09CA0051.eurprd09.prod.outlook.com (2603:10a6:802:28::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14 via Frontend Transport; Tue, 14 Sep 2021 15:30:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0dd88e6a-0318-441c-d35c-08d97794a161
X-MS-TrafficTypeDiagnostic: VI1PR0401MB2558:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0401MB2558E9AE72C7C8E66153B536F6DA9@VI1PR0401MB2558.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PsMDGyb5g6SNsU75nqYXEW4ApxmUcXw1I/1GC17H6BsREaSxNHVIvA1wvyYr9bgsnBhOi5+rlhuDTnFM5LE2umqRtroLriwsdF3D/loEWplcjbbbzegt5Lo8aA+HwudZ2tDBC+0gmCZSUemNCM9cnvUKVZgIK/tTyeTG1O3V9Ia1rjjyCxUrUpbgrcZGrho7JBHqopRLbAw6tao3z3U/FwX2in1Bke5DeCp3qgp7x7OoLhvoL3jz9gBGScwG0lZ/jaa78tly1K2lZunjjq0koGRm62MEX9aJj4uwdqRT3uZ/lCyEXxY7ekBZiy1mIcJrO9+l3QVGD/DHjdEbOtVlZZzj5GeANaz1+pXJSPYVm9sC3g/S1mcs8d/Zh2knYbBK4+VotBU/+k/21sYjOiS/XcRVYpgCH6VavfOzYjbXbgey7wFz2LL/81NjD8/aPMG+GZL/V94Ni4OVmOSmXy2AQQ+WsDxk94ZMe1pS3ZpRgcGu17l0EfSCJP5Zz5Nht7h9fJUgMcnhEhLkeeX+uCYxL3nwtwXTixmL64VLXYIj1TnKH5FsTeFzGylD8fUV3ch401Yq/lmMj2DxF8buORPoGK+uNbOpwUjzZi7lMpbPSIa7y8kZ+NBecCqp6fxtPeeCCZVt8kLhjwr/Uga2pUR1Q+ojmfF+hzB6cQ5VUUHIpWKNuQLMisloRBVs20jJ5cuxZIkpL1MF4M9pO7QSEOChKF64JZZbLIJ7ZKTxvUj/M032U6E2PGJiN0cnYnr9En4AUnE8zjQs+VAD3YPhivOcgTGcsPYhu+h65qiIcsboybeTtCMWlzD3wIXa9XqolDhrsAKJ39cVNtuZS/XzQ1R9PdAV+orJO7UucOfgH4+wUMY=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0401MB2559.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(366004)(136003)(346002)(376002)(396003)(33716001)(38100700002)(44832011)(4326008)(6862004)(8676002)(6496006)(9576002)(38350700002)(52116002)(8936002)(5660300002)(30864003)(966005)(478600001)(316002)(66946007)(2906002)(186003)(956004)(54906003)(53546011)(86362001)(66556008)(66476007)(83380400001)(26005)(55016002)(6636002)(9686003)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GnqXJQAU/2Rn/yvBqBZDG7u/oTa9iPz/SRAO2FLoJ9Oj/tUcYpvmO5YJDJKn?=
 =?us-ascii?Q?a1kG6bbQjTOXu/jWM3HK5U/DK9+XqYySLOULd/Y8Rk033JcOx1oFaMTOCZr9?=
 =?us-ascii?Q?TfucgZuwp6IRbpw5LP8RbfEpZQIRh8I3iJk0rHLVPw95SSmAoHDp+exLM4iC?=
 =?us-ascii?Q?qE917TJcU8kfdStWUhRhrcrbpZkY5G9UO1+WQve/ePsdNnOIcZmxsWbcQPnl?=
 =?us-ascii?Q?CwgKmvWgug4vOnuzzwh4cxDQCpPS6jLizeZ+/o7WkhbtPv7DRhNIUge2vyWe?=
 =?us-ascii?Q?NqtzaNJc6pL3ell8eUKE7vvL7CeQEp7PvGJvXKHKIgDf7jA44Ml5SGWT8evO?=
 =?us-ascii?Q?U43hazByXc59S6i569+QnIfTmg/uCyLaPkjvt08vItwqEFvFgZPAZdoVg+hG?=
 =?us-ascii?Q?OPV8VVX2pnHkOaHDU9R51T1p/q2/1GvSDz3uXW65Z9oa9Cs7m/xTJo1qjUlj?=
 =?us-ascii?Q?sZgfRxSs+geGrJ/AkaZ1DlnJUN/N+rxNM8V3ksjqouUkBZiWaIfkAkPFfQkK?=
 =?us-ascii?Q?itromueBmoh+TNmqzpeu9m9ND4cW5d6oGNLivqpjKq6Wc3RKXRulMQ3V4TYo?=
 =?us-ascii?Q?28Dszj0oViy4Gp9508Miu2eOWrSz6nzeKCxgYxDlf1rD78RY8obey/2+pBI1?=
 =?us-ascii?Q?T1WEWzjAlwJKTu000e50LlZpBloibPZSy2s2yrXBFG0CvqODCU6AVWVfBRT+?=
 =?us-ascii?Q?MFpvhdV3jkHvcxghMzzFjVVlVdF6t9wcki2R5e/CLe4n+psLqV6D4lo+YAU/?=
 =?us-ascii?Q?vNQlxZce2Exp/m4aVuGHvUhiaY0kfxFg7V/D244OogEFYq9+W780/+cLwYvm?=
 =?us-ascii?Q?xvdvV26TntZj7hSQEuhI1R6pnrcYT+UmpQPOv3Ve2z/uLOLKm6qEgbMt10lY?=
 =?us-ascii?Q?1aFtphaAMNBbJt3EusDDFGiVgKtbush7dZuEUbvBA+o1xcnkSa7FpWzVEICW?=
 =?us-ascii?Q?8av/C52vO83ZZY8sqsqKnkGo4YCzlLUfFv8/7v75fGTxS0v6aRMX2lIAVcOF?=
 =?us-ascii?Q?k58gI7sKzJ+y2/1/7g5mgt2APomidKWgQ8Nze+1O+5hXsnUOfhAy5EaGE7T1?=
 =?us-ascii?Q?rnKf+RyVw9Ra8tHarnAgvC+nMFpaQJ2cYT7Ne1WMD0Yd2YOApoSdfwjjaQAK?=
 =?us-ascii?Q?uf6Ixf0NJhMDtuLE4fjviE8q+7HlHDbcZxoKCJcZ++/slw+4kZZf0we8X8W/?=
 =?us-ascii?Q?AzR+1ApWEChc6qK2/zVN2enPP/zsdLk1AWpTZS27p1IAxyZPw29pSYfOBzz5?=
 =?us-ascii?Q?BBfNxKVDtBUiFRPXFxPhT127AHO5qqWQ2CmQvEzfntE0HCWknBUMxpz6aqGN?=
 =?us-ascii?Q?VAn/wIUGsj7UH+ke8rv/Nf4P?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dd88e6a-0318-441c-d35c-08d97794a161
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0401MB2559.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 15:30:49.8712
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kMIWXE/aIZ/OFZW6oX9wiklzCiN2J/LeqU1Nnqy5SANfyxtsY3MvKnS8kos7V/U9NzrS6Pel/Cas1XJ8R3ChWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2558
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21-09-14 16:11:13, Jacky Bai wrote:
> > Subject: Re: [PATCH v3 1/9] dt-bindings: clock: Add imx8ulp clock support
> > 
> > On 21-09-14 14:52:00, Jacky Bai wrote:
> > > Add the clock dt-binding file for i.MX8ULP.
> > >
> > > For pcc node, it will also be used as a reset controller, so add the
> > > '#reset-cells' property description and add the pcc reset IDs.
> > >
> > > Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> > > ---
> > >  v3 changes:
> > >    - split into two binding file, one for pcc, one for cgc
> > >
> > >  v2 changes:
> > >    - removed the redundant clocks & clock-names property
> > >
> > >  v1 changes:
> > >    - Move this patch from dts patchset into this patchset
> > > ---
> > >  .../bindings/clock/imx8ulp-cgc-clock.yaml     |  43 +++
> > >  .../bindings/clock/imx8ulp-pcc-clock.yaml     |  50 ++++
> > >  include/dt-bindings/clock/imx8ulp-clock.h     | 258
> > ++++++++++++++++++
> > >  include/dt-bindings/reset/imx8ulp-pcc-reset.h |  59 ++++
> > >  4 files changed, 410 insertions(+)
> > >  create mode 100644
> > > Documentation/devicetree/bindings/clock/imx8ulp-cgc-clock.yaml
> > >  create mode 100644
> > > Documentation/devicetree/bindings/clock/imx8ulp-pcc-clock.yaml
> > >  create mode 100644 include/dt-bindings/clock/imx8ulp-clock.h
> > >  create mode 100644 include/dt-bindings/reset/imx8ulp-pcc-reset.h
> > >
> > > diff --git
> > > a/Documentation/devicetree/bindings/clock/imx8ulp-cgc-clock.yaml
> > > b/Documentation/devicetree/bindings/clock/imx8ulp-cgc-clock.yaml
> > 
> > I'm not sure but I think the Documentation part is usually done in a separate
> > patch.
> > 
> 
> The clk-imx8ulp.c file highly depends on the clock/reset index in this dt-binding patch.
> 

Yeah, I get that, but I was suggesting splitting the Documentation part
and the binding header part into two separate patches. It's up to you.

For everything else:

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> BR
> Jacky Bai
> 
> > > new file mode 100644
> > > index 000000000000..71f7186b135b
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/clock/imx8ulp-cgc-clock.yaml
> > > @@ -0,0 +1,43 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/clock/imx8ulp-cgc-clock.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: NXP i.MX8ULP Clock Generation & Control(CGC) Module Binding
> > > +
> > > +maintainers:
> > > +  - Jacky Bai <ping.bai@nxp.com>
> > > +
> > > +description: |
> > > +  On i.MX8ULP, The clock sources generation, distribution and
> > > +management is
> > > +  under the control of several CGCs & PCCs modules. The CGC modules
> > > +generate
> > > +  and distribute clocks on the device.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - fsl,imx8ulp-cgc1
> > > +      - fsl,imx8ulp-cgc2
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  '#clock-cells':
> > > +    const: 1
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - '#clock-cells'
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  # Clock Generation & Control Module node:
> > > +  - |
> > > +    clock-controller@292c0000 {
> > > +        compatible = "fsl,imx8ulp-cgc1";
> > > +        reg = <0x292c0000 0x10000>;
> > > +        #clock-cells = <1>;
> > > +    };
> > > diff --git
> > > a/Documentation/devicetree/bindings/clock/imx8ulp-pcc-clock.yaml
> > > b/Documentation/devicetree/bindings/clock/imx8ulp-pcc-clock.yaml
> > > new file mode 100644
> > > index 000000000000..00612725bf8b
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/clock/imx8ulp-pcc-clock.yaml
> > > @@ -0,0 +1,50 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/clock/imx8ulp-pcc-clock.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: NXP i.MX8ULP Peripheral Clock Controller(PCC) Module Binding
> > > +
> > > +maintainers:
> > > +  - Jacky Bai <ping.bai@nxp.com>
> > > +
> > > +description: |
> > > +  On i.MX8ULP, The clock sources generation, distribution and
> > > +management is
> > > +  under the control of several CGCs & PCCs modules. The PCC modules
> > > +control
> > > +  software reset, clock selection, optional division and clock gating
> > > +mode
> > > +  for peripherals.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - fsl,imx8ulp-pcc3
> > > +      - fsl,imx8ulp-pcc4
> > > +      - fsl,imx8ulp-pcc5
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  '#clock-cells':
> > > +    const: 1
> > > +
> > > +  '#reset-cells':
> > > +    const: 1
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - '#clock-cells'
> > > +  - '#reset-cells'
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  # Peripheral Clock Control Module node:
> > > +  - |
> > > +    clock-controller@292d0000 {
> > > +        compatible = "fsl,imx8ulp-pcc3";
> > > +        reg = <0x292d0000 0x10000>;
> > > +        #clock-cells = <1>;
> > > +        #reset-cells = <1>;
> > > +    };
> > > diff --git a/include/dt-bindings/clock/imx8ulp-clock.h
> > > b/include/dt-bindings/clock/imx8ulp-clock.h
> > > new file mode 100644
> > > index 000000000000..953ecfe8ebcc
> > > --- /dev/null
> > > +++ b/include/dt-bindings/clock/imx8ulp-clock.h
> > > @@ -0,0 +1,258 @@
> > > +/* SPDX-License-Identifier: GPL-2.0+ OR MIT */
> > > +/*
> > > + * Copyright 2021 NXP
> > > + */
> > > +
> > > +#ifndef __DT_BINDINGS_CLOCK_IMX8ULP_H #define
> > > +__DT_BINDINGS_CLOCK_IMX8ULP_H
> > > +
> > > +#define IMX8ULP_CLK_DUMMY			0
> > > +
> > > +/* CGC1 */
> > > +#define IMX8ULP_CLK_SPLL2			5
> > > +#define IMX8ULP_CLK_SPLL3			6
> > > +#define IMX8ULP_CLK_A35_SEL			7
> > > +#define IMX8ULP_CLK_A35_DIV			8
> > > +#define IMX8ULP_CLK_SPLL2_PRE_SEL		9
> > > +#define IMX8ULP_CLK_SPLL3_PRE_SEL		10
> > > +#define IMX8ULP_CLK_SPLL3_PFD0			11
> > > +#define IMX8ULP_CLK_SPLL3_PFD1			12
> > > +#define IMX8ULP_CLK_SPLL3_PFD2			13
> > > +#define IMX8ULP_CLK_SPLL3_PFD3			14
> > > +#define IMX8ULP_CLK_SPLL3_PFD0_DIV1		15
> > > +#define IMX8ULP_CLK_SPLL3_PFD0_DIV2		16
> > > +#define IMX8ULP_CLK_SPLL3_PFD1_DIV1		17
> > > +#define IMX8ULP_CLK_SPLL3_PFD1_DIV2		18
> > > +#define IMX8ULP_CLK_SPLL3_PFD2_DIV1		19
> > > +#define IMX8ULP_CLK_SPLL3_PFD2_DIV2		20
> > > +#define IMX8ULP_CLK_SPLL3_PFD3_DIV1		21
> > > +#define IMX8ULP_CLK_SPLL3_PFD3_DIV2		22
> > > +#define IMX8ULP_CLK_NIC_SEL			23
> > > +#define IMX8ULP_CLK_NIC_AD_DIVPLAT		24
> > > +#define IMX8ULP_CLK_NIC_PER_DIVPLAT		25
> > > +#define IMX8ULP_CLK_XBAR_SEL			26
> > > +#define IMX8ULP_CLK_XBAR_AD_DIVPLAT		27
> > > +#define IMX8ULP_CLK_XBAR_DIVBUS			28
> > > +#define IMX8ULP_CLK_XBAR_AD_SLOW		29
> > > +#define IMX8ULP_CLK_SOSC_DIV1			30
> > > +#define IMX8ULP_CLK_SOSC_DIV2			31
> > > +#define IMX8ULP_CLK_SOSC_DIV3			32
> > > +#define IMX8ULP_CLK_FROSC_DIV1			33
> > > +#define IMX8ULP_CLK_FROSC_DIV2			34
> > > +#define IMX8ULP_CLK_FROSC_DIV3			35
> > > +#define IMX8ULP_CLK_SPLL3_VCODIV		36
> > > +#define IMX8ULP_CLK_SPLL3_PFD0_DIV1_GATE	37
> > > +#define IMX8ULP_CLK_SPLL3_PFD0_DIV2_GATE	38
> > > +#define IMX8ULP_CLK_SPLL3_PFD1_DIV1_GATE	39
> > > +#define IMX8ULP_CLK_SPLL3_PFD1_DIV2_GATE	40
> > > +#define IMX8ULP_CLK_SPLL3_PFD2_DIV1_GATE	41
> > > +#define IMX8ULP_CLK_SPLL3_PFD2_DIV2_GATE	42
> > > +#define IMX8ULP_CLK_SPLL3_PFD3_DIV1_GATE	43
> > > +#define IMX8ULP_CLK_SPLL3_PFD3_DIV2_GATE	44
> > > +#define IMX8ULP_CLK_SOSC_DIV1_GATE		45
> > > +#define IMX8ULP_CLK_SOSC_DIV2_GATE		46
> > > +#define IMX8ULP_CLK_SOSC_DIV3_GATE		47
> > > +#define IMX8ULP_CLK_FROSC_DIV1_GATE		48
> > > +#define IMX8ULP_CLK_FROSC_DIV2_GATE		49
> > > +#define IMX8ULP_CLK_FROSC_DIV3_GATE		50
> > > +#define IMX8ULP_CLK_SAI4_SEL			51
> > > +#define IMX8ULP_CLK_SAI5_SEL			52
> > > +#define IMX8ULP_CLK_AUD_CLK1			53
> > > +#define IMX8ULP_CLK_ARM				54
> > > +#define IMX8ULP_CLK_ENET_TS_SEL			55
> > > +
> > > +#define IMX8ULP_CLK_CGC1_END			56
> > > +
> > > +/* CGC2 */
> > > +#define IMX8ULP_CLK_PLL4_PRE_SEL	0
> > > +#define IMX8ULP_CLK_PLL4		1
> > > +#define IMX8ULP_CLK_PLL4_VCODIV		2
> > > +#define IMX8ULP_CLK_DDR_SEL		3
> > > +#define IMX8ULP_CLK_DDR_DIV		4
> > > +#define IMX8ULP_CLK_LPAV_AXI_SEL	5
> > > +#define IMX8ULP_CLK_LPAV_AXI_DIV	6
> > > +#define IMX8ULP_CLK_LPAV_AHB_DIV	7
> > > +#define IMX8ULP_CLK_LPAV_BUS_DIV	8
> > > +#define IMX8ULP_CLK_PLL4_PFD0		9
> > > +#define IMX8ULP_CLK_PLL4_PFD1		10
> > > +#define IMX8ULP_CLK_PLL4_PFD2		11
> > > +#define IMX8ULP_CLK_PLL4_PFD3		12
> > > +#define IMX8ULP_CLK_PLL4_PFD0_DIV1_GATE	13
> > > +#define IMX8ULP_CLK_PLL4_PFD0_DIV2_GATE	14
> > > +#define IMX8ULP_CLK_PLL4_PFD1_DIV1_GATE	15
> > > +#define IMX8ULP_CLK_PLL4_PFD1_DIV2_GATE	16
> > > +#define IMX8ULP_CLK_PLL4_PFD2_DIV1_GATE	17
> > > +#define IMX8ULP_CLK_PLL4_PFD2_DIV2_GATE	18
> > > +#define IMX8ULP_CLK_PLL4_PFD3_DIV1_GATE	19
> > > +#define IMX8ULP_CLK_PLL4_PFD3_DIV2_GATE	20
> > > +#define IMX8ULP_CLK_PLL4_PFD0_DIV1	21
> > > +#define IMX8ULP_CLK_PLL4_PFD0_DIV2	22
> > > +#define IMX8ULP_CLK_PLL4_PFD1_DIV1	23
> > > +#define IMX8ULP_CLK_PLL4_PFD1_DIV2	24
> > > +#define IMX8ULP_CLK_PLL4_PFD2_DIV1	25
> > > +#define IMX8ULP_CLK_PLL4_PFD2_DIV2	26
> > > +#define IMX8ULP_CLK_PLL4_PFD3_DIV1	27
> > > +#define IMX8ULP_CLK_PLL4_PFD3_DIV2	28
> > > +#define IMX8ULP_CLK_CGC2_SOSC_DIV1_GATE	29
> > > +#define IMX8ULP_CLK_CGC2_SOSC_DIV2_GATE	30
> > > +#define IMX8ULP_CLK_CGC2_SOSC_DIV3_GATE	31
> > > +#define IMX8ULP_CLK_CGC2_SOSC_DIV1	32
> > > +#define IMX8ULP_CLK_CGC2_SOSC_DIV2	33
> > > +#define IMX8ULP_CLK_CGC2_SOSC_DIV3	34
> > > +#define IMX8ULP_CLK_CGC2_FROSC_DIV1_GATE	35
> > > +#define IMX8ULP_CLK_CGC2_FROSC_DIV2_GATE	36
> > > +#define IMX8ULP_CLK_CGC2_FROSC_DIV3_GATE	37
> > > +#define IMX8ULP_CLK_CGC2_FROSC_DIV1	38
> > > +#define IMX8ULP_CLK_CGC2_FROSC_DIV2	39
> > > +#define IMX8ULP_CLK_CGC2_FROSC_DIV3	40
> > > +#define IMX8ULP_CLK_AUD_CLK2		41
> > > +#define IMX8ULP_CLK_SAI6_SEL		42
> > > +#define IMX8ULP_CLK_SAI7_SEL		43
> > > +#define IMX8ULP_CLK_SPDIF_SEL		44
> > > +#define IMX8ULP_CLK_HIFI_SEL		45
> > > +#define IMX8ULP_CLK_HIFI_DIVCORE	46
> > > +#define IMX8ULP_CLK_HIFI_DIVPLAT	47
> > > +#define IMX8ULP_CLK_DSI_PHY_REF		48
> > > +
> > > +#define IMX8ULP_CLK_CGC2_END		49
> > > +
> > > +/* PCC3 */
> > > +#define IMX8ULP_CLK_WDOG3		0
> > > +#define IMX8ULP_CLK_WDOG4		1
> > > +#define IMX8ULP_CLK_LPIT1		2
> > > +#define IMX8ULP_CLK_TPM4		3
> > > +#define IMX8ULP_CLK_TPM5		4
> > > +#define IMX8ULP_CLK_FLEXIO1		5
> > > +#define IMX8ULP_CLK_I3C2		6
> > > +#define IMX8ULP_CLK_LPI2C4		7
> > > +#define IMX8ULP_CLK_LPI2C5		8
> > > +#define IMX8ULP_CLK_LPUART4		9
> > > +#define IMX8ULP_CLK_LPUART5		10
> > > +#define IMX8ULP_CLK_LPSPI4		11
> > > +#define IMX8ULP_CLK_LPSPI5		12
> > > +#define IMX8ULP_CLK_DMA1_MP		13
> > > +#define IMX8ULP_CLK_DMA1_CH0		14
> > > +#define IMX8ULP_CLK_DMA1_CH1		15
> > > +#define IMX8ULP_CLK_DMA1_CH2		16
> > > +#define IMX8ULP_CLK_DMA1_CH3		17
> > > +#define IMX8ULP_CLK_DMA1_CH4		18
> > > +#define IMX8ULP_CLK_DMA1_CH5		19
> > > +#define IMX8ULP_CLK_DMA1_CH6		20
> > > +#define IMX8ULP_CLK_DMA1_CH7		21
> > > +#define IMX8ULP_CLK_DMA1_CH8		22
> > > +#define IMX8ULP_CLK_DMA1_CH9		23
> > > +#define IMX8ULP_CLK_DMA1_CH10		24
> > > +#define IMX8ULP_CLK_DMA1_CH11		25
> > > +#define IMX8ULP_CLK_DMA1_CH12		26
> > > +#define IMX8ULP_CLK_DMA1_CH13		27
> > > +#define IMX8ULP_CLK_DMA1_CH14		28
> > > +#define IMX8ULP_CLK_DMA1_CH15		29
> > > +#define IMX8ULP_CLK_DMA1_CH16		30
> > > +#define IMX8ULP_CLK_DMA1_CH17		31
> > > +#define IMX8ULP_CLK_DMA1_CH18		32
> > > +#define IMX8ULP_CLK_DMA1_CH19		33
> > > +#define IMX8ULP_CLK_DMA1_CH20		34
> > > +#define IMX8ULP_CLK_DMA1_CH21		35
> > > +#define IMX8ULP_CLK_DMA1_CH22		36
> > > +#define IMX8ULP_CLK_DMA1_CH23		37
> > > +#define IMX8ULP_CLK_DMA1_CH24		38
> > > +#define IMX8ULP_CLK_DMA1_CH25		39
> > > +#define IMX8ULP_CLK_DMA1_CH26		40
> > > +#define IMX8ULP_CLK_DMA1_CH27		41
> > > +#define IMX8ULP_CLK_DMA1_CH28		42
> > > +#define IMX8ULP_CLK_DMA1_CH29		43
> > > +#define IMX8ULP_CLK_DMA1_CH30		44
> > > +#define IMX8ULP_CLK_DMA1_CH31		45
> > > +#define IMX8ULP_CLK_MU3_A		46
> > > +#define IMX8ULP_CLK_MU0_B		47
> > > +
> > > +#define IMX8ULP_CLK_PCC3_END		48
> > > +
> > > +/* PCC4 */
> > > +#define IMX8ULP_CLK_FLEXSPI2		0
> > > +#define IMX8ULP_CLK_TPM6		1
> > > +#define IMX8ULP_CLK_TPM7		2
> > > +#define IMX8ULP_CLK_LPI2C6		3
> > > +#define IMX8ULP_CLK_LPI2C7		4
> > > +#define IMX8ULP_CLK_LPUART6		5
> > > +#define IMX8ULP_CLK_LPUART7		6
> > > +#define IMX8ULP_CLK_SAI4		7
> > > +#define IMX8ULP_CLK_SAI5		8
> > > +#define IMX8ULP_CLK_PCTLE		9
> > > +#define IMX8ULP_CLK_PCTLF		10
> > > +#define IMX8ULP_CLK_USDHC0		11
> > > +#define IMX8ULP_CLK_USDHC1		12
> > > +#define IMX8ULP_CLK_USDHC2		13
> > > +#define IMX8ULP_CLK_USB0		14
> > > +#define IMX8ULP_CLK_USB0_PHY		15
> > > +#define IMX8ULP_CLK_USB1		16
> > > +#define IMX8ULP_CLK_USB1_PHY		17
> > > +#define IMX8ULP_CLK_USB_XBAR		18
> > > +#define IMX8ULP_CLK_ENET		19
> > > +#define IMX8ULP_CLK_SFA1		20
> > > +#define IMX8ULP_CLK_RGPIOE		21
> > > +#define IMX8ULP_CLK_RGPIOF		22
> > > +
> > > +#define IMX8ULP_CLK_PCC4_END		23
> > > +
> > > +/* PCC5 */
> > > +#define IMX8ULP_CLK_TPM8		0
> > > +#define IMX8ULP_CLK_SAI6		1
> > > +#define IMX8ULP_CLK_SAI7		2
> > > +#define IMX8ULP_CLK_SPDIF		3
> > > +#define IMX8ULP_CLK_ISI			4
> > > +#define IMX8ULP_CLK_CSI_REGS 		5
> > > +#define IMX8ULP_CLK_PCTLD		6
> > > +#define IMX8ULP_CLK_CSI			7
> > > +#define IMX8ULP_CLK_DSI			8
> > > +#define IMX8ULP_CLK_WDOG5		9
> > > +#define IMX8ULP_CLK_EPDC		10
> > > +#define IMX8ULP_CLK_PXP			11
> > > +#define IMX8ULP_CLK_SFA2		12
> > > +#define IMX8ULP_CLK_GPU2D		13
> > > +#define IMX8ULP_CLK_GPU3D		14
> > > +#define IMX8ULP_CLK_DC_NANO		15
> > > +#define IMX8ULP_CLK_CSI_CLK_UI 		16
> > > +#define IMX8ULP_CLK_CSI_CLK_ESC		17
> > > +#define IMX8ULP_CLK_RGPIOD		18
> > > +#define IMX8ULP_CLK_DMA2_MP		19
> > > +#define IMX8ULP_CLK_DMA2_CH0		20
> > > +#define IMX8ULP_CLK_DMA2_CH1		21
> > > +#define IMX8ULP_CLK_DMA2_CH2		22
> > > +#define IMX8ULP_CLK_DMA2_CH3		23
> > > +#define IMX8ULP_CLK_DMA2_CH4		24
> > > +#define IMX8ULP_CLK_DMA2_CH5		25
> > > +#define IMX8ULP_CLK_DMA2_CH6		26
> > > +#define IMX8ULP_CLK_DMA2_CH7		27
> > > +#define IMX8ULP_CLK_DMA2_CH8		28
> > > +#define IMX8ULP_CLK_DMA2_CH9		29
> > > +#define IMX8ULP_CLK_DMA2_CH10		30
> > > +#define IMX8ULP_CLK_DMA2_CH11		31
> > > +#define IMX8ULP_CLK_DMA2_CH12		32
> > > +#define IMX8ULP_CLK_DMA2_CH13		33
> > > +#define IMX8ULP_CLK_DMA2_CH14		34
> > > +#define IMX8ULP_CLK_DMA2_CH15		35
> > > +#define IMX8ULP_CLK_DMA2_CH16		36
> > > +#define IMX8ULP_CLK_DMA2_CH17		37
> > > +#define IMX8ULP_CLK_DMA2_CH18		38
> > > +#define IMX8ULP_CLK_DMA2_CH19		39
> > > +#define IMX8ULP_CLK_DMA2_CH20		40
> > > +#define IMX8ULP_CLK_DMA2_CH21		41
> > > +#define IMX8ULP_CLK_DMA2_CH22		42
> > > +#define IMX8ULP_CLK_DMA2_CH23		43
> > > +#define IMX8ULP_CLK_DMA2_CH24		44
> > > +#define IMX8ULP_CLK_DMA2_CH25		45
> > > +#define IMX8ULP_CLK_DMA2_CH26		46
> > > +#define IMX8ULP_CLK_DMA2_CH27		47
> > > +#define IMX8ULP_CLK_DMA2_CH28		48
> > > +#define IMX8ULP_CLK_DMA2_CH29		49
> > > +#define IMX8ULP_CLK_DMA2_CH30		50
> > > +#define IMX8ULP_CLK_DMA2_CH31		51
> > > +#define IMX8ULP_CLK_MU2_B		52
> > > +#define IMX8ULP_CLK_MU3_B		53
> > > +#define IMX8ULP_CLK_AVD_SIM		54
> > > +#define IMX8ULP_CLK_DSI_TX_ESC		55
> > > +
> > > +#define IMX8ULP_CLK_PCC5_END		56
> > > +
> > > +#endif
> > > diff --git a/include/dt-bindings/reset/imx8ulp-pcc-reset.h
> > > b/include/dt-bindings/reset/imx8ulp-pcc-reset.h
> > > new file mode 100644
> > > index 000000000000..e99a4735c3c4
> > > --- /dev/null
> > > +++ b/include/dt-bindings/reset/imx8ulp-pcc-reset.h
> > > @@ -0,0 +1,59 @@
> > > +/* SPDX-License-Identifier: GPL-2.0-only */
> > > +/*
> > > + * Copyright 2021 NXP
> > > + */
> > > +
> > > +#ifndef DT_BINDING_PCC_RESET_IMX8ULP_H #define
> > > +DT_BINDING_PCC_RESET_IMX8ULP_H
> > > +
> > > +/* PCC3 */
> > > +#define PCC3_WDOG3_SWRST	0
> > > +#define PCC3_WDOG4_SWRST	1
> > > +#define PCC3_LPIT1_SWRST	2
> > > +#define PCC3_TPM4_SWRST		3
> > > +#define PCC3_TPM5_SWRST		4
> > > +#define PCC3_FLEXIO1_SWRST	5
> > > +#define PCC3_I3C2_SWRST		6
> > > +#define PCC3_LPI2C4_SWRST	7
> > > +#define PCC3_LPI2C5_SWRST	8
> > > +#define PCC3_LPUART4_SWRST	9
> > > +#define PCC3_LPUART5_SWRST	10
> > > +#define PCC3_LPSPI4_SWRST	11
> > > +#define PCC3_LPSPI5_SWRST	12
> > > +
> > > +/* PCC4 */
> > > +#define PCC4_FLEXSPI2_SWRST	0
> > > +#define PCC4_TPM6_SWRST		1
> > > +#define PCC4_TPM7_SWRST		2
> > > +#define PCC4_LPI2C6_SWRST	3
> > > +#define PCC4_LPI2C7_SWRST	4
> > > +#define PCC4_LPUART6_SWRST	5
> > > +#define PCC4_LPUART7_SWRST	6
> > > +#define PCC4_SAI4_SWRST		7
> > > +#define PCC4_SAI5_SWRST		8
> > > +#define PCC4_USDHC0_SWRST	9
> > > +#define PCC4_USDHC1_SWRST	10
> > > +#define PCC4_USDHC2_SWRST	11
> > > +#define PCC4_USB0_SWRST		12
> > > +#define PCC4_USB0_PHY_SWRST	13
> > > +#define PCC4_USB1_SWRST		14
> > > +#define PCC4_USB1_PHY_SWRST	15
> > > +#define PCC4_ENET_SWRST		16
> > > +
> > > +/* PCC5 */
> > > +#define PCC5_TPM8_SWRST		0
> > > +#define PCC5_SAI6_SWRST		1
> > > +#define PCC5_SAI7_SWRST		2
> > > +#define PCC5_SPDIF_SWRST	3
> > > +#define PCC5_ISI_SWRST		4
> > > +#define PCC5_CSI_REGS_SWRST	5
> > > +#define PCC5_CSI_SWRST		6
> > > +#define PCC5_DSI_SWRST		7
> > > +#define PCC5_WDOG5_SWRST	8
> > > +#define PCC5_EPDC_SWRST		9
> > > +#define PCC5_PXP_SWRST		10
> > > +#define PCC5_GPU2D_SWRST	11
> > > +#define PCC5_GPU3D_SWRST	12
> > > +#define PCC5_DC_NANO_SWRST	13
> > > +
> > > +#endif /*DT_BINDING_RESET_IMX8ULP_H */
> > > --
> > > 2.26.2
> > >
