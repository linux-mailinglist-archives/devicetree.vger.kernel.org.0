Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F031E69C437
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 03:39:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229601AbjBTCj4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Feb 2023 21:39:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229589AbjBTCjy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Feb 2023 21:39:54 -0500
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-db5eur01on2040.outbound.protection.outlook.com [40.107.15.40])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0255EC16F
        for <devicetree@vger.kernel.org>; Sun, 19 Feb 2023 18:39:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fS9cg1ppRE0ySxn6BvT2vszoi7/57A6HIA5zHLXAJzD756sCwn+7SjSpA++UufBasEKpoZwG1JPR78anfX6fDMskJrX2mR/NbWpG/uuDZjc71VbAwBwvKEyunrqSmXlMLK3JyHOTdfrUHOjbynmWfaDG1Co4UD4UMOMYV9+2MxgOTqU2AYGy5kUdPIcUbm/pDvBNu5X1APe5CciDlQj5Tv1UU571jnfmVPSKqvQvYfkhMRvL8o5lUU5WXyIMDx0pO8Udw47x+H/y/Q1ZcIpzIMXXbKsKvMvDjGfrp5b88zYjphhofGP0nPghlx4AtG9T3EWJjgn0ry6GZB1vhFM24A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SctPCC41xEljzeVJTRhcUgcM35tH8UTB+GGTecJRC4c=;
 b=Qj1az/QrAx1OyHEvPHPVm8MK65OrkeFbq3jQj4J6X1SKrr1pWfZl7hJIGEpkp/cLTw8ts7WY+D3sLqC/A1SFns+JfIcjGf+P0UqzrSswiW+IubdBqTEkZyyPm3MKyVNy4t6enFDHxWYQexrqkO6jaBovSXy4w5C/dEh2KlQwx49aaReVykX0uWLk6Ol7518Wmkhisf1IeLhmkpfsuno17nKyMDe0WA3XZY4YkyRbhi+eCg2CP9r/tRvHZzDWhfaLFjK4fLbzUBctkWsEN1wLp8L8ZiItLHfXK2jXMGqpg1afV6cIyfjQLBzlkBcXAbRPlx2tMSqeDlw4Ajn7ZW0PdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SctPCC41xEljzeVJTRhcUgcM35tH8UTB+GGTecJRC4c=;
 b=ZS9ebM68yp8syRxpaElzkGtPZkPH2qPgsA5JaJhOJMAx62gKnNOvRAW7f8X6CVkAqqAVygQLA0phUzcyi1RfK+y2+Rl3AdEwG3AWL2dZ96u6MeLgH7CbTdJsCL4gahv5hR++lIt6DSdMWx/fCzn8DCJMDwqSIRSBKv+VoUidp+8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AM9PR04MB8844.eurprd04.prod.outlook.com (2603:10a6:20b:40b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.20; Mon, 20 Feb
 2023 02:39:50 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::5725:92ec:f43e:f5fc]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::5725:92ec:f43e:f5fc%8]) with mapi id 15.20.6111.018; Mon, 20 Feb 2023
 02:39:50 +0000
Message-ID: <11a62a596c507e21fefc79268afc8665b5e72233.camel@nxp.com>
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
Date:   Mon, 20 Feb 2023 10:39:11 +0800
In-Reply-To: <20230218235417.173325-4-marex@denx.de>
References: <20230218235417.173325-1-marex@denx.de>
         <20230218235417.173325-4-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI2PR04CA0005.apcprd04.prod.outlook.com
 (2603:1096:4:197::16) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|AM9PR04MB8844:EE_
