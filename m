Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 229CB69ECF1
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 03:38:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229702AbjBVCiP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 21:38:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbjBVCiO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 21:38:14 -0500
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (mail-vi1eur02on2053.outbound.protection.outlook.com [40.107.241.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3706722A2F
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 18:38:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HzC/UwG955nFrUBsut+P2vO0IouXz7DiremOp1hDkTptQzD9P+Bxmj6a8xRb03lzhBd5oPiQadLEF+dg+a837bnpWe2x3sumSHTbvfVfJY33OTj6YjwEH/8rPTo+fcL3Vg2dIRzxsYm7ckN7G9a+VHWOmztnjTO/bsYe8fvvViyenL08EacmtzGJkxM/26CN2aEgf9LAUcpq3A2B4kj64Fx5/phgA9tC0XCmhKLQpXZ1WDRZyoetNwa4+e++fljT23Br2pDD9KegD0hkTaOvWO6fPzECPqEIgfSK4IMiLHEAGN8hnUAqm6mMdlNP5U2hc+WLpy6ImB6s2yeVuvijUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9fsumm7otEoT9yW9MqDKQsKhkzzrUr1x/F3RGtSqHxE=;
 b=bdF4oziwsC7N5jwl3zlvaejDrUlzEwhaWMgWbk2Z46iF2TuG25jfIMPxEBzESbUUamtSWTHA5IA5IGBPpK1SgXsJkDzp4PSywQNCwK+jBAiF72SLfR5LFXSAtT43w19nlmUXdH7FboGSsAMxF8kzdWQ/uD4jfW2QTWZuWn31TGPmtC+Bnpm1TsRs1qBaAC8i1QS+2GeByYT3KKIxY7aIuRopBs7vfog/XdkulRHVVRzjCBtIDQQpYqRr6KiGHMDprfe7RGFLXAlIacXz/+V10s88iBFM3Axtnq8N6oYiWA4jCnkubsjqP+D17/S3S8kCNyYSFRaBwr1rGcoXNe9YpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9fsumm7otEoT9yW9MqDKQsKhkzzrUr1x/F3RGtSqHxE=;
 b=p6ANuAQkkYV/Jl16Rc6JV4bN/8xqqmMGkpycm7Fzrb8qG94BnPVS+CfNObw9MwuGZcp8PYHhihieLfs3pKPpytgflEeO3DiXPtsOePeLqYDanKp4Fweu3LGt6vO9LhtNcdPDVPdHAaQTn+DqeYkMUuwM/ukEJXqVvT80aZhFXcQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by DU2PR04MB8791.eurprd04.prod.outlook.com (2603:10a6:10:2e2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.18; Wed, 22 Feb
 2023 02:38:10 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::5725:92ec:f43e:f5fc]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::5725:92ec:f43e:f5fc%9]) with mapi id 15.20.6111.021; Wed, 22 Feb 2023
 02:38:10 +0000
Message-ID: <9b5b9fdb5cebae0b25d760314c17e5b8e207d3c6.camel@nxp.com>
Subject: Re: [PATCH v3 3/4] soc: imx: imx8m-blk-ctrl: Scan subnodes and bind
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
Date:   Wed, 22 Feb 2023 10:37:17 +0800
In-Reply-To: <20230221152804.6061-3-marex@denx.de>
References: <20230221152804.6061-1-marex@denx.de>
         <20230221152804.6061-3-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1 
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SG2PR01CA0164.apcprd01.prod.exchangelabs.com
 (2603:1096:4:28::20) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|DU2PR04MB8791:EE_
