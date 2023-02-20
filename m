Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E237269C41F
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 03:25:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbjBTCZz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Feb 2023 21:25:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbjBTCZy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Feb 2023 21:25:54 -0500
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (mail-am0eur02on2046.outbound.protection.outlook.com [40.107.247.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8C2FBDE3
        for <devicetree@vger.kernel.org>; Sun, 19 Feb 2023 18:25:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q21IKcxKo9QhYvasA6w2KABnb5Tllo4ZKpDz7HrloLyU24dGRQ6UVqEYBJOo3STGJ2NVoZ4/ei2eRW8Wxls0Ab/0tJ8tmo30yKUqER+V8cdD+6WQ4sGjeKja4IJ3mZoVpGahNFfyVYO81dftS+3JUc7WKiNELPxcHZLZ3+8F9y5p+W/kJfrlr2FlpBAwVOZEm6nBAcqqjpf43ALQF+LUJarVOS3HFPUtWtDVH8cbWsNcuFUpT4svsQj1SDd4bHleYbLyfpuEcOKD6VebPG47AZLAPxlqpqaOY+e1KoXOsscyMcbDLALM0o6fNV0tI+W27kcfR884EyeRYtxfvO/I3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VhsSTpsbyXi7dPAnlw6PoiK63Jh8QZodr2DG+F2InCM=;
 b=LI3rc9eSiLSW4D1lfGqLd0Ylwsgezh/9Ib4UmOCnUTkXeZuFo9xoOMvYKQYhCYNrzXMypZ+SXoVMOjpT693MWfijgC/Bs4agm5JKr3GkilpklMZ2jAv5fpw46tAfHPBhEKknOA766IwyKCpj4HpgYeKGKCbUam+gUG7lwOouQWJ9yhBNzklEk/lxfknLpmndtRB3ZoKd4knYVHNvirFFtC3XozEZMpz5ApKwuvEmrlHRRiu/nU3mIjTrkXKFm1qAn+wcepXG+Vt80ckFt5WVIiNAmFBUWzAyRarOVKPHFQ48Nm5I8okyzsRv4m6GCbSU+tLZJxm5/Jf6zlpA1WwVuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VhsSTpsbyXi7dPAnlw6PoiK63Jh8QZodr2DG+F2InCM=;
 b=rfopL6tPl+2E00MLlCtHmB5Rsd+Q19HC7Yg5vo923tO+glAAqrAzCZWDgyXZd6UQRhZaQhgKXWT8Xyo2K+45/h7xorNam8WuuzzsQmx5dUzwugQSkwqq68IE0WyidjGXtQT6h8Ri0qUEUCLTb+UQ7GM9gs9X1PKpvCynfI5tbpw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by GV1PR04MB9183.eurprd04.prod.outlook.com (2603:10a6:150:27::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.18; Mon, 20 Feb
 2023 02:25:49 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::5725:92ec:f43e:f5fc]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::5725:92ec:f43e:f5fc%8]) with mapi id 15.20.6111.018; Mon, 20 Feb 2023
 02:25:49 +0000
Message-ID: <34d758d3b683674dc7f2a18de3a5536aaa9ba293.camel@nxp.com>
Subject: Re: [PATCH 3/4] arm64: dts: imx8mp: Drop simple-bus from
 fsl,imx8mp-media-blk-ctrl
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
Date:   Mon, 20 Feb 2023 10:25:10 +0800
In-Reply-To: <20230218235417.173325-3-marex@denx.de>
References: <20230218235417.173325-1-marex@denx.de>
         <20230218235417.173325-3-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SG2PR02CA0123.apcprd02.prod.outlook.com
 (2603:1096:4:188::22) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|GV1PR04MB9183:EE_