X-MS-Office365-Filtering-Correlation-Id: 0643a4a1-afae-4a23-cbf7-08db12ebbd21
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PJo9x9egHasYQljcgoB7e1qekhdMhXH7ehKGSauLuPHBzUfrqBfAN1QLyQealht1XDd7qj0BGEX3gjZaXhRau6wbtxdraPiPZgwafrCc4RjXWqx+MeExbhjFiwxC2emRI2+16yoXPTNwm9PmX7OCANpJ9l/13yCnnz/hW8BjoAyDtT7jUAI9Ow9ohtKPtWHgjmphYPyE3OnOjb8xMgQa1d23+fMgVsXqhQTsEI0HzmyRnOZHlPUXa+dJDhd80QyPJqX3+2FzU1kUc7zWiGE9BWoLQLLdGXgp6A2PAWEa0ARVeV+mYBjyUmADSBztRsBIDxhJ1o1YuDaix9Kwe4KMaqjB+VTeLEaLpoXRdAMjJVo5jRfFFdux8h9LL59oO1om8HXDEAt+JpZrW3zb6YlmG7JpywsaG5pU+mID4D3wyiUVSIdxFosjZBLT0e05uwr2v0R3i/bI+YynPlg0os6A2RAUjHgtcMujoBshsAy5QtsN5yfvtE7R3hHzXvt36N618gpEJinhEmlmX7QmkvEoMly3mVtCBTlSmjI5rA7YDZM4hODtc8dUJZ0Mz71mhPw+uu7n6X7vi4Q2ZLeEIJJ+BEF8ompyUyxB9+CWrBZY3n5oIuhdYb+O28tRiFY5Vn8k8BcW4cqNZtV8vTBNPKwcl2RfGqKr0ZNKO2ioLwZNOV2u81q7Zq5hcFs55Dn4vPtzF962RPXCBTVeag2OpxEa9WeicBWoOz/Ue2Rmab/V7oY/ZsqqS8/acW83ca8x6msZ
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(396003)(39860400002)(366004)(136003)(376002)(451199018)(36756003)(86362001)(4326008)(66946007)(66476007)(66556008)(8676002)(316002)(8936002)(5660300002)(41300700001)(52116002)(6486002)(54906003)(7416002)(2906002)(83380400001)(38100700002)(38350700002)(6512007)(6506007)(26005)(186003)(6666004)(478600001)(2616005)(99106002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d0wvRmtzbXdUU0ZRY0NhNDZnb01CRU5rdzEreCtlV2dYTlZ2UTl6Zzd6WXdT?=
 =?utf-8?B?eHdvSC84OWFZcno0N1VyVVVGRjBUS09CZ1c1TCtFOWJINHA2Q0UrWmsyQ08z?=
 =?utf-8?B?eENienZTY29KdnJxTkhlZG44enJMTytxa0x0Q0RxM2pDSytEbGtrRTNENS9I?=
 =?utf-8?B?ekl6ek11bVEyQXBCMzBSUWZSYk10SEV3a2ZJVThNL1BUWHR0UmE4bzlJUlFV?=
 =?utf-8?B?TFdCcUFhMkpIREZ2NFNrY1dCclZDZmlRMGp6WVNHeG56QnBuaXBqOFJxVlRT?=
 =?utf-8?B?N1hKNmJkUmtSU2ZZVHpiUnlZalhIcnhLaU1sVFZlNkxMdC82SElHaGd0SFlW?=
 =?utf-8?B?V01ZbkJpanB3LzltdURYME4xSzMzWWl4c2NSeEFjUmpUeTdkZEJvRlBUSnV2?=
 =?utf-8?B?YXZDWlpBZWlWVjZCMURsdXgwSTM1bGVvczJ3ZmFwOTVwWHpkellPZXRIdGtu?=
 =?utf-8?B?Qm53ZkV5a2lqOUFmQ3ZSYkFmQzVGNWxHNkh3WVN1ekZId3lNNTZxVFY5UUxH?=
 =?utf-8?B?bWwzQzVsN3RNQWx1Nk16OFlZTjFMQVhwd3ByWG55SnYydXNMUjZXZ2JvRzZB?=
 =?utf-8?B?VEY4KzBLS0RTeitybDdnMzVQQXh2RURoc0tKZVVvanhSZW1Rd0tha2lVNFVK?=
 =?utf-8?B?VzU4aWw2dGlHQS9lZllCM1VZN2F4SHZoVTV2TStrNlVWOFNSaEVZTTJOTk1T?=
 =?utf-8?B?cFlrZHVXa0hXRzZFZDY3czk5RU1OVDFPeXVnS3pCMkYvSFNnUlpvWEVsc1Fs?=
 =?utf-8?B?WE9nbnRieXN4LytpdXJmcXVuNzZodnVzU202WXdNZFBCYzJPQldHUWh1bVJi?=
 =?utf-8?B?Y0dyNUJLTFlKdXJDN3Z5Uk5uZVF4Sy9WdTJtOVE3Z1RTUTlEY0FaWERjRk1h?=
 =?utf-8?B?SzYxeXJIcmpQdjNUSkE5Zm5nY0lNWm93ZHJJU0J3bXh3d08zYXc4VG1WbGVr?=
 =?utf-8?B?QTlMOExMKzIyUkhYdHpsUUtaNjk1cElyWnBJWjBubUlSVU8ydEo4RHg0M0t5?=
 =?utf-8?B?U2tMM1hyL0NkaitOY0c2RkdEa1VnTGpBYjVFaTRURUtOenRaRmNMSXZVZzZY?=
 =?utf-8?B?SzdiRzFFaEVMR2pzT0paL2djUUVIc3BjQlZ1SjdXUm4vell4V3Z3SjhleDhY?=
 =?utf-8?B?V3VvR2JzSmoxcnhXU1J2M3d6d1EyeHpFdWhKUlBHMFdxYTVPODlvYWtOTjJB?=
 =?utf-8?B?dlhxcUZDaXQrZi9kbDlNT3h3SGtxeHR6THk1V29VME1pVXZrQnErTTBWRG1m?=
 =?utf-8?B?bHhnYlUya0ZSZG1adUtCUDZLVjVxVE5QcWNsQlJWcVBYSWRHNUozaUhMOUd3?=
 =?utf-8?B?Y2VzRFcwQnIzZHMzWGxuTU1uSTdBSkxRNjJJQmtLa3gvdGpxL0szUExqTnNn?=
 =?utf-8?B?TWR2RCs1elkvTnZTSFEycGNGZkR1OGhLSVU3TE9rTzNrdGc5S3R5RUlLOUUz?=
 =?utf-8?B?S2YyN3hDUTNqcHZadDBMUTEvWWorcEJTaXlUT0ZjeDlRNlRudUpoSjJTeTla?=
 =?utf-8?B?aEtoRzBqR0g2bW1oUEZScCs1NUhzVHFxTk1WaFllQzZNbW9GaGhtaVc4VnVt?=
 =?utf-8?B?ejJySkRZT0pnK1RkMGNYVXFIakJvSEVsejYzNDR2RXFuWmRlZUgvNlFKSEM1?=
 =?utf-8?B?M28vMEh4aEtneDIyU2RWa2tPRzZyd09UR0lOTkpVTW12Q0VmS2ZQaFgvVVA1?=
 =?utf-8?B?eUlJUWxvOFh1ejlpeUR0dHVTYjhtNGp1UGNMKzRoeXIwRmx3bFBRdlI1eE1S?=
 =?utf-8?B?Z21EaUFBdTNKbGlrKzVBS3AwK095aEFOdC9FT2xBZGYvajJ0K2pHZk9OU3Fw?=
 =?utf-8?B?TVVjaHVUT2VpSFNic3g4Nm5VQmVvc2tyTjY5anlhc24yaStyZHltQXNXVlZi?=
 =?utf-8?B?aXdGL3VoSDhxbEtQS0QxeUFwNzNDcmMwNXdNNTNsV0d4eVdWZkd0L2tVaEFj?=
 =?utf-8?B?emtDNU82RCt3SEk1TThSRzZKYzhGazEvUW1XYXNkeUo3MUFxcndkNVZPLy9q?=
 =?utf-8?B?bHY3aUFQUmMycWJVSzM3bWRqdGVDYjFTYWhSQU1JSmluaHNhNDE2NW8vWWgy?=
 =?utf-8?B?dUhBQ3hPNkU4a0dObXJMdlpsSDExNjlQUXcvQU1SNkJsaWNnSGtMR05Lalho?=
 =?utf-8?Q?RENVijRxKh/iZHclGUSuDZTLp?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0643a4a1-afae-4a23-cbf7-08db12ebbd21
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2023 02:39:50.4185
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dTC8CObRRd2i+KC2mvhG4AU1vsvBH/lU6u7tL5lFfJbi8ewRfqZhFsyJH3gPFr790Z7VVIbobq5AnLBxlpiHAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8844
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On Sun, 2023-02-19 at 00:54 +0100, Marek Vasut wrote:
> This particular block can have DT subnodes describing the LVDS LDB
> bridge. Instead of misusing simple-bus to scan for those nodes, do
> the scan within the driver.
> 
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
>  drivers/soc/imx/imx8m-blk-ctrl.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/soc/imx/imx8m-blk-ctrl.c
> b/drivers/soc/imx/imx8m-blk-ctrl.c
> index 399cb85105a18..ab48f9dff4be5 100644
> --- a/drivers/soc/imx/imx8m-blk-ctrl.c
> +++ b/drivers/soc/imx/imx8m-blk-ctrl.c
> @@ -169,7 +169,9 @@ static int imx8m_blk_ctrl_probe(struct
> platform_device *pdev)
>  {
>  	const struct imx8m_blk_ctrl_data *bc_data;
>  	struct device *dev = &pdev->dev;
> +	struct platform_device *child;
>  	struct imx8m_blk_ctrl *bc;
> +	struct device_node *np;
>  	void __iomem *base;
>  	int i, ret;
>  
> @@ -310,6 +312,15 @@ static int imx8m_blk_ctrl_probe(struct
> platform_device *pdev)
>  
>  	dev_set_drvdata(dev, bc);

nit: I would put the below loop before dev_set_drvdata().

>  
> +	for_each_child_of_node(dev->of_node, np) {

Please call for_each_available_child_of_node() to create available
child devices only.

> +		child = of_platform_device_create(np, NULL, dev);
> +		if (!child)
> +			ret = -ENOMEM;

-ENODEV is more appropriate?

> +		of_node_put(np);

for_each_child_of_node() and for_each_available_child_node() would do
of_node_put() for you unless you break/return from the loop.

> +		if (ret)
> +			goto cleanup_provider;

Instead of return in case of creating child device failure, I would
give a warning message and continue to create other child devices if
any. So I would write:

-------------------------------8<-----------------------------------
        for_each_available_child_of_node(dev->of_node, np) {
                child = of_platform_device_create(np, NULL, dev);
                if (!child)
                        dev_warn(dev, "failed to create device for
%pOF\n", child);
        }
-------------------------------8<-----------------------------------

Even if return is used, dev_pm_genpd_remove_notifier() should be called
to bailout correctly.

Regards,
Liu Ying

> +	}
> +
>  	return 0;
>  
>  cleanup_provider:

