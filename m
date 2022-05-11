Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 432BE52295A
	for <lists+devicetree@lfdr.de>; Wed, 11 May 2022 04:04:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234680AbiEKCEV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 22:04:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229834AbiEKCES (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 22:04:18 -0400
Received: from EUR02-VE1-obe.outbound.protection.outlook.com (mail-eopbgr20059.outbound.protection.outlook.com [40.107.2.59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00C9D5005A
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 19:04:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m4gfkoS9yQ6hV2AWOWGeHBC7dfBqZ1ad3EP96PQFfQSU4wufanHZlmtA0pbD6FBriN9gcGzv6oILqcvl+iZG+X8LP0K7WgYIt3HgZokivRkkrUZikmImVaGHUgzoA3giGKmXVcBYuNTiyGdJpWy3NEljYy/ASgAkTqaE840bbTbrbttJp9laH2Ayl/XI3Db9e96Z0BMQBGHFjfLeHAfBS7kJtVWZXro+t9fEt1/pRyv+Vf1kWcpcauO0yJiwthHIb1GpQmdTHTNWenIfrHEbHDOPdHpXbb0g0ViLVy/e3RIsmYCSfDNgXjbaf0JrrPuam6BujzLNZwvgCD18gatdnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZNJozH7rSRVxTQ+7uyYj0HRSlQCn7nZBAFlC2NVgsWM=;
 b=Ikyie5KRVbf7hGe0AgP6WzSUrsQ2KdinWQ2EuD2M30zvNwdm3GbyaxoGkV98eyKCs9wOybUmku2tEgpaRDRrKOM5Bdn+9ebk3icrmGL9pLiet82OfWJASzYhcqh10fl1uWVvl+O3prlSwCXOYdXTSnRjzXUS3DIA+33eHXTKeT51ecCYuDxDr53Eq4LeXgyLNjzIWO7MpeOj0JhszQrQCzvaigHHS1ZblGc75iro15kpuritzRdh6Dz9Pw1N/DHmEgNvG7Wun1VV074NvO/1BWjDGTazdC6OryplXE96Ff3Strw9D50zZycwBO8+NNyAuxirHzJKV/quzLRklLGDHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZNJozH7rSRVxTQ+7uyYj0HRSlQCn7nZBAFlC2NVgsWM=;
 b=Z7nYW5ZkB6OD3ZEH8ZxnCK7geP9wiHVSllLF6KRY4iiYu/utr1+ccZVK2fSEG03yFcvYHQcjheBHITyGwfR1wPOZ2Qnhiv+SWbpXrczhFsDiwUbJ1C3HJwgeI+ENC5WmbJoq7hTuuEeEdiak0mO+xGxHujoXugtvUHyORh4w1nI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com (2603:10a6:10:358::11)
 by AM6PR04MB4485.eurprd04.prod.outlook.com (2603:10a6:20b:20::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.23; Wed, 11 May
 2022 02:04:13 +0000
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::fc66:662f:2a82:1420]) by DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::fc66:662f:2a82:1420%6]) with mapi id 15.20.5227.023; Wed, 11 May 2022
 02:04:13 +0000
Subject: Re: [PATCH] dt-bindings: soc: imx8mp-media-blk-ctrl: Fix DT example
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Lucas Stach <l.stach@pengutronix.de>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Marek Vasut <marex@denx.de>, Rob Herring <robh+dt@kernel.org>
References: <20220510200543.13482-1-laurent.pinchart@ideasonboard.com>
From:   "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Message-ID: <1a0e0d2c-2c80-0de4-d670-937e66fe3511@oss.nxp.com>
Date:   Wed, 11 May 2022 10:03:58 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <20220510200543.13482-1-laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SGAP274CA0019.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::31)
 To DU0PR04MB9417.eurprd04.prod.outlook.com (2603:10a6:10:358::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4276b4d3-1917-488a-4854-08da32f28b45
X-MS-TrafficTypeDiagnostic: AM6PR04MB4485:EE_
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB4485F47C1946A1BFBDAA078DC9C89@AM6PR04MB4485.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I8MNhwl632uJqA/y3PPxqe+mqKVJ+gn/dVEAgaE0lY9tcKaI5ZfFUISM+GACX/WS0JktJjJPUEVrO9ixm0KJB12C5ZsG1oWLXUnOIZZgc+eh7IMp5pGQLDUWaBJbkQxPw3EQ2EW0TQ6R0f8UkhWVSmH1AA1+uvcIWhLkjgGiZ4BIlAnDIzCMpOsc57sYGXscsof7wtAmCDZwaFL43k14JOPcwDKQj3gt3HeOJolIv8ze53D1fFxgVbMv3cGrUM8Ovtxvjxn4RxrXqqTBOklu5Rb60xwUp3fNtxcWLpmT1rrAaE0z/ln7EKBiqU9Qjuiz4td426GLx2w9crVHZ8XNkQDagzFnK2AxQtWdHT+gCERexF3FVxLWezIsp8IvxUhOX3tdbFZmppGF9k87p6EbIsTqfhaz7Y71reQSpNx7ipxF0uzEPKRy06/w3WFn5G4uXAL8LZNOJPCzAiOs370elrGyLq39UNvziJtZbQdnGKQUSBv5QlfUJBHmPzwWmY28psDpHskBQZOL36M+wdwldzHLVA+b1B9Zri5s+eZfFkMwYmMquKQI3tX6FKqewNnfoBo1owg99p/fKmGSH0zt27XL2yzV6wa9Y509jc1zXxAAnVeeHEjoe4iLwEOt41tFnxq4l4OCrEWh10XqYImn1tifF7PQO5ooGPGE2UAqAYNhh27t+S8az6XwGWFj7G/QQn0uIiZRqp0aoTYUarlGzQDZw7cTcpu9AiMAQd5RjT9fuzs/9y29sRlhr6Z2c09ddlsfDXkEqQ7flCGsrW8lOpe2HFeszh4YOR5BCNw1o2E=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9417.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(7416002)(31686004)(38350700002)(38100700002)(5660300002)(66556008)(66946007)(8676002)(6486002)(4326008)(66476007)(6666004)(52116002)(86362001)(83380400001)(316002)(508600001)(31696002)(26005)(8936002)(186003)(2616005)(6512007)(54906003)(53546011)(110136005)(2906002)(6506007)(32563001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cEF3bW5Sa081R2pQUHVOZkl1K09nYVNaU0o2TlRhYUJCYWt3cEp5U1VIM29S?=
 =?utf-8?B?MzhhUVNtRDJWZWoxRmRBK3JsS3A2cW1wYXRnODQvQmtoa2w0ejJwclZpWXBC?=
 =?utf-8?B?SksreHlQV1IxMERIREg4RktUUG1vT1c0TmpzbkxORGVwaXJRbG9UR2FjbHhs?=
 =?utf-8?B?cDJsbnhxT2diajJTdW5KdlovTzY0Y09aQkludURPTEVRVThIeTdXU2NsUG5a?=
 =?utf-8?B?MHpSN3A5bkhJbkJBNWtmbFRCc1cyVEVGYXpyZ2pjeXRuUWdzSlJsWDJ3RGtx?=
 =?utf-8?B?UGpCeTRnRi9KMmpsdEpnbnlQQjZJV0tEYzVNS29NRzRuVFl5UnZ6OGdtc0tF?=
 =?utf-8?B?WnBJK051T3drYkxqcEdIZnltd1ZiWlR6M0lzZlJLcDV3Q2pZdEdYUTZ3czZV?=
 =?utf-8?B?bHJDNkR6dnQ1Q2liZXcrZmxGVnZ4L2ZyUUxsS0VJK3R0K2Y5OUM0R1U3ZFR6?=
 =?utf-8?B?Y2V6S2xCc3V0VjJHQ3FSU0F0VG9CVWd4UzA0bTlOWDFkM0dDa1BiS2o5VGds?=
 =?utf-8?B?WElzUG02aWtUeHVSZ2JDeS9wSEZUaVZ4TFprbFJIek1zKzdJWWh2dGFpNTFr?=
 =?utf-8?B?SkFVT0NReHRxTnowbFB6elA5K0Z3UGQ4L3piU0dWSmFOZUdnQi81MVN1eTZV?=
 =?utf-8?B?aWwydU5tcHgrU0pzd3k5VGdnVEhuWXg2WFRTL0g0ck1URGRuZjN1aFVMbldB?=
 =?utf-8?B?MkNXSkg5bTR1czBRM2h2U1pHaXRwYmFkWlIxVS9xcTdFZFo2MTlSQlp3R3FS?=
 =?utf-8?B?cCs0MW05bTlYVGwrVUhVUmxBS1pXM24vMDhmbWM1ZmVBSE1pY01lZmhBWjgw?=
 =?utf-8?B?Y29zdDRtK0c2YnRXeFBvVEttUUQ5WUY3QWYzaml6L0dlamw2SmZLVnp2b0ls?=
 =?utf-8?B?SG5kR0drWTI1R0xkRlNtVk5Sbk5IVGRqUUsxTFJXaHZMbjRMN1dnN29nRkdE?=
 =?utf-8?B?ZCtuT3B2TG0zZUpOWXdmU1FxNEtpcUpUR2FGanRzNThYd2JPWHN0a3p5RVEw?=
 =?utf-8?B?aFM4cjVsaDdLMnZCVk1PamdRTTFmVktTYWdTb2hwcUJhRHlqcE1YdzlNbndu?=
 =?utf-8?B?aVdldEdaMDh4dDM5Uis5eFhHV211RC8wODFLWHNJMHdkaU90U0h6ZjVPMmNV?=
 =?utf-8?B?K0t3OGFORjg2R0xYRUJjLzdQUUdWV25jYnM1WTNna1NVWFoxSVVSSHBxSlZF?=
 =?utf-8?B?bVZmR2c5MGJUbkNZQWdFdS9RMVJLZGdLWjdSSlJOTS9pRXc4TWNrS2t1clpv?=
 =?utf-8?B?VUJhaWdBNVNRY3R0STJXa2E4YVQ0YXVsSllwU0VjbUc4QWRzUmk5VnlOc1ZI?=
 =?utf-8?B?QmZUQ0xEcGlBYjkwMElqQi9mUjJCRWNUYURDTlNiV3NCdThPa3ZrK04xN0xD?=
 =?utf-8?B?aS9JNDNXU0V3dWpBZjBWMmFzaVlCaDVUbmhJZjhWOHY5N3I2NVIwTWJ0RlB3?=
 =?utf-8?B?MGRZSnYxdjUrRVBWUDBmZ1ZreEEwWHJ1RTRWOEhCZk01TmRhZUt0ZWJwb0k3?=
 =?utf-8?B?RE9aL3dPU1c4OWhCYUtRTVBpYTN4WGVFUS9RZzV2OGYxb1oxQ09sUVZ6ZEJy?=
 =?utf-8?B?WDJsVkdFSElpVm1LYktZbWF4Q1BGbEdQR0k2NE51d2ljWEFWYlJFSDNUNnY0?=
 =?utf-8?B?SW1ucWMvSlZ2aVo2LzBkVkprTWtIUVpIalNWQmYvUUtEQWczS3c2cFpCY3FQ?=
 =?utf-8?B?cGp3WDZvUmZEYXE2TDFuN2dEY0JWUEYzaVdqc0ErQkxVUm1CS0N5UjlONUI5?=
 =?utf-8?B?K3k1RmJXM2V0UDBkQWdjeFg5WHBpZGRRT25yei9lWGY5UTlURmdHOTczbjNN?=
 =?utf-8?B?UWFPMHd0S3FXZXRucUNBUjVFcS9NcGJseDZ5R093aEt5cHVvcW9oa2JpVllY?=
 =?utf-8?B?NzBpOWliWjNOdzl4eUZZVDRqdEFRSnpqVWpBSkVCK201bUU5SFp3QlZnbC9V?=
 =?utf-8?B?UXVSTWl5UllCWENwVkNONDBrMFVTOFRLSkpmT1JQeHZpNjRXTGdPVjF4Y3A4?=
 =?utf-8?B?cFRlTk1SUlVHM2loTy9saUJWVUxmS04xZ29qajFBMjBtc1EzMjBnR1hIQkpx?=
 =?utf-8?B?Zng1UjBwQjAwZlhYUWk3aXZxVThCVjhNck1USWtVWXJGSmNvdk1DbllvZ3Iw?=
 =?utf-8?B?NnJNVmpGdVNkcnRjNWh0MExRT3ppZExidmJtOGRzcUZLWDhrK1pncTFhRHZU?=
 =?utf-8?B?cjhuL2NlZ0gyVWdXcHJ0NU5lLy8rL2ZsaTBnUTl1WFM3N2tyc0Q4R2Z1d0FD?=
 =?utf-8?B?UjhEOE1tRUdqTGY3THZINHRqOHFsZVRYc1ZaejNvRWIwUmZhaXdWSllVbGU0?=
 =?utf-8?B?cDZyTkVEM3ZrU05lYjArV0pMaWFkemlqd0k3MEV4NndUK3AxVkFadz09?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4276b4d3-1917-488a-4854-08da32f28b45
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9417.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2022 02:04:13.0299
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: js6k+Y12xUmj8AXy3WFFCz7KzXmTwxawExnfBTApXhDqmPQvqAM6UJLQRMmdvHj6xpwIOLEVqV1J/s38QO9CUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4485
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2022/5/11 4:05, Laurent Pinchart wrote:
> The DT example incorrectly names the ISP power domain "isp1" instead of
> "isp". This causes a validation failure:
> 
> Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.example.dtb: blk-ctl@32ec0000: power-domain-names:7: 'isp' was expected
>          From schema: Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> 
> Fix it.
> 
> Fixes: 584d6dd668e2 ("dt-bindings: soc: Add i.MX8MP media block control DT bindings")
> Reported-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> ---
> Shawn, this fixes an issue in linux-next, could you please apply the
> patch to your imx/bindings branch for v5.19 ?
> ---
>   .../devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml  | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> index 21d3ee486295..b246d8386ba4 100644
> --- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> @@ -88,7 +88,7 @@ examples:
>                           <&mediamix_pd>, <&ispdwp_pd>, <&ispdwp_pd>,
>                           <&mipi_phy2_pd>;
>           power-domain-names = "bus", "mipi-dsi1", "mipi-csi1", "lcdif1", "isi",
> -                             "mipi-csi2", "lcdif2", "isp1", "dwe", "mipi-dsi2";
> +                             "mipi-csi2", "lcdif2", "isp", "dwe", "mipi-dsi2";
>           clocks = <&clk IMX8MP_CLK_MEDIA_APB_ROOT>,
>                    <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>,
>                    <&clk IMX8MP_CLK_MEDIA_CAM1_PIX_ROOT>,
> 