X-MS-Office365-Filtering-Correlation-Id: b7b7b706-add7-482e-206f-08db12e9c7f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FKyTBx0HDVhplTzNJIFtPCA/1KJc5CETsM2rNLZnuEiKkJWQfS4sN4RKoz/PwsEhAsky0Sd68A+LMrcXezrtQfnYE9JkNTzZdS30Dax3b+Nn5/WpI16OdpFgwQg56Nj/DvmHGjAU2PfilFTcE4noUM9Y3AeoPbQc4tcymbo9ZVtMLwl0J9Zi+pQYmhLkHXbaO77DW2dbJzwiJ27qydkpNfunoihwZOH3zUgtSraGQP2wB7Ui/4fZzVlOpHNw2WxnsijEbHs4tyjt6EQFfz7SDNUVn9qUFOiW9xdREQ7gqGLqJdW2bEhUjYE9YalQjqjIo2VH3+C2PLBCbg2urn9zBlc1l0y2U6xCcMuWeGCGvJNzMoTe5qaSYd2PZXPLesG+s6sljHiTVz52X4c7UxSzlR4bHnmBKHcctBpWOABPBYedOHGkFp5FGxvZfS1a5N3uvN1BB9IqgJzLsk6Yc/V6osl7AG9Z25BVQHY6uoeAM91xCahdhGrDbJj9qIwyydptqHbabNBTVvGYPQ4jy9ftUmbi/Ag21LWCwgt+9bPoDswM9MWPHmolDzCOMBCqXhYDrufhuC8mCggtlhRkFdegL9X8QcQOOtkBiIOloc4OACGY5g9ZxzaO9ikbuQHsuGO7uasRVjwRKfbLzJYCpYDX7kAnuedIhhYKVQ7BYwFQOg7vPg4uErjviWNd1vz0s/R+PjvyeaqRQwByFE9brQ1PgluMHwnJks8SMlTGXsM4JaBvjXnXiZmIwzt9OQC64xig
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(39860400002)(136003)(346002)(376002)(366004)(451199018)(316002)(478600001)(66556008)(66476007)(52116002)(6486002)(8936002)(8676002)(54906003)(66946007)(41300700001)(4326008)(5660300002)(7416002)(38100700002)(38350700002)(2906002)(36756003)(26005)(83380400001)(186003)(6512007)(6506007)(6666004)(86362001)(2616005)(99106002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UXRwR2Q3RUJESllWdlZFOXJYL0pZNmtZU1cxVU41eDZ5bkU5YVhXOTB0anMv?=
 =?utf-8?B?ck9GOC9SWjJUU0Vsd2FKVjF5RjJGcEtDdmpXSTE4Zmhid0xXRnBKdnp2MkVx?=
 =?utf-8?B?dk5NSWl1ZkgvQ2l4S0NHd0V4UTRkcG93SjdxYkpnNHplQ3ByMVlOSllBM1c2?=
 =?utf-8?B?bWVrdFMva3licXJpS3c0OEdLaTdHakpQVXJHMXkxK0UrWWhGTCtsOUlBZXFO?=
 =?utf-8?B?aFFxTCt0a0NFcWx2RDNucUkxUFVUZDQwakhvY1QyTXBqQTcyeFhWZVVqZVE3?=
 =?utf-8?B?ODc4eXU4VnVYV1B3RFZvRjRMMERnTzJKN3ZobVpJUjdJT0Ztb3lVNHNGNENP?=
 =?utf-8?B?Z2x2Zi93Qy94M213czErVzBYWk53VitvaUVCTTI0bk9RNmM5UnF0MGZmS0xq?=
 =?utf-8?B?ZzRtNEZDT0lRRUdCbzNoNmpmVUNxQ3hOeDdzZXBKRUNoME5oUlV1WlpwYlEv?=
 =?utf-8?B?MWQ2RE9lbTZsanVYMVZiby9vbWVoMnlsSXdtN2JMeTJPZGJ0YmhlcWNNVXJF?=
 =?utf-8?B?ODJhMUduUkNtcTlMamFUazdpd1lDVDdYSHFsanU1OGZZQUZNeG9sS3JFQjRH?=
 =?utf-8?B?YjYrZ3NFNjZFVmFlMjVoRXNrRU9hUlo3dFFvM2c2NHgrc3Frb21PMFNIMm5i?=
 =?utf-8?B?V1JnaTYwUDk0RnRnWGgyaXpsKytPM0FzR3NQK2hiMWRmRFFWUjRyNU1ENFY0?=
 =?utf-8?B?L0dXcGRwRkZ2UzNab2JZcG02NlpPN01UaldoL1VyM09EOXIrRnR2Mmp2YzhP?=
 =?utf-8?B?Um5VMi9SZzRIR1FnaDA0RjAwYWcyNCtKRjNCMTRqL3ZybExzTXlvTHhQSUdX?=
 =?utf-8?B?MzdZQzU1YWRpMVRmME9SR29UNU1RdXBsOUQwRjVxVGNrTFBCbERqdlJFckhh?=
 =?utf-8?B?eE1Mb1RmRFdhUmpmbjVYeThFWHZWL0VELy9HaUttenZYelJ3WDZXSEo1MnRn?=
 =?utf-8?B?MmpTaVROOFNNSksrd3ZaUkp5cnozekxBeFE2UU5PWGQ3eGhyMnY0Rk8zZXdq?=
 =?utf-8?B?ZGowNjczZlJwNHhmMGpqV0VNZXlHM1lJSzJpR2IyRlZpU2dCdUpmVEgyMU8x?=
 =?utf-8?B?ZXVvL3hGMUZsc3A0QVV4WlJNTlFnQWJIS0JoVHpUcFJTM2FKOTZHOEFkMExl?=
 =?utf-8?B?MHZ5MUJxdUhJOVNHNDhGMS9DblZRY09UQkdaTzlxUG5RYnJST1RlSzVDOWYr?=
 =?utf-8?B?K0tOMXNJTW1QSXZsRTJqaHRsbmhPUHR3RGdna0RzNllFRlIrMFVEUEFUeDlP?=
 =?utf-8?B?TldGMVZrSmtUbVhYblFJR2xVNmg5MC9BVDByU0pab3VYamFBTUxnWnR4ajZo?=
 =?utf-8?B?VjgrVExhU24zNzY3RjRyZEhsblhLTmRnOXowT1p6bkJNY0duSjA3WTdablo1?=
 =?utf-8?B?cXZQSUVzdTFSYmxDZWJiTzladUxBZzA3b2J5aWdtZzNQcEx6dnlSZ29NaXM4?=
 =?utf-8?B?aUM1VVEvOWJ6enlaSjYxNi9XR2FEUXdJay9wbU50bjNQT0VaMkdiRTRXWUUw?=
 =?utf-8?B?TEt5WjB6Rm1MMmcxbGR1MGF4TUVwcFVOcTVHZG1BYks3cTlnYmVIVS83TU81?=
 =?utf-8?B?RThEbzhlN25qMnFQRWRBNWltK2FiNWxONExTUFNBN01LWXFtSVllNWVLdmN3?=
 =?utf-8?B?cElMTlhmVUpUdDdaNWhDeWZUWnRZWUpmcXN6ZlczaVBTNG1nb0ZSR3J5OEl3?=
 =?utf-8?B?UGlYSWYvckFzRjBxUzNYM21IdjNwUVI0S05Fa3pRU3A3NnZLVTU5NldGOE9l?=
 =?utf-8?B?RmpTYkxHYWVZSGVWRFh0Y3pXc1h1Z0NjZUVlSXFnVVIrMDJMemJkbldVVE5j?=
 =?utf-8?B?NFZoWHFhVjJ2NitIODB2by9NZ2t4d3NFcnoyTjIxR1d1MENxd01nZWpKc3F0?=
 =?utf-8?B?T2gzaHJlcCtCcllTRlZvVjNkYy9NZlo1TFArQjRUampjVEVJWTdZbnJTTTY5?=
 =?utf-8?B?TGpnb2NvM01ldHBWU0tEd1owWkxUbktvTmM5aXJjT1Q0a3FxbFRiYTA1Tk5S?=
 =?utf-8?B?NUhaUTRKU0M4d3BmRkJpU2ZSUUw4bXFJdjVCU2lqNmRFdHhEd3MySFlOSXF2?=
 =?utf-8?B?QjBtd2I2U3FZOHgzVTJ6SmlvRjBQOUdTQjVQQWJJQUI2VG1FMDE4dVJWRnlp?=
 =?utf-8?Q?x3CMBaPCKeFyDHRfgSUDnnbnf?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7b7b706-add7-482e-206f-08db12e9c7f1
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2023 02:25:49.5611
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zU4p04udu9t+bOUHp37wfXCuY2B8LxFy6eJv2K0o3G53UptVAQybd65Yug7m1DKqvN+vtJq+Xow3jGsiPW4I9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB9183
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
> This block should not be compatible with simple-bus and misuse it
> that way.
> Instead, the driver should scan its subnodes and bind drivers to
> them.
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
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Need to swap this patch and patch 4/4. Otherwise, this patch would
break the usage of media_blk_ctrl's child device.

Regards,
Liu Ying

