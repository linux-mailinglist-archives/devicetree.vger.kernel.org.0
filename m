Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A40440AD0E
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 14:09:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232124AbhINMLF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 08:11:05 -0400
Received: from mail-eopbgr70087.outbound.protection.outlook.com ([40.107.7.87]:27539
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232065AbhINMLF (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 08:11:05 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zr4Rj7VRly3OAh685g8sWGomjOqoNoN8hiLUrfFFTPF2XP4Sj5M4RYm36j0HpeMvZct9p+HSoK7y2G1wmoMUWLp9/UTPYlpZZu7mdHcmoxLijZ4uD1br5cGQjYW4WmNhhaQlajYv/eOBOLMaNQeTytAK9KucuiEyUSTnoLtE1l9UaPl10U6oEJFs7+zLHXltTxOVH4r1g6piaVZsrc6DfyANiZcCli24OoqIgZGFp2Q9BmUIM6/mLhIa5DRRnbFQKZNq7QMS3qVvtNQ+lqpRjIGfJt8W3UIu03NYDLKTMjBNQQYCoJl+244+OntxGkAy5sC7R4zLYesd7+ct//fvUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=WfqydTS3hllEUYFZIM9hVWabbMejgRP624VXC2l0/z8=;
 b=bj/tItYMTTKmafw+ysqIccDCLH6u6IwNHDzahUKPpgeA3qWFg92gdJoQu3yowv91nhgNUtJc9kQ8AKKVeMLGEOOZlK8ovvwK1ALmHEYUKl/xTABSXyODj/Kzad0VCfDaOhfsoksZoY7TfLOeTZeEpsdXd+ons2zhG23+h2X4clXZ65mCqy+x3EsjDcIJiEzh0SoSTgo3BsIaLkjbX8hnC7qx3+JiLYyDZGXKZVq6mTqHjY478VuQmx8X/gUCHBjp9OVqV4UXUFcf7y34hF741rNPO+rjO1MCTlKvKY8wNOgPlxg8HZFyLH+2AkDsN4FkPF9dBOCJJQoaQ9S5hma1hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WfqydTS3hllEUYFZIM9hVWabbMejgRP624VXC2l0/z8=;
 b=LnFZIk4jXj6Bvh0jXcDKxWL0JVXqHYtTLM857eE7Djll+HtFjvELzkEOvjzADLkj89dJnWIw82hc4MZA7/8kdqe2C++CiqtuVKj9jirNcC6BArJliOa/f9dPo1k/l1G0qfo35yJqWyOmmoA+QdF6X1kNB1gzE6V0zy281opKPFE=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com (2603:10a6:800:57::8)
 by VE1PR04MB7246.eurprd04.prod.outlook.com (2603:10a6:800:1ae::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Tue, 14 Sep
 2021 12:09:44 +0000
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb]) by VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb%10]) with mapi id 15.20.4500.019; Tue, 14 Sep
 2021 12:09:44 +0000
Date:   Tue, 14 Sep 2021 15:09:42 +0300
From:   Abel Vesa <abel.vesa@nxp.com>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, p.zabel@pengutronix.de,
        kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 9/9] clk: imx: Add the pcc reset controller support on
 imx8ulp
Message-ID: <YUCRBtdgDMs3WeQk@ryzen>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
 <20210914065208.3582128-10-ping.bai@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210914065208.3582128-10-ping.bai@nxp.com>
X-ClientProxiedBy: VI1PR08CA0106.eurprd08.prod.outlook.com
 (2603:10a6:800:d3::32) To VI1PR0401MB2559.eurprd04.prod.outlook.com
 (2603:10a6:800:57::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ryzen (188.25.164.198) by VI1PR08CA0106.eurprd08.prod.outlook.com (2603:10a6:800:d3::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14 via Frontend Transport; Tue, 14 Sep 2021 12:09:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2ab01580-af43-48f8-d02c-08d9777889c6
X-MS-TrafficTypeDiagnostic: VE1PR04MB7246:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB72468F8000296655E58BFA71F6DA9@VE1PR04MB7246.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: V6j+wrl+4wf9puGI/rQwkPrJFXXcUFzFFSgyLnT4mZcL6kq/uBaA9gEVJQDfy5az7PShgPhwJTP1uDxUPXMiPgy5ulW/YS8o6StazjXvkeGfNNCP7ssVgTZBSoiTe+vhj5f3kZXiysbLtrOpBspPnorjbp4qaqgWVq4l4lwTUs+qBi3JIvB6MYwVnD+POJjsHiz4DlpzY4YsufBD/mFHBEnOfzzzhed9JCqVVdl4VzSKHFqGlRVLq++29wfAQ+WQeTPvm7xOOG9et2voqO6hZbwdPpSioNt1tFFkoePpAyojREd1qCdcJaYdwZ/n9gmrzb9XvfSK8aMt1ivnn5fNkaadxg2vNs+pcFrt0ZECI3rvFGXSYmLS0qQ1xjdDJj2Hq/bmhu0TG9wxdew90MMslzr3vb31c4BX9gsFdD+tZFGJLBIXH27y+vUBTnkTi5TdEiA0cmlZt/pJbPrf1TLBeN4Iii+TOttV190RpFM1PokFOap84J+OHKIjYZjBahoBZiFg7kVrYQ6xhS3wS+S5K1HOSE0SBvBxsgKRqQPJz+kCXuPvcnt53qd9eu3G6/LBhDTdcGqJwO64eu0f7kwGkbh5pYTO71NgDFZ+jYA/8rZ2w46USTOb5LOxoywKkZ7UwVtGjWHGX3dioPoXcKrfEBs9IsjJtqi1cgMjn6R5dlQ4LcioVCQ4ZdMnPaCHmbtkgdtrzwxLy2qEiudhhIL0tzmpFOzzSRHfzFw1cjbsIyo=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0401MB2559.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(346002)(396003)(376002)(366004)(52116002)(956004)(6636002)(5660300002)(9686003)(53546011)(6862004)(38350700002)(38100700002)(66476007)(66556008)(55016002)(4326008)(316002)(66946007)(26005)(186003)(8936002)(44832011)(478600001)(83380400001)(9576002)(6496006)(86362001)(2906002)(33716001)(8676002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SrbWOtqPChBttqFFfIaeOFUpRNB33YH/sSN4b1+x0o2lqBvO+lDJLlY1KQxx?=
 =?us-ascii?Q?A9zshjhi+9KM8FqnhK7v9UGMplVOFj2x12m0qw8PlVY9PiYXPuTZGKGNlo/u?=
 =?us-ascii?Q?3D4bis3NGtA2cMJxTIqj8caRpC++/lOEFjl6Zhc6RpK+npyfJY/bz19lYamH?=
 =?us-ascii?Q?Pgu97daxHKqivsZac9hcknA4vQEBFfZCU/JBIHlWg7324sv9vSDKd1sSDC5z?=
 =?us-ascii?Q?578nSaMhoNA5IqEW0xJoWkKiijH1mM/QSQRfvA+MiwTX6hKyDA3YSGLQbd66?=
 =?us-ascii?Q?yPVYa8QZ/gBuV7mYbAOcbwvCkAjqMT1pEmPl3Ym6fn+lTqGq31TMz1m+irqy?=
 =?us-ascii?Q?b8c0sL/ciNNo7M94nCKiMS1G8u/3aLZWf9xnoi1KTqQnfXC/gFn3VvAUsTaZ?=
 =?us-ascii?Q?g7pw+f3y09M0cjAUCUJTgGRzM9rNZhpmLM6+PAPVRF6DK2MDZeF0t50ebhlj?=
 =?us-ascii?Q?d8Z91bi23TKcoaiOj9sXV3KyyJ7oPuYyzZ6OKt8JmsI+vhFiuUZMcs/XwvNi?=
 =?us-ascii?Q?Ng+K6CqiaWWtUQI3xqP8RWU7ALkVLI24EbrWu/W6p1KP+Tt9JWFz8K8VJROo?=
 =?us-ascii?Q?LurUgCZ6UdMEyt8ZeOYxAXi/waf6FT8+UYEdcKlkrktCTZp7cAkkPuAArIw+?=
 =?us-ascii?Q?7iQu1iieo1r2976NnmX5jf0Y9JoavF2AGgd9WFqAoKMPOfS0J9BHvtJ5ZDzR?=
 =?us-ascii?Q?yqEc7DIvRjXDy0CYz3ae2BZy3K8ZiNHfwQE6pjTAu97XvFS7dHJCw6UUQHIt?=
 =?us-ascii?Q?o3bwtOv38wMvUm8RoNy+aTLH/sc6bJLhRyxnQI4GEFUg+VcAyviE0KCqZ56L?=
 =?us-ascii?Q?yyeS4YM5dk04UOKkqgm9NO5JIqSbsy5vuuXKWvWGTSOugwrfpznW+qcBxrp3?=
 =?us-ascii?Q?LUrdkqp0J1w7cevsooQxK5yXitXqfqq09nTboKP4Na7pNFGLKPsUaLCpE9f2?=
 =?us-ascii?Q?5VyXgD8eAXYn4GKRrpTii78CLNqpyTV57ss5PrufMDTsWW3EWhiB1Y3Wu2oA?=
 =?us-ascii?Q?+H4LjUxHhLUn8O2PHAl6r09OYKRzsCU35zWsYsmSeWb0vvce/AoSY9jd1lxi?=
 =?us-ascii?Q?JAF0WD9kSGGknT/UFm6YkJ4XSKlDGwzTpBoUQRf/mVzPbMs5uvzwFieQLIQr?=
 =?us-ascii?Q?YNhtj2CiOim6ixV9NeXPgEkw+VM6XuzV+RubVZW1C6CSDXTttVe1bIsLNO7Y?=
 =?us-ascii?Q?eyzIBTizHMD4bFRCVUFHAdXqApT1nmo+Qqtu17v1C+CVCWpMy+ia34TzVdnM?=
 =?us-ascii?Q?WsCzmlXTli4yNzlvy0ACSJj5VzerDtvvNj5WpBeFkzasl7SIrCWnkRHuGjYc?=
 =?us-ascii?Q?8yVYsDGybAaBtU+EoTWwjPBH?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ab01580-af43-48f8-d02c-08d9777889c6
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0401MB2559.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 12:09:44.2394
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S4ia2uXdImyQ1AgvlFdj+AltumUyLD++7ysLPCoMPcXVhRQJu60tPXiBEADo1g2Jm4/2I64gHZWoVwQ6dACjqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7246
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21-09-14 14:52:08, Jacky Bai wrote:
> diff --git a/drivers/clk/imx/clk-imx8ulp.c b/drivers/clk/imx/clk-imx8ulp.c
> index 6aad04114658..6699437e17b8 100644
> --- a/drivers/clk/imx/clk-imx8ulp.c
> +++ b/drivers/clk/imx/clk-imx8ulp.c
> @@ -9,6 +9,7 @@
>  #include <linux/module.h>
>  #include <linux/of_device.h>
>  #include <linux/platform_device.h>
> +#include <linux/reset-controller.h>
>  #include <linux/slab.h>
>  
>  #include "clk.h"
> @@ -48,6 +49,99 @@ static const char * const nic_per_divplat[] = { "nic_per_divplat" };
>  static const char * const lpav_axi_div[] = { "lpav_axi_div" };
>  static const char * const lpav_bus_div[] = { "lpav_bus_div" };
>  
> +struct pcc_reset_dev {
> +	void __iomem *base;
> +	struct reset_controller_dev rcdev;
> +	const u32 *resets;
> +	/* Set to imx_ccm_lock to protect register access shared with clock control */
> +	spinlock_t *lock;
> +};
> +
> +#define PCC_SW_RST	BIT(28)
> +#define to_pcc_reset_dev(_rcdev)	container_of(_rcdev, struct pcc_reset_dev, rcdev)
> +
> +static const u32 pcc3_resets[] = {
> +	0xa8, 0xac, 0xc8, 0xcc, 0xd0,
> +	0xd4, 0xd8, 0xdc, 0xe0, 0xe4,
> +	0xe8, 0xec, 0xf0
> +};
> +
> +static const u32 pcc4_resets[] = {
> +	0x4, 0x8, 0xc, 0x10, 0x14,
> +	0x18, 0x1c, 0x20, 0x24, 0x34,
> +	0x38, 0x3c, 0x40, 0x44, 0x48,
> +	0x4c, 0x54
> +};
> +
> +static const u32 pcc5_resets[] = {
> +	0xa0, 0xa4, 0xa8, 0xac, 0xb0,
> +	0xb4, 0xbc, 0xc0, 0xc8, 0xcc,
> +	0xd0, 0xf0, 0xf4, 0xf8
> +};
> +

I believe this could be avoided entirely by having something like:

PCCx_RESETS_OFFSET + (index * 4)

and then:

#define PCC3_RESETS_OFFSET	0xa8
#define PCC4_RESETS_OFFSET	0x4
#define PCC5_RESETS_OFFSET	0xa0

#define PCC3_RESETS_NUM		13
#define PCC4_RESETS_NUM		17
#define PCC5_RESETS_NUM		14

Then we could pass on the PCCx_RESETS_OFFSET and the PCCx_RESETS_NUM and
that's it.

> +static int imx8ulp_pcc_assert(struct reset_controller_dev *rcdev, unsigned long id)
> +{
> +	struct pcc_reset_dev *pcc_reset = to_pcc_reset_dev(rcdev);
> +	u32 offset = pcc_reset->resets[id];
> +	unsigned long flags;
> +	u32 val;
> +
> +	spin_lock_irqsave(pcc_reset->lock, flags);
> +
> +	val = readl(pcc_reset->base + offset);
> +	val &= ~PCC_SW_RST;
> +	writel(val, pcc_reset->base + offset);
> +
> +	spin_unlock_irqrestore(pcc_reset->lock, flags);
> +
> +	return 0;
> +}
> +
> +static int imx8ulp_pcc_deassert(struct reset_controller_dev *rcdev, unsigned long id)
> +{
> +	struct pcc_reset_dev *pcc_reset = to_pcc_reset_dev(rcdev);
> +	u32 offset = pcc_reset->resets[id];
> +	unsigned long flags;
> +	u32 val;
> +
> +	spin_lock_irqsave(pcc_reset->lock, flags);
> +
> +	val = readl(pcc_reset->base + offset);
> +	val |= PCC_SW_RST;
> +	writel(val, pcc_reset->base + offset);
> +
> +	spin_unlock_irqrestore(pcc_reset->lock, flags);
> +
> +	return 0;
> +}
> +
> +static const struct reset_control_ops imx8ulp_pcc_reset_ops = {
> +	.assert = imx8ulp_pcc_assert,
> +	.deassert = imx8ulp_pcc_deassert,
> +};
> +
> +static int imx8ulp_pcc_reset_init(struct platform_device *pdev, void __iomem *base,
> +	 const u32 *resets, unsigned int nr_resets)
> +{
> +	struct device_node *np = pdev->dev.of_node;
> +	struct device *dev = &pdev->dev;
> +	struct pcc_reset_dev *pcc_reset;
> +
> +	pcc_reset = devm_kzalloc(dev, sizeof(*pcc_reset), GFP_KERNEL);
> +	if (!pcc_reset)
> +		return -ENOMEM;
> +
> +	pcc_reset->base = base;
> +	pcc_reset->lock = &imx_ccm_lock;
> +	pcc_reset->resets = resets;
> +	pcc_reset->rcdev.owner = THIS_MODULE;
> +	pcc_reset->rcdev.nr_resets = nr_resets;
> +	pcc_reset->rcdev.ops = &imx8ulp_pcc_reset_ops;
> +	pcc_reset->rcdev.of_node = np;
> +
> +	return devm_reset_controller_register(dev, &pcc_reset->rcdev);
> +}
> +

...

> -- 
> 2.26.2
> 