X-MS-Office365-Filtering-Correlation-Id: ab5b389a-8347-4943-3f14-08db147dd635
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EnEIrvRN4A+bNmYpAuXk1jYmepIzeLuXmCwTBhWAXQGqZJi9RI/f+jxzA10TskV6QavRjypi0Og+6mzncg11WehfCV/8t9BgDj0E06Ho3Ic5lERCKqYhw7Jr5bU4QqBac0MW0gM3CojtkLVvUjX/I+Ox6IRzpUO0Lab+X7SQ73v7J2i6cRmm15I6Sd8oYHiBXe/zF02vftCJOn6JG1r0M+WtNcchOJyuvsKbipuZS0Sd377+WQr85quGKI8me3JhlH03/1U+5ifaRTgp2htmzGqJeQnNG63ad5yC31WR87rcsE3jBIDl1pPEEhjRwIUD3NwxTdenwg/9KCnmkfjx10bDOp0xs35UN9yUiBJUNdwWlWlFAF4ScPrdsSsC16dhI6ntmnQkrNNAAAKUXcuRsaP7CrsOGaYlff0SYpZP6hcrZUm3YiKflXkTnlew42wnFZ6vpgzj2t8z1s+WGI/C2PbTg6TxQhTpbSijD39T3GvkjlrZWeCHepYneDdLpLKpxsTUqUddWjc67ATa+/TmL2jejZMXbivxe+EKiPRvtcWSvlmiPDgR2MjG30KphfyJr9HpIfDbQ+Qr2t19yGG1wdNMt4q44OlI4Pw5uUv8aGsZ6J0k1OhkMpshuZ7+hICgL1NF5aqWHHcB6PVzfOQGP655mfhaV02csdFFhm8pW2X8eWH7f3zPbdeC+cw41fMZoTv2OP1kgiV7GjbNSkrySupu/tkLpX9bdmIP/j5EhuU=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(346002)(376002)(366004)(136003)(396003)(451199018)(36756003)(41300700001)(52116002)(2616005)(66476007)(6512007)(8936002)(8676002)(186003)(6506007)(4326008)(66946007)(66556008)(26005)(86362001)(316002)(5660300002)(7416002)(83380400001)(478600001)(54906003)(6486002)(38100700002)(38350700002)(2906002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?akZaZFJEWHdoUFVSU01KamtJNGk0eDJoSUd0MjNrSVJtaGgxakxIejhwWldi?=
 =?utf-8?B?MWM3aktteWpQYmJWYzdJL0ZYekJlM0FnbGZSLzBmeUxJbXBEeGVvYlhFVGl4?=
 =?utf-8?B?S0wwQ0lOZUZyY211K3NkVG54aTVhR0JYaUVmc3o2L3BvY090VFVrUVVBNHRn?=
 =?utf-8?B?bEt2M3ZDaW1LT0czTHJaT1A5Q09leTE2RTNwVVA5RUNmeGRueGJsQzJOeWs3?=
 =?utf-8?B?VC9ubUZjWURsOHpGMDBzZzh6OEViQTZ1WUY5VGI5Vit6LytBMVczZGh3ck83?=
 =?utf-8?B?TlhTc0ZmNGNNYmF1WmhrdXdvWnAyVUNSZ0luSUFJcU4ybnlCUGh0YWtzTFQ4?=
 =?utf-8?B?ZVFFWUtRYndVKzNyTGpxNkVBVDd5YjlkeHhvaDBESlZ3RUZzMzAyUFBZbURW?=
 =?utf-8?B?czFHZkQ1cU13V1JFeWkrby9qTDRTODdpbWlYWnd4TjBFd1FmenRidkYrdmI2?=
 =?utf-8?B?aW1FUE4xQ2hLV0hzRVdNbVQ1aURrRkJUUXNxajNra2cyNEpnOHJuSG1XYTNl?=
 =?utf-8?B?eU9LZlpSNUsxeFduaFhDYldJaGdaMDZmR0tOVW5nVFdZd3dDNDB4YnFZbEov?=
 =?utf-8?B?anA2NlBvUkFwcnZoNGJ5aElPK1NVbXFWalphczlyZ1g5dmpISllZVU0xWm9q?=
 =?utf-8?B?TlNNTCtVS0ovSGNjZTlNdEx3SXh6K3RlN0RCdnZLVjF2Qk5NMkZSTXpaZ0or?=
 =?utf-8?B?K1laSHE2eldXdlBKTnlNMUwwT0VSVVQ2U3paT0hYU2hMTzFWdGh1RmdLa3pq?=
 =?utf-8?B?SHcxMExTODkwdkxBYzF5SUY5bUdrKzkwWVlCMTVKOVlJMXRramtaUmdSYU9D?=
 =?utf-8?B?SUQzMmcvU284N0loMmluRDNrcURQS1d0Ujg2T2lPT3Rxa2Vyb0N0aTVNOHdV?=
 =?utf-8?B?cDVkZXI5NWd1S2xWK2VvRFBhWTlySVdBOC94YS92b3JralZZQjZ0RTh6YUEv?=
 =?utf-8?B?SXZ0QTIwYmhlZ25ZZ2kzUG5NRWNRL3NGQXBhU2RHVTM2UXZyMnNTcmU0cytR?=
 =?utf-8?B?dFdaNGZYSE9sOTBPQTVqTjlaNlN2VkpFZ0tLdUsrWk5wbjhTeVk0VzBhcUxN?=
 =?utf-8?B?K25GaG1YS3hWVTdEKzBvRDMzYkx2TExLUS9ERW1QeUQ0NUFEb1NxUlFycjNI?=
 =?utf-8?B?ekxuTFRzYTRhL0gxQVBubFBtMTE5V05kSjE2VEpjbjlpejBaYzVVYUxvZzhC?=
 =?utf-8?B?RExjMy9ETCtBUkhGaGk2OU4zUEI2VjVRU0V6MEdEV25MNUo3K0RrSTg2K3Nk?=
 =?utf-8?B?eVJGSHJPalV6cm5xUVhmc1I3S1Z2c3Vodi9pZUZWSSt0c2VCb3NzalhrajY1?=
 =?utf-8?B?Z0VTdCtpdllzL21nQ01RL0JtcHNlZlBVMWpqdURNYklBWFBnWXFrN0UyRm5E?=
 =?utf-8?B?K0hEK2h3QVQyWXdtR3Rsc1lWK3pqN1pNUHFiTEppKzF3QXpqMG50eTNveU1U?=
 =?utf-8?B?SSs3eWxtdllRRVZDWFM5MEdqeWI3SEhkT1dBZlphcGNFV3BVME5PNGV2TGpD?=
 =?utf-8?B?bDBudXZHbW41UVdTU1JuZDE5dGRjUkpjVWVnekFUQzYxeUs4VjVsQWduSitY?=
 =?utf-8?B?MGowRkdUTktZVjhYOVQ1enVFYUtqYmpscG8wSms3SzZRbVNCbWtXSnZITENX?=
 =?utf-8?B?Q2JCZzNlUW1YZFVXbjA3YjdWb0JGTlo5NGduT05MZHdaRUU5d09lWTBML0Fk?=
 =?utf-8?B?S28raXlaWVBvU1NFRjlPOCtvZkQwS1F6RzVWdlNkbW5DS21Hc29hb3cxRlVG?=
 =?utf-8?B?b0pFQnlnVkl0U0lSKzQ2RUZUSDMwSVhETmZJbjlaOE9NVkdQWlhwRkxHUWZG?=
 =?utf-8?B?T2dnandrbXJJblYvL3haMmZ0b1FlbjBtNUVxbFUyTjJhYVR4SVhDWkxhemNK?=
 =?utf-8?B?UzdsVllqOTlYSk1LY3B1RmpBbGpSOVN5bFhGcXlXWDR0WktqVmhXR2lwOG5i?=
 =?utf-8?B?UmJiYUppVVJ3eE1GNytaYVM0RW83L05ha3NhUUlpODhEWkNzU2hpd0I0ZVNl?=
 =?utf-8?B?eFVVZGh4T3Q3WjZZaStsd1ZnNzhra0NYaHR0cUR0V29ZQ2pNZkxrZmsvY0Jj?=
 =?utf-8?B?eUZKeU9IQnlWbWhDUyt2YnRXTWVZMGNZN0oxNVhCRUJYUkliNWE0TkNiZ2hj?=
 =?utf-8?Q?9EkdBbkMhKnIUUfcZIZTnN5rs?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab5b389a-8347-4943-3f14-08db147dd635
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2023 02:38:10.2057
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r1lOpC+SGhMgIYA3TIPwzpDhYByKm/IYQuBQXXFuNalk0eGmobugu+fHjc3MsLdaGXIF6vAkeTXaSdSz1fg/sQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8791
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 2023-02-21 at 16:28 +0100, Marek Vasut wrote:
> This particular block can have DT subnodes describing the LVDS LDB
> bridge. Instead of misusing simple-bus to scan for those nodes, do
> the scan within the driver.
> 
> Reviewed-by: Liu Ying <victor.liu@nxp.com>
> Fixes: 94e6197dadc9 ("arm64: dts: imx8mp: Add LCDIF2 & LDB nodes")
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Paul Elder <paul.elder@ideasonboard.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Richard Cochran <richardcochran@gmail.com>
> Cc: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
> V2: - Turn this into 3/4
>     - Warn and continue in case of error
> V3: Add RB from Liu
> ---
>  drivers/soc/imx/imx8m-blk-ctrl.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/soc/imx/imx8m-blk-ctrl.c b/drivers/soc/imx/imx8m-blk-ctrl.c
> index 399cb85105a18..4f5736e612fb0 100644
> --- a/drivers/soc/imx/imx8m-blk-ctrl.c
> +++ b/drivers/soc/imx/imx8m-blk-ctrl.c
> @@ -169,7 +169,9 @@ static int imx8m_blk_ctrl_probe(struct platform_device *pdev)
>  {
>  	const struct imx8m_blk_ctrl_data *bc_data;
>  	struct device *dev = &pdev->dev;
> +	struct platform_device *child;
>  	struct imx8m_blk_ctrl *bc;
> +	struct device_node *np;
>  	void __iomem *base;
>  	int i, ret;
>  
> @@ -310,6 +312,13 @@ static int imx8m_blk_ctrl_probe(struct platform_device *pdev)
>  
>  	dev_set_drvdata(dev, bc);
>  
> +	for_each_child_of_node(dev->of_node, np) {
> +		child = of_platform_device_create(np, NULL, dev);
> +		if (child)
> +			continue;
> +		dev_warn(dev, "failed to create device for %pOF\n", np);
> +	}

I'm just aware of that it's necessary to call
of_platform_device_destroy() for each created child device in
imx8m_blk_ctrl_remove(). But, it doesn't seem to be easy. So, I'd like
to retrieve my R-b tag, sorry.

Regards,
Liu Ying 

> +
>  	return 0;
>  
>  cleanup_provider:

