Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0800040B2EC
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 17:20:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234418AbhINPVR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 11:21:17 -0400
Received: from mail-eopbgr70053.outbound.protection.outlook.com ([40.107.7.53]:50166
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S234582AbhINPVR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 11:21:17 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ijNZzO+MWNLITZfNgSanRTnsPiDmuW+z9Z1HWfoM2/+iRIMPldzNV9okBgg8pvdz/mJyMJRvXsuPKxUZdvxTqC+BeWoeFsdf1sTxpgSjF7jIXJGEusJ/QR3vgtAZKOT9ya40HtbEAV8magoMG+739dZUkX32BjwweGHVJUtFeugnSYej9D17O+CtzeMtoVx69yJTsjJrPWQ37Re95tRkSexAzF8zR5gMUCom+u9JiOFpTTTMpMx3bfa1zxnenRxDNExt9q6Kb3d8hQaloDhuLCJ9S/mGBdcHhzocV26EQ7ep/k1oCclg2CI+IOs6idXaThdJh6LK6pWmWFjyA1viSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=m5VUSk91/YYMy2MNCej9Jr8RzUYtGAcmaeetk66fTmU=;
 b=S1uLQBiMm3jY18kk0+dq7kp+1EfbIy+quveieKd1XW7yfTSc5MdSAKFV3TU+6i21QeVo/Gl4cm0b33FKBx9x0UfbpdyUtI33jfm/JgXJ+WLJrRoeU7H9FYBx0BGwaVrwVy3NRJYRR8CP/4AulixxZoAZpaTurdp/OiWEwNCJQ6er30NF7ypC/GRnA/hI9SEEOZO72wzSig74iUJ8i8+iYwQxlFh6OFj4ipkLUYJYpQ8Kn3VUM2wJJ+UWaZOHGDe58vzvBmn0DO7LxPbkY0IGH19gZNT48pAVQH1six5p3cp+FxLbOVfFSOJOv1i9Dg/LYsWXkbZhmIKaKs9e7nyiSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m5VUSk91/YYMy2MNCej9Jr8RzUYtGAcmaeetk66fTmU=;
 b=W+mt99n4/7C9CSsQFGo4Sh75AYOurAICYrRE4NdTBhsh/7uEFlTtSCJ/Nt+Gv+gw28hm1lQCF2gXI17grF/0Smm6E/TzF1mFY6AE3EiWwUL2AggdwnoG456Lx5WoQYCYp8/Qqb0PRgoQa7rNjACvl15sErsb5TY2yxRLPmO0t0Y=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com (2603:10a6:800:57::8)
 by VI1PR04MB6960.eurprd04.prod.outlook.com (2603:10a6:803:12d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Tue, 14 Sep
 2021 15:19:57 +0000
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb]) by VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb%10]) with mapi id 15.20.4500.019; Tue, 14 Sep
 2021 15:19:57 +0000
Date:   Tue, 14 Sep 2021 18:19:54 +0300
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
Subject: Re: [PATCH v3 9/9] clk: imx: Add the pcc reset controller support on
 imx8ulp
Message-ID: <YUC9mpWOiT2scM2D@ryzen>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
 <20210914065208.3582128-10-ping.bai@nxp.com>
 <YUCRBtdgDMs3WeQk@ryzen>
 <DBBPR04MB7930B6AFF9299954C0DCC6AA87DA9@DBBPR04MB7930.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DBBPR04MB7930B6AFF9299954C0DCC6AA87DA9@DBBPR04MB7930.eurprd04.prod.outlook.com>
X-ClientProxiedBy: VI1PR0701CA0061.eurprd07.prod.outlook.com
 (2603:10a6:800:5f::23) To VI1PR0401MB2559.eurprd04.prod.outlook.com
 (2603:10a6:800:57::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ryzen (188.25.164.198) by VI1PR0701CA0061.eurprd07.prod.outlook.com (2603:10a6:800:5f::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.9 via Frontend Transport; Tue, 14 Sep 2021 15:19:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0471898a-86a9-4390-c3be-08d977931c75
X-MS-TrafficTypeDiagnostic: VI1PR04MB6960:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR04MB6960B5BE7E657C14714BDEF0F6DA9@VI1PR04MB6960.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Af5/djDsdpsA5qEmP5m301QQ7+pG43C93NANvdqEXetZi6Cb8qvYlSIK3m2WqQjfSvT2H7WJ0R9GfmRZd27P2d3JhL5sDO14Bb2t5H+msdcWxus0+O90b3Pzcr5kq6YvolHooVAITH2Hx+KLLguASwBb8qfjPcX5APsOBwrUa5sFngVloT34z1RphuCsnxwAa6cHi4yFDhP5RUndrYwsUX3GRNXUvv9kqB59lSrOFCh4bJV/PzbOQbeFjX1anRMl86MU5t7c4QBOZOL+A1KiZI88sQnSkfehn0Dn/+8RS56PahgKV0DwfxYTEqZME39xTvrBCdsWpY0Zmr89JFuaz5XKC9EJSxBgZJ7dmphnhGw1hKlC2Vxm4wuws6NTed+ybJcleyOYUHoAye3qNf1Pqf1qWNJf7sDSEd3IktnlWgsPQ2xuNmg999JkXqzGlEPPXBYOBIybG3PQacwPI1CtzUtJPTiT3UcfrmUpVdXkjRqx5SjJbSRPbu4u8XePd6ZTXB5mjN9A/JPBn4nXVzspqsF25U4iq4JXxURLb003J+N+gCUo1EKkhP593krOZ+k431lW0o2JHNNEW3J4GA/9AzmRoEJgx0Yh/QYAd1xjRHjNLhC2UwUQ0Ywh4fM0TlD0DSuB1F0gflVtEO2mOHdv1Iylv7M048dC67KnS11SsVyYrEHKvrF/t4AX/MJ7EvVr3cU2A0mv7ZnKy587/TI3D7DubSCXzw7Ae3HhCEhrnsI=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0401MB2559.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(376002)(346002)(39860400002)(136003)(4326008)(66556008)(6862004)(44832011)(53546011)(9576002)(52116002)(956004)(6496006)(2906002)(66946007)(8936002)(478600001)(38100700002)(55016002)(86362001)(9686003)(38350700002)(26005)(83380400001)(33716001)(8676002)(66476007)(316002)(6636002)(54906003)(5660300002)(186003)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OHZ2dUHCXo3MqowkXWcmlnIqRglj0pAf3vuOg3sk8PjF8xKLinIBehTfNkwf?=
 =?us-ascii?Q?2WSl2jFbh6jtQ9n+KJLgwktRTrVl3kWhZP8Y3WYS6jc74pxNqoe3mS9rSfcl?=
 =?us-ascii?Q?8oVX45ZVzSQP4ZGogDZzYBGBS0qiiHvL2qobXfr0BUub5kN2QR6FgcZLtF7T?=
 =?us-ascii?Q?+4uGacEBsa96zxlRaVF5pnEcvO0Q5gWNdQ78nENijk5boZx7ioz3Xx5bc1vp?=
 =?us-ascii?Q?8vYvtaEJKGvIutsCEtFk4ay7e/LTyAP8kIvrNSwiztvmR5lW20uGALe7WxRI?=
 =?us-ascii?Q?3bMWdQiSItQYksFONKYfhyE7dIQx9RUjDArAj2Lw4jOECnGQ4gAc+9/w5SPZ?=
 =?us-ascii?Q?wco0PjkKmWeup7Z6qrgDf+JSh2lBSWaENdeUDyKRzFh4iSDp/N55WwzxsiVh?=
 =?us-ascii?Q?SKiizATOa5j5o5J+WN34rmflA5hVL0uf8tUbDfTgJ3qOMwAlhhzTTHDynUVS?=
 =?us-ascii?Q?uiEQHpV8ofw+RHeWyCPIzClL6PtzyODCurW8YIqrhW0C6aMzH2QtIvqjLbSI?=
 =?us-ascii?Q?0hqJCIrm6NdpbHnXYtONkXZa070axU17NSO4BjLHh5KP8daYKgusFAxL3qSJ?=
 =?us-ascii?Q?DcHJ5YIDxJbTUZ4fnbW6Fzrm/QztFItkIqcuF4RgPB6HEiQ4WGfDMxyZ6aGS?=
 =?us-ascii?Q?Bhv/WHMzflczsWz/s8CReUFJ04/1G9SanmkkHN+q7uF0QZohY+YzCHWc61cA?=
 =?us-ascii?Q?YrvgvMT0wbAfbwzSVUMkgmuVb5nP4yFtzKlakqvWk/HZyxCVc6sz28xizHvb?=
 =?us-ascii?Q?OCjj80FhktVwnZnDRd4SeRmoQ3CSOfQ2jLOCNEshjkyCGghf9Nq2EhVZWA73?=
 =?us-ascii?Q?ffWsFcfck1lr5H0CkpnV55189HswrZG3+sfSu4HGbNVM95MneeXBFGXbLs2g?=
 =?us-ascii?Q?r08FsFz6Xt8HgYrKEUgkTtohIuSJJDCGX0T+th9AgLlsG2+FaH1Y6wCkqpvi?=
 =?us-ascii?Q?xN7N4QP7GzFvPnYNXjCkkkEwfyZSuKCHTL588eQdxtqbX4ypiwyhZXOptEpn?=
 =?us-ascii?Q?UyQTmqHqy7gYPBDF1UsPBX4Z6BDHl47RXUBH+/OZOhfSYCnkwKhNpHOg36IY?=
 =?us-ascii?Q?67DS+OlBb8OHgWsdBsbZmC3bNMZMs+ex6LWE4yA8vQUgVCDUAJOigIi4k+CM?=
 =?us-ascii?Q?m06R4gBrtHcQ2dJTPcdEdJzAjpsqaFkEajm8/XBWKBV0FuUBNhNVFMxR3JXB?=
 =?us-ascii?Q?TLCqP4i/ea0SEB3pnDXdUd7anvg6HMpHTpuSaLcsefeGhp2gY9TGcE6J2is8?=
 =?us-ascii?Q?u2srdpn92MxdKhtVOHF/VMjEzA+9crvnBm9LvkXixmi+VrG4JKois6j0KJeG?=
 =?us-ascii?Q?uTTByTRvQGYWpWTAeLs9+uG1?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0471898a-86a9-4390-c3be-08d977931c75
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0401MB2559.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 15:19:57.4132
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: upDLFiip4HfnalYAmQZOh4g8aP1j/6DkZ7XSchmFoPuJ/jiwxfG3pR8msyT8Xzj5konhwH+2CMEGnqbSZ/HdmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6960
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21-09-14 16:07:50, Jacky Bai wrote:
> > Subject: Re: [PATCH v3 9/9] clk: imx: Add the pcc reset controller support on
> > imx8ulp
> > 
> > On 21-09-14 14:52:08, Jacky Bai wrote:
> > > diff --git a/drivers/clk/imx/clk-imx8ulp.c
> > > b/drivers/clk/imx/clk-imx8ulp.c index 6aad04114658..6699437e17b8
> > > 100644
> > > --- a/drivers/clk/imx/clk-imx8ulp.c
> > > +++ b/drivers/clk/imx/clk-imx8ulp.c
> > > @@ -9,6 +9,7 @@
> > >  #include <linux/module.h>
> > >  #include <linux/of_device.h>
> > >  #include <linux/platform_device.h>
> > > +#include <linux/reset-controller.h>
> > >  #include <linux/slab.h>
> > >
> > >  #include "clk.h"
> > > @@ -48,6 +49,99 @@ static const char * const nic_per_divplat[] = {
> > > "nic_per_divplat" };  static const char * const lpav_axi_div[] = {
> > > "lpav_axi_div" };  static const char * const lpav_bus_div[] = {
> > > "lpav_bus_div" };
> > >
> > > +struct pcc_reset_dev {
> > > +	void __iomem *base;
> > > +	struct reset_controller_dev rcdev;
> > > +	const u32 *resets;
> > > +	/* Set to imx_ccm_lock to protect register access shared with clock
> > control */
> > > +	spinlock_t *lock;
> > > +};
> > > +
> > > +#define PCC_SW_RST	BIT(28)
> > > +#define to_pcc_reset_dev(_rcdev)	container_of(_rcdev, struct
> > pcc_reset_dev, rcdev)
> > > +
> > > +static const u32 pcc3_resets[] = {
> > > +	0xa8, 0xac, 0xc8, 0xcc, 0xd0,
> > > +	0xd4, 0xd8, 0xdc, 0xe0, 0xe4,
> > > +	0xe8, 0xec, 0xf0
> > > +};
> > > +
> > > +static const u32 pcc4_resets[] = {
> > > +	0x4, 0x8, 0xc, 0x10, 0x14,
> > > +	0x18, 0x1c, 0x20, 0x24, 0x34,
> > > +	0x38, 0x3c, 0x40, 0x44, 0x48,
> > > +	0x4c, 0x54
> > > +};
> > > +
> > > +static const u32 pcc5_resets[] = {
> > > +	0xa0, 0xa4, 0xa8, 0xac, 0xb0,
> > > +	0xb4, 0xbc, 0xc0, 0xc8, 0xcc,
> > > +	0xd0, 0xf0, 0xf4, 0xf8
> > > +};
> > > +
> > 
> > I believe this could be avoided entirely by having something like:
> > 
> > PCCx_RESETS_OFFSET + (index * 4)
> > 
> > and then:
> > 
> > #define PCC3_RESETS_OFFSET	0xa8
> > #define PCC4_RESETS_OFFSET	0x4
> > #define PCC5_RESETS_OFFSET	0xa0
> > 
> > #define PCC3_RESETS_NUM		13
> > #define PCC4_RESETS_NUM		17
> > #define PCC5_RESETS_NUM		14
> > 
> > Then we could pass on the PCCx_RESETS_OFFSET and the
> > PCCx_RESETS_NUM and that's it.
> > 
> 
> As you can see that the PCC offset that has reset is not consecutive in the register region.
> So it will introduce hole in the index. And we can NOT use linear formula to calculate the offset directly.
> 

You are right, they don't seem to be consecutive, on a closer look.

I don't have any other comments, so:

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> BR
> Jacky Bai
> 
> > > +static int imx8ulp_pcc_assert(struct reset_controller_dev *rcdev,
> > > +unsigned long id) {
> > > +	struct pcc_reset_dev *pcc_reset = to_pcc_reset_dev(rcdev);
> > > +	u32 offset = pcc_reset->resets[id];
> > > +	unsigned long flags;
> > > +	u32 val;
> > > +
> > > +	spin_lock_irqsave(pcc_reset->lock, flags);
> > > +
> > > +	val = readl(pcc_reset->base + offset);
> > > +	val &= ~PCC_SW_RST;
> > > +	writel(val, pcc_reset->base + offset);
> > > +
> > > +	spin_unlock_irqrestore(pcc_reset->lock, flags);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int imx8ulp_pcc_deassert(struct reset_controller_dev *rcdev,
> > > +unsigned long id) {
> > > +	struct pcc_reset_dev *pcc_reset = to_pcc_reset_dev(rcdev);
> > > +	u32 offset = pcc_reset->resets[id];
> > > +	unsigned long flags;
> > > +	u32 val;
> > > +
> > > +	spin_lock_irqsave(pcc_reset->lock, flags);
> > > +
> > > +	val = readl(pcc_reset->base + offset);
> > > +	val |= PCC_SW_RST;
> > > +	writel(val, pcc_reset->base + offset);
> > > +
> > > +	spin_unlock_irqrestore(pcc_reset->lock, flags);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static const struct reset_control_ops imx8ulp_pcc_reset_ops = {
> > > +	.assert = imx8ulp_pcc_assert,
> > > +	.deassert = imx8ulp_pcc_deassert,
> > > +};
> > > +
> > > +static int imx8ulp_pcc_reset_init(struct platform_device *pdev, void
> > __iomem *base,
> > > +	 const u32 *resets, unsigned int nr_resets) {
> > > +	struct device_node *np = pdev->dev.of_node;
> > > +	struct device *dev = &pdev->dev;
> > > +	struct pcc_reset_dev *pcc_reset;
> > > +
> > > +	pcc_reset = devm_kzalloc(dev, sizeof(*pcc_reset), GFP_KERNEL);
> > > +	if (!pcc_reset)
> > > +		return -ENOMEM;
> > > +
> > > +	pcc_reset->base = base;
> > > +	pcc_reset->lock = &imx_ccm_lock;
> > > +	pcc_reset->resets = resets;
> > > +	pcc_reset->rcdev.owner = THIS_MODULE;
> > > +	pcc_reset->rcdev.nr_resets = nr_resets;
> > > +	pcc_reset->rcdev.ops = &imx8ulp_pcc_reset_ops;
> > > +	pcc_reset->rcdev.of_node = np;
> > > +
> > > +	return devm_reset_controller_register(dev, &pcc_reset->rcdev); }
> > > +
> > 
> > ...
> > 
> > > --
> > > 2.26.2
> > >
