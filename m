Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E965D69C4C5
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 05:35:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229604AbjBTEfl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Feb 2023 23:35:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbjBTEfk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Feb 2023 23:35:40 -0500
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2053.outbound.protection.outlook.com [40.107.20.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C634E3A7
        for <devicetree@vger.kernel.org>; Sun, 19 Feb 2023 20:35:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QJ9sjYTnQcNrVJF+5k4uSEn7D81WjShyve0gcnF55cLRFqRQKK3IHOo0RBExuycnCpEZhTx0MlVZJndZRFvU5Jl0HroDNAnxe8yROuTs8Ct3tq84ndk6ndq7j2aNmgepPvg+0ytziNBfsYStQ2pLgkyaNsaNSz7JQcOr7I77ZKqazUqL8PB9fvIG+ASfYNWqaRroa7wW7gKT9nKa8JxpX/K+0EfbvnSzrT/TiObWdUDTqfvCeJqBOakXpE/+cRP7+Dg6h/oxs9nj1CIP3yxbO9Sc64uFvhcoR/iou1e0K7wctKq95EPaMh9pOF6geJ+hOgn0IM/kLITHz1J8xVQVKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1VOaYDLF3mPgmXN9Yhqcfw9vUKC9qc4zruGLdpvCEbg=;
 b=Ot/X6zDyWVOxIekDWrIhiYgBxXNQV2lICqd9hk5exuOq7VSkmeXqQz66+fuRjSNdLL1x1JCtTEDKRnGi1JE4E1mWLryNOAcl9wGJ38zusjuI1afeuf5cHb7vh6IANv+8HvL/AfcJIeB/9EN1lofZL7e33Hv4u5wOBTiCJNG7iFUnb5vWQcgQM/oAR7PHOZ0pD2dg4jnDhGTseyaVW8bNxn5cKc3LSfMXg6Mw5DpnyovjSIx9s6oK5+psbd2JF7jCpxbD/UoJe8HaRHYfvNJQi6svy89FYZdJpmsgqmHrW8lGVTAGeEI1tjw/2SEGkaz0SW0NWc20M95XNjIx8TDirw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1VOaYDLF3mPgmXN9Yhqcfw9vUKC9qc4zruGLdpvCEbg=;
 b=KD7W+yDvR/5yoJTv9AdcD40sbQ2xG5SBnW4Qprr0MG4mQB5o1npTuZdTzDHHlafPhSAHbhbmedvW0uhgnoIiX3DQYclAwH4LPrW/517kte2AC+tbgn7Cvi4BhaxJOxojlnHD9WddyhyXvz5yfLS4fxpNeXrKKG1Xav9BeVGABdk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by PAXPR04MB9445.eurprd04.prod.outlook.com (2603:10a6:102:2b4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.19; Mon, 20 Feb
 2023 04:35:35 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::5725:92ec:f43e:f5fc]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::5725:92ec:f43e:f5fc%8]) with mapi id 15.20.6111.018; Mon, 20 Feb 2023
 04:35:34 +0000
