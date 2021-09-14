Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D94A540AC5D
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 13:25:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232172AbhINL00 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 07:26:26 -0400
Received: from mail-eopbgr80042.outbound.protection.outlook.com ([40.107.8.42]:16345
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231941AbhINL0Y (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 07:26:24 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HURB4SDyWBaQZ0TUNIwCgRecnoBYfm02SCfdoe9+N7UAiuZ9HMXj81Xw58E4mUSDKUNLy3z6k7LwELyMX4997D/Qv8tuLVSrAL2IwsX/wTOKjnhoSZCKIODDVsPSA1MjU1YsK2/i5C9iuWTjJrRNwWw+v7n2sd6zPFLX+YLjMOjsgiTJnCcMFb7Z0WMtZCywu1spgeZMnzubHLLD2bTOND/fwgOtguyLPB+JgN0kxxZJHJN1zSB/39n2mzAdO1tRjM4ejDtveyZOOxb1f85BEAW+cYSe3jPuxfNs80WNo4F8wb8+6gNEu34oGVIiZZ3rvjCHvECKHPbNprWkx1QYqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=bwG3+UqVMwJzecMYyJliRiH7+W4n4KRChSYgqxX8gdo=;
 b=PJ7dfNI9SZVInnjAQjzZi3irrSUTFf6rXTUwHd3M5tKV2SeEMxJmc22Rn+szwoNZER8XVOEp6nm0gZ4qDoR62iJ/Lh2hWSrnTFrDN2jQJoWFpmSfLG1AmeRRHyDTBUWJxzcVdGuQadWqH28NjIyiK355DnurIXKwOuIMvcMFjeaid6JcB9e9j9EdVmuAPWVEGFDOcTc7bxVria3lQ4s3RIky/smcQxhqbwesT0mkxemu3IGhr9VqrXbzdPF3J9RLlLu0OiAEI7i1ME1OxuCERa4+cnOqjoYJQiA0JJDMiIiOpyjrKIne9BjNkyPTeWJvVVbtX8XUAHIiRGvLzGipAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bwG3+UqVMwJzecMYyJliRiH7+W4n4KRChSYgqxX8gdo=;
 b=QYwmfuJSJQcSFVEodnP7ZKBSKKgHfQNmNBXib/56n/zLfExI1W6j9dj3TxuaZgj8uA0a8elZG9r46dKtPD9Z1i7Lxi7Ra0petJSgZ2tfZczMwO/PxW6lzEd0Dn3iVBX8kpFhsx/NV0ip8e28LjfjSIvO8ujsrO0ytk1bz3Zkf9k=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com (2603:10a6:800:57::8)
 by VI1PR0401MB2366.eurprd04.prod.outlook.com (2603:10a6:800:2b::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Tue, 14 Sep
 2021 11:25:05 +0000
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb]) by VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb%10]) with mapi id 15.20.4500.019; Tue, 14 Sep
 2021 11:25:05 +0000
Date:   Tue, 14 Sep 2021 14:25:03 +0300
From:   Abel Vesa <abel.vesa@nxp.com>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, p.zabel@pengutronix.de,
        kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/9] dt-bindings: clock: Add imx8ulp clock support
Message-ID: <YUCGj2fDB3VWQ+BN@ryzen>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
 <20210914065208.3582128-2-ping.bai@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210914065208.3582128-2-ping.bai@nxp.com>
X-ClientProxiedBy: VI1P194CA0035.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::24) To VI1PR0401MB2559.eurprd04.prod.outlook.com
 (2603:10a6:800:57::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ryzen (188.25.164.198) by VI1P194CA0035.EURP194.PROD.OUTLOOK.COM (2603:10a6:803:3c::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.17 via Frontend Transport; Tue, 14 Sep 2021 11:25:04 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eae2b39a-e6a5-4114-a086-08d977724d03
X-MS-TrafficTypeDiagnostic: VI1PR0401MB2366:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0401MB2366E3AE670CA428DBD31898F6DA9@VI1PR0401MB2366.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9+i+C9lwfZDPBIKXbkO9FBg1R4vyDVchAKLeSidqpjbjGLTSr0K6cKd3xHhSYoX9A7Eb4JkRp3UVy9+9BYoRLw2Sx+7lgaWrfSCEJUaKiSaEsb2kI2VKpQ0XiUzTN6bbMN1B+Qj7+FemRclWHe7r2xwce9Y/AS94gz9sIT7EzC7ePeSeJ7MKHoVZPzj3qqrnMQhquwKg9gsKr/sQAd3ozsV9f6vPPiEk1SKhv/OiOZRBMmzoMZ3p+goojSES76Q/s+4Byx5Br2P+m004dh55kCz6r9CVkrl8411iOJyoSu4icQe3mJXIOoCjgwxkWU74+xLJZ3tD5BlVm8GkdmUjL1ggdan5apRDbADUz6Oppcj1U0mqAiS1TRPNmKTgYg29dJBAKgNLm0j7bCS7Y8YnamslnA7mD9ewHQohB0ufIkaIpVLOJkCa8l7Ao37M6YN0M6vMN+spFI+0opeTzXaC3PJxUAQmtDWREhcXPCEMoedARb67mmwDUkqpMZgZro4sAkP2HT73bY/8NNzivcJVXl69cjxYh2CCw2lONHSElaMlp/AaECGvNqUO2jm1XNG20GUDdkPmTj06bAbIdJigZCYulLLVKIrteIukgMuhIAmOwH5Tprk1D6gagGGSAwPNYDBrwetMugERkXn78I0UYG2VmmdyXmz9GRuu1dNZyvhG0gu+dYIggsPH/EEBHb+YlRmwhfBiVym/9UPrP2vIYU0Eiq3LjcyecC/qYGpgXkiBW9GU7DNK2xWgD88WIfq0HMkhlPYmM667zelDW4tkC+yu7gAkptUxloy13OxYeqEFKOJyWQWQihyWFhUGNU7aV2rPpcXsTv01bwaGZ+MiOECyOPLBW3p66pY4mEiAc9KZ8c63Ox5bh6LOgeZti1pe
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0401MB2559.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(366004)(136003)(396003)(346002)(376002)(478600001)(6862004)(53546011)(8936002)(956004)(966005)(2906002)(6636002)(9576002)(66476007)(66556008)(66946007)(8676002)(186003)(4326008)(38350700002)(26005)(38100700002)(83380400001)(33716001)(316002)(6496006)(52116002)(30864003)(86362001)(9686003)(44832011)(55016002)(5660300002)(32563001)(67856001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nEt2KVHPDMSDkEH8kgVOXqHCZ4UvSigPOGWRwOrZCYTfb6a/1pMBoXORs9ov?=
 =?us-ascii?Q?zJJ7HqNf3EFLDALH9lun8KVrEQTidcidGu6tNTWKYUMUjPklHSR4se5tGhND?=
 =?us-ascii?Q?Woxu9wGrTcKLZJKR0P0zUcxXJvid7CHuyd/6Ra3rhMQs+ZMZX6svf5aB/Bap?=
 =?us-ascii?Q?p4IDfZCWRrekjUv2O7hrfo09Xh41yIzqF07fAXg4uE7ML4b4DkrdMAjQSNOo?=
 =?us-ascii?Q?l51sBjsbR598ypDTtMevflCZN1tm6LG/AHx4JQjHxfQSnxdnXgk541A1Z3hk?=
 =?us-ascii?Q?G54C06okCsNiyV7rhSnsEcgCJOIl2acUkYqriIq5GsgLVGjLSylqelNJRTBm?=
 =?us-ascii?Q?ku72CzUcqyjXM0WMjaxZhXUmagOovHHnb08VTj4I3fXOeDd6fD4Rp5h180Od?=
 =?us-ascii?Q?Tz5/Wq9ENgjT5BaLQGaPqmqcq0ae8YSmL0G9kl584GC7dQHitRDglaOS06cg?=
 =?us-ascii?Q?Bks6hIECs/VfH4rK8FskgfNKEK2vkDDeMj8UZ7I6+0H1xBmHK+HEBf8SJsj2?=
 =?us-ascii?Q?7sBl0tpEk1Slk9wTEFoKGD26eBEpv57pHFaQ0LmZqCsck/3asp9FiC8sL2ex?=
 =?us-ascii?Q?H/okKmI1+mv3lWiwvcFd0vlhVJkxzMmxjWn7pAT+WegNkosT7LLh+vro/Gjp?=
 =?us-ascii?Q?4NUdhohQwNHQQiWIER++JXaCxW0aR52EWbcbsyF+ODisn1vB6ElQbh3uuk46?=
 =?us-ascii?Q?XNzVd+rRWneJJ/PpoDEQ0Iv7lckhPKGTR8PUlRDdvTHrqZoGrxyiu6WKyP6T?=
 =?us-ascii?Q?chxX4t9EdGOZU6sD5vHRZHBNivpHCZyNkYwQBbxwW7FZYOwOX65z8lnbqBsx?=
 =?us-ascii?Q?ZqikfbBaP8WXLNx40osnqleHOhRhDcanpBoTP2fh+lXISp+C6mNIT7XkahOe?=
 =?us-ascii?Q?P7C8cUDggDqGXYvRSIzsI1CohQyCYuNb51GZBzmULIUwpeHuI+VUYQLowtNk?=
 =?us-ascii?Q?L4pkXgxJQQyhsTrBzy4cXP2SPOI0j4ZqGBVsYttgYCeG1rzKr+SU/+LUvuYD?=
 =?us-ascii?Q?B+t8ESGsOHfh+rpwHkadxvjGVdBNtmB1wohoclbNChohBZaiEhvlAh6CpS0w?=
 =?us-ascii?Q?bhKymMRrcucNewNJo4qrPWkz35R3HvOWXIDjUbQHipq4lIcM3bZQ9o1/kGcX?=
 =?us-ascii?Q?LdWrAEZctWSz1QfuZZEbbSKhzY7Icy4bYlfAfpmuQ++mZqVu2Me4P/AWPDHc?=
 =?us-ascii?Q?tELynhgn0+lYLbdVefWFlNFE82Pk0+ko7IRMfOWmb0gClGY71MlcPlo5Vk9D?=
 =?us-ascii?Q?VWk0Skmt5pibT5iHTf7xGzLqAvVy54CHO0tuKRHQhlkgrCDQ0riibRRfSKC3?=
 =?us-ascii?Q?yCgJJ3uaetH44XY+itHSCXuX?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eae2b39a-e6a5-4114-a086-08d977724d03
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0401MB2559.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 11:25:05.3135
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: csG8dIRAsR5Z5tc7FGbtms266Gaa6ae4RlCaoJTp6xjRw7qx8NO604HHUY/PCTHIwPXSXeBW4M0em2dOJPALgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2366
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21-09-14 14:52:00, Jacky Bai wrote:
> Add the clock dt-binding file for i.MX8ULP.
> 
> For pcc node, it will also be used as a reset controller,
> so add the '#reset-cells' property description and add the
> pcc reset IDs.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  v3 changes:
>    - split into two binding file, one for pcc, one for cgc
> 
>  v2 changes:
>    - removed the redundant clocks & clock-names property
> 
>  v1 changes:
>    - Move this patch from dts patchset into this patchset
> ---
>  .../bindings/clock/imx8ulp-cgc-clock.yaml     |  43 +++
>  .../bindings/clock/imx8ulp-pcc-clock.yaml     |  50 ++++
>  include/dt-bindings/clock/imx8ulp-clock.h     | 258 ++++++++++++++++++
>  include/dt-bindings/reset/imx8ulp-pcc-reset.h |  59 ++++
>  4 files changed, 410 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/imx8ulp-cgc-clock.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/imx8ulp-pcc-clock.yaml
>  create mode 100644 include/dt-bindings/clock/imx8ulp-clock.h
>  create mode 100644 include/dt-bindings/reset/imx8ulp-pcc-reset.h
> 
> diff --git a/Documentation/devicetree/bindings/clock/imx8ulp-cgc-clock.yaml b/Documentation/devicetree/bindings/clock/imx8ulp-cgc-clock.yaml

I'm not sure but I think the Documentation part is usually done in a
separate patch.

> new file mode 100644
> index 000000000000..71f7186b135b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/imx8ulp-cgc-clock.yaml
> @@ -0,0 +1,43 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/imx8ulp-cgc-clock.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX8ULP Clock Generation & Control(CGC) Module Binding
> +
> +maintainers:
> +  - Jacky Bai <ping.bai@nxp.com>
> +
> +description: |
> +  On i.MX8ULP, The clock sources generation, distribution and management is
> +  under the control of several CGCs & PCCs modules. The CGC modules generate
> +  and distribute clocks on the device.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8ulp-cgc1
> +      - fsl,imx8ulp-cgc2
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#clock-cells':
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#clock-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  # Clock Generation & Control Module node:
> +  - |
> +    clock-controller@292c0000 {
> +        compatible = "fsl,imx8ulp-cgc1";
> +        reg = <0x292c0000 0x10000>;
> +        #clock-cells = <1>;
> +    };
> diff --git a/Documentation/devicetree/bindings/clock/imx8ulp-pcc-clock.yaml b/Documentation/devicetree/bindings/clock/imx8ulp-pcc-clock.yaml
> new file mode 100644
> index 000000000000..00612725bf8b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/imx8ulp-pcc-clock.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/imx8ulp-pcc-clock.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX8ULP Peripheral Clock Controller(PCC) Module Binding
> +
> +maintainers:
> +  - Jacky Bai <ping.bai@nxp.com>
> +
> +description: |
> +  On i.MX8ULP, The clock sources generation, distribution and management is
> +  under the control of several CGCs & PCCs modules. The PCC modules control
> +  software reset, clock selection, optional division and clock gating mode
> +  for peripherals.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8ulp-pcc3
> +      - fsl,imx8ulp-pcc4
> +      - fsl,imx8ulp-pcc5
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#clock-cells':
> +    const: 1
> +
> +  '#reset-cells':
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#clock-cells'
> +  - '#reset-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  # Peripheral Clock Control Module node:
> +  - |
> +    clock-controller@292d0000 {
> +        compatible = "fsl,imx8ulp-pcc3";
> +        reg = <0x292d0000 0x10000>;
> +        #clock-cells = <1>;
> +        #reset-cells = <1>;
> +    };
> diff --git a/include/dt-bindings/clock/imx8ulp-clock.h b/include/dt-bindings/clock/imx8ulp-clock.h
> new file mode 100644
> index 000000000000..953ecfe8ebcc
> --- /dev/null
> +++ b/include/dt-bindings/clock/imx8ulp-clock.h
> @@ -0,0 +1,258 @@
> +/* SPDX-License-Identifier: GPL-2.0+ OR MIT */
> +/*
> + * Copyright 2021 NXP
> + */
> +
> +#ifndef __DT_BINDINGS_CLOCK_IMX8ULP_H
> +#define __DT_BINDINGS_CLOCK_IMX8ULP_H
> +
> +#define IMX8ULP_CLK_DUMMY			0
> +
> +/* CGC1 */
> +#define IMX8ULP_CLK_SPLL2			5
> +#define IMX8ULP_CLK_SPLL3			6
> +#define IMX8ULP_CLK_A35_SEL			7
> +#define IMX8ULP_CLK_A35_DIV			8
> +#define IMX8ULP_CLK_SPLL2_PRE_SEL		9
> +#define IMX8ULP_CLK_SPLL3_PRE_SEL		10
> +#define IMX8ULP_CLK_SPLL3_PFD0			11
> +#define IMX8ULP_CLK_SPLL3_PFD1			12
> +#define IMX8ULP_CLK_SPLL3_PFD2			13
> +#define IMX8ULP_CLK_SPLL3_PFD3			14
> +#define IMX8ULP_CLK_SPLL3_PFD0_DIV1		15
> +#define IMX8ULP_CLK_SPLL3_PFD0_DIV2		16
> +#define IMX8ULP_CLK_SPLL3_PFD1_DIV1		17
> +#define IMX8ULP_CLK_SPLL3_PFD1_DIV2		18
> +#define IMX8ULP_CLK_SPLL3_PFD2_DIV1		19
> +#define IMX8ULP_CLK_SPLL3_PFD2_DIV2		20
> +#define IMX8ULP_CLK_SPLL3_PFD3_DIV1		21
> +#define IMX8ULP_CLK_SPLL3_PFD3_DIV2		22
> +#define IMX8ULP_CLK_NIC_SEL			23
> +#define IMX8ULP_CLK_NIC_AD_DIVPLAT		24
> +#define IMX8ULP_CLK_NIC_PER_DIVPLAT		25
> +#define IMX8ULP_CLK_XBAR_SEL			26
> +#define IMX8ULP_CLK_XBAR_AD_DIVPLAT		27
> +#define IMX8ULP_CLK_XBAR_DIVBUS			28
> +#define IMX8ULP_CLK_XBAR_AD_SLOW		29
> +#define IMX8ULP_CLK_SOSC_DIV1			30
> +#define IMX8ULP_CLK_SOSC_DIV2			31
> +#define IMX8ULP_CLK_SOSC_DIV3			32
> +#define IMX8ULP_CLK_FROSC_DIV1			33
> +#define IMX8ULP_CLK_FROSC_DIV2			34
> +#define IMX8ULP_CLK_FROSC_DIV3			35
> +#define IMX8ULP_CLK_SPLL3_VCODIV		36
> +#define IMX8ULP_CLK_SPLL3_PFD0_DIV1_GATE	37
> +#define IMX8ULP_CLK_SPLL3_PFD0_DIV2_GATE	38
> +#define IMX8ULP_CLK_SPLL3_PFD1_DIV1_GATE	39
> +#define IMX8ULP_CLK_SPLL3_PFD1_DIV2_GATE	40
> +#define IMX8ULP_CLK_SPLL3_PFD2_DIV1_GATE	41
> +#define IMX8ULP_CLK_SPLL3_PFD2_DIV2_GATE	42
> +#define IMX8ULP_CLK_SPLL3_PFD3_DIV1_GATE	43
> +#define IMX8ULP_CLK_SPLL3_PFD3_DIV2_GATE	44
> +#define IMX8ULP_CLK_SOSC_DIV1_GATE		45
> +#define IMX8ULP_CLK_SOSC_DIV2_GATE		46
> +#define IMX8ULP_CLK_SOSC_DIV3_GATE		47
> +#define IMX8ULP_CLK_FROSC_DIV1_GATE		48
> +#define IMX8ULP_CLK_FROSC_DIV2_GATE		49
> +#define IMX8ULP_CLK_FROSC_DIV3_GATE		50
> +#define IMX8ULP_CLK_SAI4_SEL			51
> +#define IMX8ULP_CLK_SAI5_SEL			52
> +#define IMX8ULP_CLK_AUD_CLK1			53
> +#define IMX8ULP_CLK_ARM				54
> +#define IMX8ULP_CLK_ENET_TS_SEL			55
> +
> +#define IMX8ULP_CLK_CGC1_END			56
> +
> +/* CGC2 */
> +#define IMX8ULP_CLK_PLL4_PRE_SEL	0
> +#define IMX8ULP_CLK_PLL4		1
> +#define IMX8ULP_CLK_PLL4_VCODIV		2
> +#define IMX8ULP_CLK_DDR_SEL		3
> +#define IMX8ULP_CLK_DDR_DIV		4
> +#define IMX8ULP_CLK_LPAV_AXI_SEL	5
> +#define IMX8ULP_CLK_LPAV_AXI_DIV	6
> +#define IMX8ULP_CLK_LPAV_AHB_DIV	7
> +#define IMX8ULP_CLK_LPAV_BUS_DIV	8
> +#define IMX8ULP_CLK_PLL4_PFD0		9
> +#define IMX8ULP_CLK_PLL4_PFD1		10
> +#define IMX8ULP_CLK_PLL4_PFD2		11
> +#define IMX8ULP_CLK_PLL4_PFD3		12
> +#define IMX8ULP_CLK_PLL4_PFD0_DIV1_GATE	13
> +#define IMX8ULP_CLK_PLL4_PFD0_DIV2_GATE	14
> +#define IMX8ULP_CLK_PLL4_PFD1_DIV1_GATE	15
> +#define IMX8ULP_CLK_PLL4_PFD1_DIV2_GATE	16
> +#define IMX8ULP_CLK_PLL4_PFD2_DIV1_GATE	17
> +#define IMX8ULP_CLK_PLL4_PFD2_DIV2_GATE	18
> +#define IMX8ULP_CLK_PLL4_PFD3_DIV1_GATE	19
> +#define IMX8ULP_CLK_PLL4_PFD3_DIV2_GATE	20
> +#define IMX8ULP_CLK_PLL4_PFD0_DIV1	21
> +#define IMX8ULP_CLK_PLL4_PFD0_DIV2	22
> +#define IMX8ULP_CLK_PLL4_PFD1_DIV1	23
> +#define IMX8ULP_CLK_PLL4_PFD1_DIV2	24
> +#define IMX8ULP_CLK_PLL4_PFD2_DIV1	25
> +#define IMX8ULP_CLK_PLL4_PFD2_DIV2	26
> +#define IMX8ULP_CLK_PLL4_PFD3_DIV1	27
> +#define IMX8ULP_CLK_PLL4_PFD3_DIV2	28
> +#define IMX8ULP_CLK_CGC2_SOSC_DIV1_GATE	29
> +#define IMX8ULP_CLK_CGC2_SOSC_DIV2_GATE	30
> +#define IMX8ULP_CLK_CGC2_SOSC_DIV3_GATE	31
> +#define IMX8ULP_CLK_CGC2_SOSC_DIV1	32
> +#define IMX8ULP_CLK_CGC2_SOSC_DIV2	33
> +#define IMX8ULP_CLK_CGC2_SOSC_DIV3	34
> +#define IMX8ULP_CLK_CGC2_FROSC_DIV1_GATE	35
> +#define IMX8ULP_CLK_CGC2_FROSC_DIV2_GATE	36
> +#define IMX8ULP_CLK_CGC2_FROSC_DIV3_GATE	37
> +#define IMX8ULP_CLK_CGC2_FROSC_DIV1	38
> +#define IMX8ULP_CLK_CGC2_FROSC_DIV2	39
> +#define IMX8ULP_CLK_CGC2_FROSC_DIV3	40
> +#define IMX8ULP_CLK_AUD_CLK2		41
> +#define IMX8ULP_CLK_SAI6_SEL		42
> +#define IMX8ULP_CLK_SAI7_SEL		43
> +#define IMX8ULP_CLK_SPDIF_SEL		44
> +#define IMX8ULP_CLK_HIFI_SEL		45
> +#define IMX8ULP_CLK_HIFI_DIVCORE	46
> +#define IMX8ULP_CLK_HIFI_DIVPLAT	47
> +#define IMX8ULP_CLK_DSI_PHY_REF		48
> +
> +#define IMX8ULP_CLK_CGC2_END		49
> +
> +/* PCC3 */
> +#define IMX8ULP_CLK_WDOG3		0
> +#define IMX8ULP_CLK_WDOG4		1
> +#define IMX8ULP_CLK_LPIT1		2
> +#define IMX8ULP_CLK_TPM4		3
> +#define IMX8ULP_CLK_TPM5		4
> +#define IMX8ULP_CLK_FLEXIO1		5
> +#define IMX8ULP_CLK_I3C2		6
> +#define IMX8ULP_CLK_LPI2C4		7
> +#define IMX8ULP_CLK_LPI2C5		8
> +#define IMX8ULP_CLK_LPUART4		9
> +#define IMX8ULP_CLK_LPUART5		10
> +#define IMX8ULP_CLK_LPSPI4		11
> +#define IMX8ULP_CLK_LPSPI5		12
> +#define IMX8ULP_CLK_DMA1_MP		13
> +#define IMX8ULP_CLK_DMA1_CH0		14
> +#define IMX8ULP_CLK_DMA1_CH1		15
> +#define IMX8ULP_CLK_DMA1_CH2		16
> +#define IMX8ULP_CLK_DMA1_CH3		17
> +#define IMX8ULP_CLK_DMA1_CH4		18
> +#define IMX8ULP_CLK_DMA1_CH5		19
> +#define IMX8ULP_CLK_DMA1_CH6		20
> +#define IMX8ULP_CLK_DMA1_CH7		21
> +#define IMX8ULP_CLK_DMA1_CH8		22
> +#define IMX8ULP_CLK_DMA1_CH9		23
> +#define IMX8ULP_CLK_DMA1_CH10		24
> +#define IMX8ULP_CLK_DMA1_CH11		25
> +#define IMX8ULP_CLK_DMA1_CH12		26
> +#define IMX8ULP_CLK_DMA1_CH13		27
> +#define IMX8ULP_CLK_DMA1_CH14		28
> +#define IMX8ULP_CLK_DMA1_CH15		29
> +#define IMX8ULP_CLK_DMA1_CH16		30
> +#define IMX8ULP_CLK_DMA1_CH17		31
> +#define IMX8ULP_CLK_DMA1_CH18		32
> +#define IMX8ULP_CLK_DMA1_CH19		33
> +#define IMX8ULP_CLK_DMA1_CH20		34
> +#define IMX8ULP_CLK_DMA1_CH21		35
> +#define IMX8ULP_CLK_DMA1_CH22		36
> +#define IMX8ULP_CLK_DMA1_CH23		37
> +#define IMX8ULP_CLK_DMA1_CH24		38
> +#define IMX8ULP_CLK_DMA1_CH25		39
> +#define IMX8ULP_CLK_DMA1_CH26		40
> +#define IMX8ULP_CLK_DMA1_CH27		41
> +#define IMX8ULP_CLK_DMA1_CH28		42
> +#define IMX8ULP_CLK_DMA1_CH29		43
> +#define IMX8ULP_CLK_DMA1_CH30		44
> +#define IMX8ULP_CLK_DMA1_CH31		45
> +#define IMX8ULP_CLK_MU3_A		46
> +#define IMX8ULP_CLK_MU0_B		47
> +
> +#define IMX8ULP_CLK_PCC3_END		48
> +
> +/* PCC4 */
> +#define IMX8ULP_CLK_FLEXSPI2		0
> +#define IMX8ULP_CLK_TPM6		1
> +#define IMX8ULP_CLK_TPM7		2
> +#define IMX8ULP_CLK_LPI2C6		3
> +#define IMX8ULP_CLK_LPI2C7		4
> +#define IMX8ULP_CLK_LPUART6		5
> +#define IMX8ULP_CLK_LPUART7		6
> +#define IMX8ULP_CLK_SAI4		7
> +#define IMX8ULP_CLK_SAI5		8
> +#define IMX8ULP_CLK_PCTLE		9
> +#define IMX8ULP_CLK_PCTLF		10
> +#define IMX8ULP_CLK_USDHC0		11
> +#define IMX8ULP_CLK_USDHC1		12
> +#define IMX8ULP_CLK_USDHC2		13
> +#define IMX8ULP_CLK_USB0		14
> +#define IMX8ULP_CLK_USB0_PHY		15
> +#define IMX8ULP_CLK_USB1		16
> +#define IMX8ULP_CLK_USB1_PHY		17
> +#define IMX8ULP_CLK_USB_XBAR		18
> +#define IMX8ULP_CLK_ENET		19
> +#define IMX8ULP_CLK_SFA1		20
> +#define IMX8ULP_CLK_RGPIOE		21
> +#define IMX8ULP_CLK_RGPIOF		22
> +
> +#define IMX8ULP_CLK_PCC4_END		23
> +
> +/* PCC5 */
> +#define IMX8ULP_CLK_TPM8		0
> +#define IMX8ULP_CLK_SAI6		1
> +#define IMX8ULP_CLK_SAI7		2
> +#define IMX8ULP_CLK_SPDIF		3
> +#define IMX8ULP_CLK_ISI			4
> +#define IMX8ULP_CLK_CSI_REGS 		5
> +#define IMX8ULP_CLK_PCTLD		6
> +#define IMX8ULP_CLK_CSI			7
> +#define IMX8ULP_CLK_DSI			8
> +#define IMX8ULP_CLK_WDOG5		9
> +#define IMX8ULP_CLK_EPDC		10
> +#define IMX8ULP_CLK_PXP			11
> +#define IMX8ULP_CLK_SFA2		12
> +#define IMX8ULP_CLK_GPU2D		13
> +#define IMX8ULP_CLK_GPU3D		14
> +#define IMX8ULP_CLK_DC_NANO		15
> +#define IMX8ULP_CLK_CSI_CLK_UI 		16
> +#define IMX8ULP_CLK_CSI_CLK_ESC		17
> +#define IMX8ULP_CLK_RGPIOD		18
> +#define IMX8ULP_CLK_DMA2_MP		19
> +#define IMX8ULP_CLK_DMA2_CH0		20
> +#define IMX8ULP_CLK_DMA2_CH1		21
> +#define IMX8ULP_CLK_DMA2_CH2		22
> +#define IMX8ULP_CLK_DMA2_CH3		23
> +#define IMX8ULP_CLK_DMA2_CH4		24
> +#define IMX8ULP_CLK_DMA2_CH5		25
> +#define IMX8ULP_CLK_DMA2_CH6		26
> +#define IMX8ULP_CLK_DMA2_CH7		27
> +#define IMX8ULP_CLK_DMA2_CH8		28
> +#define IMX8ULP_CLK_DMA2_CH9		29
> +#define IMX8ULP_CLK_DMA2_CH10		30
> +#define IMX8ULP_CLK_DMA2_CH11		31
> +#define IMX8ULP_CLK_DMA2_CH12		32
> +#define IMX8ULP_CLK_DMA2_CH13		33
> +#define IMX8ULP_CLK_DMA2_CH14		34
> +#define IMX8ULP_CLK_DMA2_CH15		35
> +#define IMX8ULP_CLK_DMA2_CH16		36
> +#define IMX8ULP_CLK_DMA2_CH17		37
> +#define IMX8ULP_CLK_DMA2_CH18		38
> +#define IMX8ULP_CLK_DMA2_CH19		39
> +#define IMX8ULP_CLK_DMA2_CH20		40
> +#define IMX8ULP_CLK_DMA2_CH21		41
> +#define IMX8ULP_CLK_DMA2_CH22		42
> +#define IMX8ULP_CLK_DMA2_CH23		43
> +#define IMX8ULP_CLK_DMA2_CH24		44
> +#define IMX8ULP_CLK_DMA2_CH25		45
> +#define IMX8ULP_CLK_DMA2_CH26		46
> +#define IMX8ULP_CLK_DMA2_CH27		47
> +#define IMX8ULP_CLK_DMA2_CH28		48
> +#define IMX8ULP_CLK_DMA2_CH29		49
> +#define IMX8ULP_CLK_DMA2_CH30		50
> +#define IMX8ULP_CLK_DMA2_CH31		51
> +#define IMX8ULP_CLK_MU2_B		52
> +#define IMX8ULP_CLK_MU3_B		53
> +#define IMX8ULP_CLK_AVD_SIM		54
> +#define IMX8ULP_CLK_DSI_TX_ESC		55
> +
> +#define IMX8ULP_CLK_PCC5_END		56
> +
> +#endif
> diff --git a/include/dt-bindings/reset/imx8ulp-pcc-reset.h b/include/dt-bindings/reset/imx8ulp-pcc-reset.h
> new file mode 100644
> index 000000000000..e99a4735c3c4
> --- /dev/null
> +++ b/include/dt-bindings/reset/imx8ulp-pcc-reset.h
> @@ -0,0 +1,59 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright 2021 NXP
> + */
> +
> +#ifndef DT_BINDING_PCC_RESET_IMX8ULP_H
> +#define DT_BINDING_PCC_RESET_IMX8ULP_H
> +
> +/* PCC3 */
> +#define PCC3_WDOG3_SWRST	0
> +#define PCC3_WDOG4_SWRST	1
> +#define PCC3_LPIT1_SWRST	2
> +#define PCC3_TPM4_SWRST		3
> +#define PCC3_TPM5_SWRST		4
> +#define PCC3_FLEXIO1_SWRST	5
> +#define PCC3_I3C2_SWRST		6
> +#define PCC3_LPI2C4_SWRST	7
> +#define PCC3_LPI2C5_SWRST	8
> +#define PCC3_LPUART4_SWRST	9
> +#define PCC3_LPUART5_SWRST	10
> +#define PCC3_LPSPI4_SWRST	11
> +#define PCC3_LPSPI5_SWRST	12
> +
> +/* PCC4 */
> +#define PCC4_FLEXSPI2_SWRST	0
> +#define PCC4_TPM6_SWRST		1
> +#define PCC4_TPM7_SWRST		2
> +#define PCC4_LPI2C6_SWRST	3
> +#define PCC4_LPI2C7_SWRST	4
> +#define PCC4_LPUART6_SWRST	5
> +#define PCC4_LPUART7_SWRST	6
> +#define PCC4_SAI4_SWRST		7
> +#define PCC4_SAI5_SWRST		8
> +#define PCC4_USDHC0_SWRST	9
> +#define PCC4_USDHC1_SWRST	10
> +#define PCC4_USDHC2_SWRST	11
> +#define PCC4_USB0_SWRST		12
> +#define PCC4_USB0_PHY_SWRST	13
> +#define PCC4_USB1_SWRST		14
> +#define PCC4_USB1_PHY_SWRST	15
> +#define PCC4_ENET_SWRST		16
> +
> +/* PCC5 */
> +#define PCC5_TPM8_SWRST		0
> +#define PCC5_SAI6_SWRST		1
> +#define PCC5_SAI7_SWRST		2
> +#define PCC5_SPDIF_SWRST	3
> +#define PCC5_ISI_SWRST		4
> +#define PCC5_CSI_REGS_SWRST	5
> +#define PCC5_CSI_SWRST		6
> +#define PCC5_DSI_SWRST		7
> +#define PCC5_WDOG5_SWRST	8
> +#define PCC5_EPDC_SWRST		9
> +#define PCC5_PXP_SWRST		10
> +#define PCC5_GPU2D_SWRST	11
> +#define PCC5_GPU3D_SWRST	12
> +#define PCC5_DC_NANO_SWRST	13
> +
> +#endif /*DT_BINDING_RESET_IMX8ULP_H */
> -- 
> 2.26.2
> 
