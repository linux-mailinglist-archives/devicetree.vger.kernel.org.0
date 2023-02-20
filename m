Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A1C869C445
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 03:58:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229591AbjBTC57 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Feb 2023 21:57:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229499AbjBTC56 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Feb 2023 21:57:58 -0500
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (mail-dbaeur03on2088.outbound.protection.outlook.com [40.107.104.88])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D638F2D48
        for <devicetree@vger.kernel.org>; Sun, 19 Feb 2023 18:57:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mv4BcrogfJtTlIbztGLghq1CQQrKLx97TYvWt3KlKctmNUBVp94fVj7A+2NMVlj9RvpFzB3CjUNFhbMYYhW/6z7+WEniNlOHW3nKWQrenUpmRBRabJRuQhspEX3GW/kj1TmzPsCyXcvi34WBr9imBQzYnUKWq79AhCi+Fgc6shGJ3tmekmZQZgJOh/AUC8qE5IdipLlrOYe5T0dCD17p+AQ+YUPYx+/u4gly44wK2XE4YZx0cML/7NYLmv2WVnUkY9Z3Zy9K+rIvD2iYUytpmatl5Jt/onrjVtJhClF54PxmfUVQ+++qJpiWK0pPdAmE39nyOc5D99oxC6hiMTpPzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MeQ9JuGZwfq1yNC8lgHbrmJAKdjExFakjhMbQNj4DH4=;
 b=kWcwmuEIsoZpnVzeylrDKFcZKLn1pwUFGPYCfR7G6YBJl7svJRm1M7FpDHKpnVK9pYz7dEdGZo/7J8tv19qD9cLqHi2NuptmTxtWQNreS5MhoiAJz4CTUYuOirJUBQOpRbcv+1AJ0VJRhEXXxv16DsnuLSSU3v1eRM6HizKXeVCocfbnYqvh2oe5JLv8vk3+/gqewH5QRvmlUXQBZ8G96Uyr3wnFLenGS1LztmnxGrncuwn5ma7uvldhjbV2dKb8O+hfd6CBkIWCZ71XDIptp9ZjU5lraYdyTS2XCZEsVSEmbqP4k389NCyX6M4VX5BRP3GhPlKyN0yMxr6XgBUlyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MeQ9JuGZwfq1yNC8lgHbrmJAKdjExFakjhMbQNj4DH4=;
 b=XD6ymcbT2fZyOTCkie6+aDt0MsCTZvYSikpd8SRZmtMS99OYsunxTq53fHtSubSyGbJxLDQnceowbdH+4AvK2t/0MhBsqTFjkkODiOEgXnWvWczVSUDiedtXAJKxqJTZztx8iqZabfs0Grtd7NOcOhZZ0u9l3Li7esKUxM8WUqg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AS8PR04MB8070.eurprd04.prod.outlook.com (2603:10a6:20b:3f2::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.19; Mon, 20 Feb
 2023 02:57:54 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::5725:92ec:f43e:f5fc]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::5725:92ec:f43e:f5fc%8]) with mapi id 15.20.6111.018; Mon, 20 Feb 2023
 02:57:54 +0000
Message-ID: <ccdc129cb488974dc900fe476e57f51467218e2d.camel@nxp.com>
Subject: Re: [PATCH 4/4] soc: imx: imx8m-blk-ctrl: Scan subnodes and bind
 drivers to them
From:   Liu Ying <victor.liu@nxp.com>
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Date:   Mon, 20 Feb 2023 10:57:16 +0800
In-Reply-To: <11a62a596c507e21fefc79268afc8665b5e72233.camel@nxp.com>
References: <20230218235417.173325-1-marex@denx.de>
         <20230218235417.173325-4-marex@denx.de>
         <11a62a596c507e21fefc79268afc8665b5e72233.camel@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SGXP274CA0016.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::28)
 To AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|AS8PR04MB8070:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c0e1220-2bca-40c9-6dd5-08db12ee4316
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: syYPpqYlKBjK8cNtdCo3+msDBa+Y7ME2O47U/5YJQjXDc1K5M9yix6FAy5pyCdDFE+8B5NR/ztCJ+4bCUQ3mE5StpgfEigGltJ9Wv7RAxMwxQiVYVi3umGPc5M71krmt5ePcnIUrJyhYtR1+1GfTKaaeNJmxseHDvryNgZq2JjVL0VWbbIWbSRKBYiZHkrvoayXBamQ7RtWODMOLK7eKOuvAkrsVjjudCEK/QxBBVBuaZWsvS6UYc40eGCgwIdmJzR7n9IioGAT2veczTyfw1p4GDsk/SsrmKcLyLdzhdKZH+uOzPGXbIMTU9zkTS+e6bCnee3HF+Awz0edRh/lV/Piv2yrvrSjSnPDiLTQVkblmoqexkIyP3fo33t/KLI8KhOTFeejBtT5DACWuTIZZHcarWen4tegPSlWHhlNW/UIFbgD9O8+eZ8BFJHBpYEmYOxAup/dFvFMniC9d49w9DADr24SnBb5z/iE7kpdeaTZkhsYB0WLtK/EQK0yWfKKH+waUg5ulIfydAQ2pCwUzCknlItWX6l7hNaSJbz8Ci6fYTGkaWh/mPQ/546cbfYM8u9UUG+sMBarMLQi6DpA59ti0wu2LVfYdFA8MD2K5JYvV/oG/sJNG5mCFwrS7UCVNsAMlvyCtdE97Up9Qu9M8IE1Uum7+T4P/sDsupVgN5IFTOwHt+cJmXeD16IkzRZnFKprMh3Meylyp+X4su6CCkiHrPb1H8rqg0cjpvu0gETEZrHeXLEFU64b1qZGa9Vj+
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(396003)(346002)(366004)(136003)(376002)(451199018)(54906003)(478600001)(38350700002)(38100700002)(86362001)(2906002)(316002)(41300700001)(36756003)(7416002)(5660300002)(83380400001)(8936002)(8676002)(4326008)(66476007)(66946007)(6486002)(66556008)(2616005)(186003)(6512007)(26005)(6666004)(6506007)(52116002)(99106002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YkJML2ZnM3FNcTdjMlM4cHIwMGNZcU0wMC93d0g4cktFTWd3UUtFVlpEYXhY?=
 =?utf-8?B?dkpPbERlMHVwMkpraW5HR3Z5K0NUcUswT0tCZDc2V0NNMUJ4d0MyY3k0eVJw?=
 =?utf-8?B?UHdRM0FlZmhWTGp1NDZTNmV0RjRpV2lnS3Zmc0xLY2ZPbHdNNkFRNFB3SDE3?=
 =?utf-8?B?aXhIeVZ4MUwzdmxzSGxLZ0NsQnRzUFVEazRLUVZXQlBlSDdQVnRKMjlLcU5y?=
 =?utf-8?B?enJiSGg0OXpVVnNGVUgxRWlBdXpzdlFsQjQ0MVl1dmVCZmlKVTl5QkNQVlpZ?=
 =?utf-8?B?TWIzUENXK3hVdEMzRFRKTzlkWkJDZENLR3NrMTJCS1owUElWb21WTEY1Y3JE?=
 =?utf-8?B?YkpYWjN2VmMwM01qS3g1SmJobWZqMGhLTzZTMll1MGVycXBMTEVnTlp1K0dn?=
 =?utf-8?B?Wlo2M1RKeGtRdWlseGhmaVRxbzRYWU51eGR6R2pOTmxFdnNJbDVsdlBMcnBr?=
 =?utf-8?B?b3FNTlhXQmhxY0JSMEJBeitSTEZzalVsTzBlRmlPZ3AzLzBCQTZublh2K2lD?=
 =?utf-8?B?NjV0SWtLV0VyUnlOTXE1dFE0UFFzdjlHOUYwOFRrUUYzTzlSWWZPaE1pM1Vi?=
 =?utf-8?B?cVQ1KzBhcmZTTlo0c2tPR2RRZ3V1L2hXeFN1Y2ROK2FOd04wT2lqSlRlT25j?=
 =?utf-8?B?V2t4RTVLVjNwdnZkejhNTkVuN2tkbEM3VjJwZWJMZ1QxV0xKekl3NUFNejVu?=
 =?utf-8?B?SHVzTHVVeWJoWFdjTWhjS2tGYWpjNzBTVWMrUWV1T2N4Y1l4LzJFNnFIZnZD?=
 =?utf-8?B?MmVzdkx0SGd5blhzcmNkSjRiZnR1bkE3RG9QOXdpanJIZ3c1RTFsRkRHQXV0?=
 =?utf-8?B?Sjh0SWhGdEpGREZxMEhaVXlLdE5VUis3N1ZUVVFacUpxazFHWXI2MjdqaHBQ?=
 =?utf-8?B?NDNTa0k3U3kvZXljSklnY1dVOHFjejd4SWgwYUZSd2FvTkVTeG0vTk8xVGVT?=
 =?utf-8?B?RHdnOVc0MmRxZHpzSUdGTVBYNjM1dm9xT3dlSmhiUC83anM4ampHRHZUVzlG?=
 =?utf-8?B?MGI3dWFpOTVjNjF0d3Q0RCtwZkZQdUlYeWJLd1IrY3VtWmQyb1g0SXBqdU1P?=
 =?utf-8?B?TFJacmVuSUd4OTBBYVlNeVNCYUt0Y1VFRVE3YWc5RkxJNFpSU1FtNVRjMjgy?=
 =?utf-8?B?MkVxd1JYdWdQUGJTMjAwRGNsYlMySVR5SmljN2k0Z2RJTG1SVnRhYXpVNUNz?=
 =?utf-8?B?bFZMWGlNS0RIVVB0a2RYYzZRcStHeGhZcDhrd2FCSm9TbWMrcEgzMGVtWkN2?=
 =?utf-8?B?ZmFCQ0lRQmZSYnkrVWV3QUhac3k2cko5dzAzOWp5dHBlVWJUN3VpZjZJemNq?=
 =?utf-8?B?TzV1Zi8zbXoxUGt2V3Y0eDVZNjE1dTZSdHJGRkZNdS9LdTN3bWR5dzkxclMr?=
 =?utf-8?B?NHhSdnU3NVJlcTFZS1dVQkp4TmpkdVc5alJ0QktqSGZld2VvVkNBdGpLa1dy?=
 =?utf-8?B?ZWhjSitoMitYWUJyQnFsQWdhVUZPUFRtall2K1hLUW14ZnBvMk9rL1EzYk16?=
 =?utf-8?B?bC9uRm9qVzZ4aDFkR2Z2d2RZcGRkNHFjSUxCRlhzQmE3ZEczd3pvVnNCK3pL?=
 =?utf-8?B?UEFlQnQwRkkycnprOXcrMlhhWG43OTRoYWc2aFlIWko3NmFkNDQ4SmhLOVlF?=
 =?utf-8?B?SkVINnlZU20zTVIvV3RyT2UvbUdrZGtDWVNzWEhqREVIc3ZDdHVsUzQ3ZzA3?=
 =?utf-8?B?WDBGby9oNG9XNVB6RmtWQll3TU5TSzJwSUo1NzZ0R09RMTZ5Zk5KREYvdFhK?=
 =?utf-8?B?andxTmEvZm4wejdZWXpIb3M4TmZaNE9XQjA5OVRyQ0R1MHRKVGZJc3lCMmxH?=
 =?utf-8?B?TDZyNE5vNDI0bExqSGphZ2h0U2d6blByamNYMzB5ZGhmT2M0TnQyTC81N1hQ?=
 =?utf-8?B?S1FBS29wbERGUzRCMXl5eG10dGtqZFFjaGwwTFNGS2NYd0NSSFdnbnhLNjQz?=
 =?utf-8?B?TUF0MncyVVJxWFhzZUZhVkxadHhBbjQyTUNLWExaZkpvY0syWm0rSTJ3RGZM?=
 =?utf-8?B?bm91WWxzQ2NNaFlac0szeWdyWUg5QkpzYTUwVnpWMk1qWnhsUlJRR3NsK1ZQ?=
 =?utf-8?B?SndkVmxaSFRVQUlSTEpMc2tyVy9Ha3BuQ1gzcENCWHpycGZSZHUvR09kVGdO?=
 =?utf-8?Q?kRXZuuwC3VNI9SNv3oC6Lg+aN?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c0e1220-2bca-40c9-6dd5-08db12ee4316
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2023 02:57:54.1522
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mRMFECC7ezgnWe3liVERS4I/vnKdu2LkeBZqSxrPflPGS1Hpg5E3XpUKSnD+wGPKUYMt+8+Erm14HTa75QEO8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8070
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2023-02-20 at 10:39 +0800, Liu Ying wrote:
> Hi Marek,
> 
> On Sun, 2023-02-19 at 00:54 +0100, Marek Vasut wrote:
> > This particular block can have DT subnodes describing the LVDS LDB
> > bridge. Instead of misusing simple-bus to scan for those nodes, do
> > the scan within the driver.
> > 
> > Fixes: 94e6197dadc9 ("arm64: dts: imx8mp: Add LCDIF2 & LDB nodes")
> > Signed-off-by: Marek Vasut <marex@denx.de>
> > ---
> > Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> > Cc: Fabio Estevam <festevam@gmail.com>
> > Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> > Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Cc: Lucas Stach <l.stach@pengutronix.de>
> > Cc: NXP Linux Team <linux-imx@nxp.com>
> > Cc: Paul Elder <paul.elder@ideasonboard.com>
> > Cc: Peng Fan <peng.fan@nxp.com>
> > Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> > Cc: Richard Cochran <richardcochran@gmail.com>
> > Cc: Richard Zhu <hongxing.zhu@nxp.com>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Sascha Hauer <s.hauer@pengutronix.de>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Cc: devicetree@vger.kernel.org
> > Cc: linux-arm-kernel@lists.infradead.org
> > ---
> >  drivers/soc/imx/imx8m-blk-ctrl.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/drivers/soc/imx/imx8m-blk-ctrl.c
> > b/drivers/soc/imx/imx8m-blk-ctrl.c
> > index 399cb85105a18..ab48f9dff4be5 100644
> > --- a/drivers/soc/imx/imx8m-blk-ctrl.c
> > +++ b/drivers/soc/imx/imx8m-blk-ctrl.c
> > @@ -169,7 +169,9 @@ static int imx8m_blk_ctrl_probe(struct
> > platform_device *pdev)
> >  {
> >  	const struct imx8m_blk_ctrl_data *bc_data;
> >  	struct device *dev = &pdev->dev;
> > +	struct platform_device *child;
> >  	struct imx8m_blk_ctrl *bc;
> > +	struct device_node *np;
> >  	void __iomem *base;
> >  	int i, ret;
> >  
> > @@ -310,6 +312,15 @@ static int imx8m_blk_ctrl_probe(struct
> > platform_device *pdev)
> >  
> >  	dev_set_drvdata(dev, bc);
> 
> nit: I would put the below loop before dev_set_drvdata().
> 
> >  
> > +	for_each_child_of_node(dev->of_node, np) {
> 
> Please call for_each_available_child_of_node() to create available
> child devices only.

Just found that of_platform_device_create() checks if the device node
is available or not, so you may keep using for_each_child_of_node().

Regards,
Liu Ying

> 
> > +		child = of_platform_device_create(np, NULL, dev);
> > +		if (!child)
> > +			ret = -ENOMEM;
> 
> -ENODEV is more appropriate?
> 
> > +		of_node_put(np);
> 
> for_each_child_of_node() and for_each_available_child_node() would do
> of_node_put() for you unless you break/return from the loop.
> 
> > +		if (ret)
> > +			goto cleanup_provider;
> 
> Instead of return in case of creating child device failure, I would
> give a warning message and continue to create other child devices if
> any. So I would write:
> 
> -------------------------------8<-----------------------------------
>         for_each_available_child_of_node(dev->of_node, np) {
>                 child = of_platform_device_create(np, NULL, dev);
>                 if (!child)
>                         dev_warn(dev, "failed to create device for
> %pOF\n", child);
>         }
> -------------------------------8<-----------------------------------
> 
> Even if return is used, dev_pm_genpd_remove_notifier() should be
> called
> to bailout correctly.
> 
> Regards,
> Liu Ying
> 
> > +	}
> > +
> >  	return 0;
> >  
> >  cleanup_provider:
> 
> 