Message-ID: <b72b3384384204df3b06ebdb1046157c82d1aee8.camel@nxp.com>
Subject: Re: [PATCH v2 3/4] soc: imx: imx8m-blk-ctrl: Scan subnodes and bind
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
Date:   Mon, 20 Feb 2023 12:34:44 +0800
In-Reply-To: <20230220035051.327847-3-marex@denx.de>
References: <20230220035051.327847-1-marex@denx.de>
         <20230220035051.327847-3-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1 
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SG2PR04CA0159.apcprd04.prod.outlook.com (2603:1096:4::21)
 To AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|PAXPR04MB9445:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a4d8d81-2036-4d86-7ef0-08db12fbe855
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GLBXVK0S3VLdtMpqB0fKCb9OykNB08z5ZgrJ7ujm/+O2uCoX66ijPyXAKdsOk4H6BxjraIGEvpz6UZQDqfpPpp8GKZG6oD4bMFwZo+fc9L0w3pOhMq/XhmKlVwywcdD9yTABNh8mr5pSi7ynVm+aUiGm0edhk7FU9JyGo8kyqqFR65wYSB1WKdW9kJeGmSVUShiiK/DSV8pKvGYLk+P1nEKGDhyGfz4PqYBHceFR8ThcQ0uQ4RY8yLaeNrtJZCpDOGsVICx+2VHfa69L8CWDWa5mSEZDNyiw7sqCfBLLC/Vx2Hdrh5ceJZ6mnAB6cAyowr7A/vSGAP03emuNm6nK01czqgozXvPwpBQYLC39n4m2tNzzhMrpmr3wiABwt4EUgnDb1iznD/zwO/TwHUXGDkIREc/z+WTLUt+uwdSD8cCcWNjQdYqVRRuQ9T0hXVW6hqXt+44OBkygzeh3oTd2/LE/N8BcXwIttC3Q5IDHQ6aimPX6t+fKvednc1iW1Z9XcykaopVjMHSYISIXyjEfqBpLzvipXe6atnzCu2b7Tn9GrujaUKRDA6MAimkZcQKHVs146acvjKUKTTzbxSPwAa2xr1vTs7cSLoSpZbnDhIxUM2O+/BHLyuAm085kxcnAaMWOP3Z/RwFKFBm+DzfB3FfjZSfAHYHJaZ/rBQdU/yFejcN/gUHAAJiQ9pRMI+M+V1QmWIuU5e67Zh72GLoR8+o7+gA1PjH/+mplCGGCKNQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(451199018)(2616005)(2906002)(5660300002)(7416002)(8936002)(38100700002)(6512007)(26005)(38350700002)(186003)(83380400001)(4326008)(6506007)(41300700001)(6666004)(478600001)(66476007)(6486002)(8676002)(36756003)(66946007)(66556008)(86362001)(52116002)(316002)(54906003)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TUZzODNBQlNXWEtqcEYzNUxZSGJOZWc1YWlWajlXZWdVWVhiNHZCbmhRNlBv?=
 =?utf-8?B?TTZrVFpMcFkvbHlxbWdCaFpNdzJXUEQyQklZSEJKT213THl5Nm85NkJXUVdS?=
 =?utf-8?B?aFdURml4OGE1MWJYMnNuWGp4MHVLKzNUN2JLbEZIRWlVTnA1YWVWS05PeXJj?=
 =?utf-8?B?eUc1U3I1NlVhbU5VMm1QQ3JuZ3JwOG03NklkdFoxODVjcVdMMEhxRzlUWkp1?=
 =?utf-8?B?M3FJL0NDQllYUDY4M240V3d5LzRGYjVCdUhQSzNacHJNUTl0TnRIeEZQSGo4?=
 =?utf-8?B?UFJ2c2I0ZGhJRHdPYzg1dkVqMjF3Vk9TVDB1K2hiNVA1RTk3eTZPYzZWc1B2?=
 =?utf-8?B?b1dNQ25KeXU1b01qSE9MWGwvL3V4a3lkR29uTi9DV2xGaWlKbDhhOWZjSHFq?=
 =?utf-8?B?YlNjaUVwMjNraVRETkRnRWRZYVNtS2duMXVJWTh4cU1CVys4UDZtWGpQVDV2?=
 =?utf-8?B?TkxldVMrRjdKYVg4a2diNnovWDJjbTVCUS85R1Y0WUJpekl4eS9RMktjV2tH?=
 =?utf-8?B?OXE5NUhDbmFxZzVBZU5NMllRZWE2ZDhtbkJOQy9QWVFmRVJ1TU1ibG5ubG1Z?=
 =?utf-8?B?ZSttUG1VdmxnemZIbnE3ak9kWWk5WmZpV1dSbHhMRDVYM29IOVVTYmk3NXFF?=
 =?utf-8?B?bFFTbXk0MzNvTmZTZVp5bW04TmttRWxCdkp0QTUvcGdCNDAveEEvbUplRlpT?=
 =?utf-8?B?eTVkdTk4TVB1WUxaaEV6NWxoRFZVUGx0RkhCek5zVjBmWTNrR0hQMUIyNm01?=
 =?utf-8?B?MnBiUThCS0cwM3FsNE5HdHV1bTNhdld4L2ZPdnIzbFlhbHRmWmIzRys4YnQ3?=
 =?utf-8?B?VDkreUJwU0NOMkFlQkxCeFVkOFRsVWxZQkJjUlJuUEI2RjVMOHlwdFFmNVFM?=
 =?utf-8?B?d2ZQT3ZUMGlBQVpOVUM3cTRhVDViZHRIWTdXSVlDbWY5Y21EcVFBd0NRTEpT?=
 =?utf-8?B?S2lZb1UxTzB2UVY1cExsZW1EQllKTkIzMkJHZ2ZZdE5saUpCbzZtVlZBRUxt?=
 =?utf-8?B?TjE2SzcvaWxIck9GeEk1am1UV0ZHOXRmTTA4VE5BOWZxUUNYT0Vhc1hucmp6?=
 =?utf-8?B?Z010RG5DdkhQZUx1RUN3L3kvOU8vS3RPeU1HTENueFl3SmduZENqU3pEeXVm?=
 =?utf-8?B?UXVlSmtxaTRUWHF4SFE5NUtYdDBNRGRBbDQzVTh1elltQ0t6dDRyVGg5cWJR?=
 =?utf-8?B?NERQaXJxVncwQVhXVnZpQnFPcGV5LzQ2L1Y0b0lDdHd1SHk0SEhOakxoSGwr?=
 =?utf-8?B?VzNsRVBmQWdsRWtNcW1oRFZtSUk5SDc5SHZaaUhzNDJhN0kvbVRQV0RVaGJu?=
 =?utf-8?B?Qm1KRDV6R0JBM0VZb041Q0MvUUd2czlvckZvYWhlbHRpekpJTnVoSDNwY1Mv?=
 =?utf-8?B?UHZ6bnhXdGViYTVpUmkwakYyTjFjWVhrWUIvbnRFamswMFQ5QWdhdkEvYU4v?=
 =?utf-8?B?MFlrTkRHTk1GZFJhaU5xZjFVWmw4Q2lFL2tra2xrYU5KbU9qY2FTcFovVkdH?=
 =?utf-8?B?NmJPRllNb2UvazYya2t6S3V4VUE1UzhKK244TG51ay9rSTRJdkJ0bG1XVjRB?=
 =?utf-8?B?d3M0K1NpQXFIYjVHSmYzN2dJcDFVd3QwVEIrbGxSNXdXOVRvSVJVb255NUtq?=
 =?utf-8?B?VWpQS2cxOTR2bzl2MGgyNTRBRm5iVTliZ0dSbHFaNWNiaHdFbkh2K29ITjJP?=
 =?utf-8?B?elhIRGRmQ2lEVlJJNnlMakF3d0JuYUJVS3VmYnlWZzE1TWxla2FWNnp3UTQ4?=
 =?utf-8?B?TitnR3FyRVVDMC9WcDh1RWlERG9Tdzl2dEJ1ckpqeHUraFdpVTdZc0JrOSsv?=
 =?utf-8?B?djdMY0xXb0hhMWxZVUFWaUY4RjVTakFGdDFzNDczK3VaTXR0MmIzSHBBTkRE?=
 =?utf-8?B?TkhaYUFMUWFEWlg5OFdUcjRYUU1pdThFVGd6alVZR25hbGFHeGVXNmVqS3ht?=
 =?utf-8?B?bVZxN2hMWDlTUmJIVmpBb3ZqQTJUalJ2Z2FFV2V4WWNDNVR6V01pZW9DbHVU?=
 =?utf-8?B?KzFXWEV2MGhOYnlHWCtzYWFFb3JUTHNqMTBtRXN3d0RzZTlkV0ZORzFjZEU5?=
 =?utf-8?B?NVcycjN6VXVaZFhRVnVlQmJyLy95enpxYnk5R2lET3dOdG0wY1BmazJEOVpy?=
 =?utf-8?Q?TDueHwirfW35F2EkeYW0uOkcF?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a4d8d81-2036-4d86-7ef0-08db12fbe855
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2023 04:35:34.8002
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uH9ta0+9lmbO4h+aIjidI2alDS+TGYcLriU9kAlYssjACUSZtMxh8pqjjcePPUbeZ+hsR/dHdDJ37P1k1gdnHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9445
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

On Mon, 2023-02-20 at 04:50 +0100, Marek Vasut wrote:
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
> V2: - Turn this into 3/4
>     - Warn and continue in case of error
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

We usually check and handle abnormal cases. So, better to check
'!child" and warn in the 'if' clause. Anyway, the logic looks ok. So,
kinda

Reviewed-by: Liu Ying <victor.liu@nxp.com>

Regards,
Liu Ying

> +		dev_warn(dev, "failed to create device for %pOF\n", np);
> +	}
> +
>  	return 0;
>  
>  cleanup_provider:

