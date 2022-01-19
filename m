Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E941493C05
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 15:38:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355162AbiASOiV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 09:38:21 -0500
Received: from mail-eopbgr70070.outbound.protection.outlook.com ([40.107.7.70]:27392
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1355175AbiASOiU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 19 Jan 2022 09:38:20 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fcrtHKrsj6VhX41RXRhQlBu1yJuRAiRSlqYpa/V1Fi9j6Lk56gL+ctbay8XNJvGH2qoPQjDOwnGYwae82aZdikun9nL8dP9VqnatP17Ml/JM2SQNTRQCjvtctwtaxESRUURvrRWn6WYdqj1yVdqQHcKLmU3MzJHEgKKmTupz1G0k4T0YZIXdUlaMSTmXZnCHkDFxnOwAP3oEz+N9dFkH+Zs909HTcBWGOmFT1i6Q5y4KhcQyS3P9R1O/EhXC/ZZq89vISS9a/YDTHWbOGHCu+oL/lPAxBp/IgPcuZuHkpiex6UsLneccU8NlSV1jkDOJhqgc+uoZ2Xvjj9aVvEp4Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wpMywOFKO2MdIL6O8ABFu4aJxZUSEpbISskzSu93G0o=;
 b=b6XOq322nJfaP0ZX3Fzovk4AviypMr0agk9qhemSNI7w3a5RRFAXsi29zezSwyfWG4owrDVfq28RA0R9J5tHP6KlvpWZx80ZiKHQiA89Fcv7HJ6eNsdmNpYsGRZ+NthVfbERHhjObtNsibPWpf8pxZCbKZ+9hBNDq/fDDyiFKe1QH1/kc5SqFdwFn5E1RyUa+Y3WZgAtokNiJFo1M+gfdg+Ppc/iS9+yBpZMdNF1+f/H6Lj3WrY0azkxVcj+vmEvzMdZ3/PRnQu7qKsrl+b47ZS4zqW6CTgLu72oK9/pXR//tAYH0NrodX3ymlzJ9eDymWrzzULsyFAJvyrbQIIxIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wpMywOFKO2MdIL6O8ABFu4aJxZUSEpbISskzSu93G0o=;
 b=YwBicoOFXuHqLCRF+VLOyXFHM5tCRDoTsFCWu9Ak+9oO0YLIdy2MyWVxOOB5WiFKEOtlUJZpDO74vXshlgFJbhuNxOJ7WaFxoTNH6MuIiqFwa5xJRV7d7NHtsPa11KlWsBZHkd9ko1zc62wTvlLFgsuPDQgyhFwSrg0fgPWuIbQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB4688.eurprd04.prod.outlook.com (2603:10a6:803:6a::30)
 by DBBPR04MB7722.eurprd04.prod.outlook.com (2603:10a6:10:207::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.10; Wed, 19 Jan
 2022 14:38:16 +0000
Received: from VI1PR04MB4688.eurprd04.prod.outlook.com
 ([fe80::f853:4e9a:7ab6:dbf7]) by VI1PR04MB4688.eurprd04.prod.outlook.com
 ([fe80::f853:4e9a:7ab6:dbf7%6]) with mapi id 15.20.4888.014; Wed, 19 Jan 2022
 14:38:16 +0000
Date:   Wed, 19 Jan 2022 16:38:13 +0200
From:   Abel Vesa <abel.vesa@nxp.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Subject: Re: [PATCH 0/9] i.MX8MP power-domains part 1 and GPU support
Message-ID: <YegiVQAVIHmwolwj@abelvesa>
References: <20220119134027.2931945-1-l.stach@pengutronix.de>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220119134027.2931945-1-l.stach@pengutronix.de>
X-ClientProxiedBy: VI1P193CA0017.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:800:bd::27) To VI1PR04MB4688.eurprd04.prod.outlook.com
 (2603:10a6:803:6a::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c25712ef-82e3-49ed-7faf-08d9db59542e
X-MS-TrafficTypeDiagnostic: DBBPR04MB7722:EE_
X-Microsoft-Antispam-PRVS: <DBBPR04MB772210958678D6FCFBE4E42DF6599@DBBPR04MB7722.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mchSd6dkSQptnDDwjsiYiWvarWD2VyQCitlFoIM/DL/JKZxaNrlGfscWqCER5Dq2KU3Sjo8xq888wi5huotIS7/8ZumSQ6xAy9vl/h0TrCoSpZ4NToR5FNn4QHQtyowiwQ73EYQu29MFqWAderk8Gp0odhQrvuidLDtZeFwDzjuD27lIkJfJzaHOfDELcWVnGSLJYO3p6i/GYDbU1ZFXWZU/7w6hugwjCtHTEJQJQDdQ10Rsf/RvbMyj4KvZxMXq+6CrJtkfU6sAczflIhRGnuok29ikPHXc3PWHLlwA/VDF0CXXqDjQdLrHsXMTBeqGUt0mhEyYBnNvkPDk3zhkJot5sGKSC459LbjJbZ1QxCxN/C804R6pxVdraCQb3cl8x2ZxiwSNX8QNLzlqyprPBd1Z8T6IhQaUxtSVuh12I0CHK6yW97reUP4LhNkaCSb4dGe4yg4BAjjlfYNWOM/GXGk98Ht2vkt8fa0V1ozk3UDerEPoyz9IGKghd5nq35Sf95NAwGsIkBYp+i9Jb8bCCzpU2T4xRfygYUDPY+303R31gKQxJ8D/+4FcImc+hqzhGtspW/WtTZbKQQLS9m8tk1hsH2ylgdVDMW+Vk5kSzAE4QZi4GcY6T2ADfrAxjTAn2RUpsruXcJGuzjLbkUQpdtltHbmFiZ94NhN6+94LDEsbkqUeXorqVrZsJkhMQuuA3hnCjNF/rLLeIIUJqMwH0A==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB4688.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(7916004)(4636009)(366004)(8676002)(2906002)(86362001)(54906003)(53546011)(186003)(5660300002)(38350700002)(6506007)(33716001)(508600001)(44832011)(66946007)(38100700002)(8936002)(83380400001)(6512007)(66476007)(9686003)(66556008)(4326008)(6486002)(6916009)(52116002)(316002)(26005)(6666004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3rsWyk6I3rRogNJqfA3aQRPkt9lSb29ackmFOuKCC1L1Dg9PQTJY7IZkdU+d?=
 =?us-ascii?Q?ckK1hVS+/DUL/7861ITqzHGFWc1d8xZOy0o+H2f5DT7xyKzlSSBJXskvulLI?=
 =?us-ascii?Q?tirR9mPKRBTWhREwMETv6Ti73vXmNJ1WGcfGL75wM8aVUF2a2e2YbOwG1Sbh?=
 =?us-ascii?Q?sR1UrZrE0FcFNLd+WgD3qAj9GYbjtNzlzzw/IHdSIwCsNFPLWbaM2zUr25F/?=
 =?us-ascii?Q?iu9Dle2VAbpxcgNRyFR9s+6Mblfxh34807JhSATg+puVQahvHHJ9a9kXe8uu?=
 =?us-ascii?Q?TM4fHsgXL6z1YHAchkS9AGs40saP3canZVWvRuWiDFYKdPX27AnKTeGWhBFJ?=
 =?us-ascii?Q?r7N30oKwxNGKHQdXUvRJoOYPkuKM7KCdn0vEdKbBzCwKpmHzVrA5a9l6avcA?=
 =?us-ascii?Q?DDh9sE1FRLACl0CqGvgAFta4hyFCK3YhH97kCyjBqjJ9/fDFC0SbxAlSg9M2?=
 =?us-ascii?Q?Etr/iVEMLGLWxotlt6tfu9HVj+rDob1iGe0ZvWzHweLzg4ThFWwkZFFRrpVJ?=
 =?us-ascii?Q?VXqxnjVBd+WBO5zMiD/mGhZkFQvHRXM5+Y5aXCS/Ro0H1wLjSFYpmIpbzfD0?=
 =?us-ascii?Q?fC2bHYqhOuuKRhtKLYqHZWzZp6KeAsemqqOcbpI49WsIto2fljRIzdzrUIQg?=
 =?us-ascii?Q?AaLnBuRAUhBqww3z8RJFx4dT2beQFxCnt/L+JrnwSqbOjh+Z+dpVO2zkG2+B?=
 =?us-ascii?Q?MQOHNenLbzmjg30FY5J5zvQEyCbEWtK/9Ya9m5oUC21OI6bxCheOb+jq1adx?=
 =?us-ascii?Q?gLGJa83SS0HNjb1pW9/sOO5OK4u0RwSdEbOdclgVGf5stnXPCXnqLYL8IK+e?=
 =?us-ascii?Q?cNNiiabEbNJ5pDLKBHCud8MjXOSmcYOrJ+QeTTicRzzavm5MQlTToYyZoT4j?=
 =?us-ascii?Q?wOcv5t+T1UJ/T8XcVKlkTVvag9kfnewErV0sJ0bz07swzU28L6hDSReemD9b?=
 =?us-ascii?Q?XV7pjUv99xgbvrAkNeScSJpJ3fPHcZ5Wzqbv/gXbf8maM9Bids4b6fF5M5IQ?=
 =?us-ascii?Q?QPCwaq0Hr7Ozw+igGmGpEhZKW+eXvko/zfB6Ok3Y6F1jI1jLCcAbfpi59Djh?=
 =?us-ascii?Q?M8e/DsDbLRFruLEqgAqZnWiDi8+uH/s+t2kJeF5PzUlMYrQjrBc5JXRqjAcx?=
 =?us-ascii?Q?BQmzwMrRtpSmh/1B3psfGDGkFJjz0HDyGXa0DFTLzYuvVxf4vGuEJegCYN+Q?=
 =?us-ascii?Q?3jqBY7HbOnkPoLEhO7NUHmREziVCnsE8pgrH/D04jxb56RvoRpwHJX6zi5ul?=
 =?us-ascii?Q?KUSDXgaJTri6avSOiuAlvFTZN+7mKdbGysYqLU4gxJxyBUjLGVILanfw+usm?=
 =?us-ascii?Q?Bx+UTAhUFkC6KS22USoFpNeNgCY6yKNlIo1bI0iH7E3uzf/1YoLEFXLcFzF9?=
 =?us-ascii?Q?NEuvel6ODUBregDwNW25/t605SDkC1hs/N5T9OXOukhb4P3d6JboAAbGcUW8?=
 =?us-ascii?Q?j8tyC+rsKFNgn1aA+Wr37XoBm+lNOiPCrn1MAQ9KGCEwBk2KfvLqh55fxGpf?=
 =?us-ascii?Q?60WkNJoP6LYkVVD0EFF1XHO8IY9nAR5cz4woBzntTAOepKZWi2LtqFrVnlCx?=
 =?us-ascii?Q?l/h+6HqaQ5dBHPjXUvtADw/TRLVWe1VybzsuQgrElUTZKOVEXjEfp+5bCcZO?=
 =?us-ascii?Q?/pxqXXFKUrW9ra2xhA0Uzdg=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c25712ef-82e3-49ed-7faf-08d9db59542e
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB4688.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2022 14:38:16.1635
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rdYrFgyMicbq8BNabVlnYaxOX+ZinYbEv3RMyyqWO9c+WbYPqxuFlVoEXCXiaw9r3Jl3ff2dw+J55aqFVkrXdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7722
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-01-19 14:40:18, Lucas Stach wrote:
> Hi all,
> 
> this series starts adding the power-domain control for the i.MX8MP
> SoC. The GPCv2 support is complete (at least from going over the RM,
> TF-A and experience with other i.MX8M* SoCs), but not all
> power-domains are usable right now. Currently only the HSIO
> (USB and PCIe) and GPU power domains are enabled.
> 
> Other power domains (MEDIA, VPU, HDMI, AUDIO) can be added when the
> blk-ctrl driver support for those domains is ready, which is still
> work in progress at the moment. As my priorities are shifting to
> other things for a while, I wanted to push out the part that is
> usable now and enables more functionality on the i.MX8MP.
> 

Great effort! Thanks for working on this!

I started doing it myself a couple of months ago. I did the media and
hdmi blk-ctrls. The audio blk-ctrl is the one that got me stuck since it
has PLLs in it and they need to be part of the clock tree somehow.

Let me know if you want me to send the hdmi and media blk-ctrls.
I'll try to rebase them on top of this patchset.

> Regards,
> Lucas
> 
> Lucas Stach (9):
>   soc: imx: gpcv2: add PGC control register indirection
>   dt-bindings: power: add defines for i.MX8MP power domain
>   soc: imx: gpcv2: add support for i.MX8MP power domains
>   dt-bindings: power: imx8mp: add defines for HSIO blk-ctrl domains
>   dt-bindings: soc: add binding for i.MX8MP HSIO blk-ctrl
>   soc: imx: add i.MX8MP HSIO blk-ctrl
>   arm64: dts: imx8mp: add HSIO power-domains
>   arm64: dts: imx8mp: add GPU power domains
>   arm64: dts: imx8mp: add GPU nodes
> 
>  .../bindings/power/fsl,imx-gpcv2.yaml         |   2 +
>  .../soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml     |  78 +++
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi     | 118 ++++-
>  drivers/soc/imx/Makefile                      |   1 +
>  drivers/soc/imx/gpcv2.c                       | 430 ++++++++++++++++-
>  drivers/soc/imx/imx8mp-blk-ctrl.c             | 444 ++++++++++++++++++
>  include/dt-bindings/power/imx8mp-power.h      |  35 ++
>  7 files changed, 1090 insertions(+), 18 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
>  create mode 100644 drivers/soc/imx/imx8mp-blk-ctrl.c
>  create mode 100644 include/dt-bindings/power/imx8mp-power.h
> 
> -- 
> 2.30.2
>
