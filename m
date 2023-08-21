Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4319D7821FE
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 05:38:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230345AbjHUDid (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Aug 2023 23:38:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229947AbjHUDic (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Aug 2023 23:38:32 -0400
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on2078.outbound.protection.outlook.com [40.107.6.78])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E88A1E2
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 20:38:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cxaMEfPZ7WsBvZ3NBdMV+OviLRcxcIsChRXcBKlEIZBg83asAz2D7K0pCAPNoJPvnqez30H4PhKBktizXVYeDKALbI8WEqDQFxyaFUVAlcD1O4gH0MzdXT37LTwoOYMthMcypDPJI40w0yBGYGV6M6aXGWvapce5ytno0ArYWgUT+5qyYal2xTxDr5nYpis+1OHYe0g43mcUotJaf35g7aBX7D88AU7tT8n/xYjrNHcQAJZpZDGazyGTHwkSWhdDSR5/xvzSDQiUX3DZANa8kqnxYUNxMJsxNlqngDsHmAYGRTGq0IWyWIaie3AXh8wrN1lk03P+KGsagahDcSHWZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hu/bTnsUSt9Y+yJOcDeiW8RmhLkGrUQKX8g5t4vnYjc=;
 b=bLvbI7MSB9mF9hLgOd4EONfR5jS0dM5xNXhdsjGlMa1XPfBgkO3d7Gp/VnSNZLe78GLeAve5Qxnot4okl9Uvy8P5e7JJQae3ylUDb9oVWzUxwRx8GbfTGfFC7EGBc6Z1hig6/yqfM0G7nbKYWwKcKPAYcvegxBgp5ockCpMgPUGAu/w33L269J2WKv6+LE2BgNj0nQ23nJHNL5v86WHkFCdYv33xianeIDfe2A4IO0y+9QDZxS/+zTJ+k7dLhLS91FoexqdKjChorhwv1hripzMg7Pn6aSFJ/N8vtjbWMb1B/+Z0VqUZGhz2RXmHeJ3ed5KnqR/dckq9lXes+ypb4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hu/bTnsUSt9Y+yJOcDeiW8RmhLkGrUQKX8g5t4vnYjc=;
 b=Ifx+om3Rdpsv9m+/WtjaPQCrNq7JAZcYEQapIrtRlEkIwFpgyFBRO0Pt0LfhyI5r9TTuRtkt9o0RFKveqHFThiLar20yD4a3l4mjKGoET7kDcd+QKvy9kHXA7dSJE708iHdkRdudd7isWxpUHjONkKpDnHRUUEhl40PdESB9J7I=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by PA4PR04MB7758.eurprd04.prod.outlook.com (2603:10a6:102:c4::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Mon, 21 Aug
 2023 03:37:19 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::9018:e395:332c:e24b]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::9018:e395:332c:e24b%4]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 03:37:19 +0000
From:   Liu Ying <victor.liu@nxp.com>
To:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     andrzej.hajda@intel.com, neil.armstrong@linaro.org,
        rfoss@kernel.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com,
        alexander.stein@ew.tq-group.com, sam@ravnborg.org,
        jagan@amarulasolutions.com, yannick.fertre@foss.st.com,
        raphael.gallais-pou@foss.st.com, philippe.cornu@foss.st.com,
        hjc@rock-chips.com, heiko@sntech.de, zyw@rock-chips.com
Subject: [PATCH v3 RESEND 5/9] drm/bridge: synopsys: dw-mipi-dsi: Use pixel clock rate to calculate lbcc
Date:   Mon, 21 Aug 2023 11:40:04 +0800
Message-Id: <20230821034008.3876938-6-victor.liu@nxp.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20230821034008.3876938-1-victor.liu@nxp.com>
References: <20230821034008.3876938-1-victor.liu@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2P153CA0025.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:190::12) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|PA4PR04MB7758:EE_
X-MS-Office365-Filtering-Correlation-Id: 428b9b25-ff19-4948-97db-08dba1f7ec33
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0VmOAg3eF2xiA1uMsC2eLmplwrz3gseWo+fEn2OPiveXNmXl0jeDGJ2p4jQBASakFURE9x9sMpS8Ss4nf9ym/sSmTlbty+iGn8/7kd4GhSp/V42VMAL8sqQU3W7xwkwBvo3IxYQQNbHQdY5BfHMazJnJWSrZlmet3iRiVwa61CxiZvMAnePgIosy6sUBPpwdnOFxjRX9UGhc5ReertLo9PNyKvC+CcKzozGrXSYLaOL+R5bwPO3XJOOpQIHr89S41ifsp8VDrp1NM87+Mr0UulyAToDkb26Ds8v/daY3rikRCbpZzkrxurL8WSVqtNeLyL3Rqov1F4V+N6/I0TjyULFXUzGvxdSSN441J4qL+Eel4rG+88/UeQnoOmDsfF7wC7AYkWE/iVZJ4YZ4BBXHuO6PRk8IjduG8ZR+NVQjgZ5fJdiuTq4eXojKheOyQvNhC4m+XUTmVn2TBN5eBWF5iO9ESrFNf5XNtA/zgIiPShjwOi6/8V+O3Y7YlMVwyVHD0xStJlSvJIzBUrCoTfyHzxFQrTxBlbnxM0mka42uWG5IzQZJC9W7hJ910GUalcnHtXmVohqtq3LJtgAMcrXH0WyH3iWaHLMsigocP5s4K5M=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(39860400002)(136003)(396003)(366004)(346002)(186009)(1800799009)(451199024)(1076003)(2616005)(26005)(6512007)(38350700002)(38100700002)(36756003)(86362001)(83380400001)(316002)(8936002)(8676002)(41300700001)(66476007)(66556008)(66946007)(2906002)(4326008)(478600001)(7416002)(6506007)(6486002)(6666004)(52116002)(5660300002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5Ulmu0H02kUC9wRzbE0zp/VPpucS82o8vtV6DFvSXr9CYiPHB/7/ttNmIJv3?=
 =?us-ascii?Q?slYnDiee8rN+gt9MnydYbf8uZWDa7JI/nUTDUI8WxGfhQfgbL4FzdFA34UrU?=
 =?us-ascii?Q?9NqrFyQFtZkxNr6QxX5sdR+y1v7Wdl8088dozL/o00oxCgQuC/n66Fiu/DQG?=
 =?us-ascii?Q?XNx7gcTK0eWGyBFShf6ZztmlOJXTBZENkS5Q1+MCC6o8fErhFZ8gR9qnMN/5?=
 =?us-ascii?Q?SrVRiCcwneAQSOE+TaL9ifR/PD5nJR6jFm1OAYAIY/R3jgwLxm8XpcDATGBE?=
 =?us-ascii?Q?SVTdhdKhm3mM5n0jXA42pa8lqU8wZ7WTQQjM/SuLrYFIcc7JAambDTFhM6or?=
 =?us-ascii?Q?wP2dUfOaFWSzRtML6BF9y9oFcrOT5myEdSIhBu01ObCCg7G+FykI5/uXZ+Iq?=
 =?us-ascii?Q?5juKORBjcSFqX5/awKNMJ0LANt/wwyw6KikQWQmC9aV26fNkxz1HeqsXXDGE?=
 =?us-ascii?Q?opRTAkC6NZYCNwYx11cIVr8DyU0MGlhWyr0lUo0Xa5OSlReWw+t64v65i/T5?=
 =?us-ascii?Q?oWz/s96Gi9SJturQRXfjxZ+vDmr1BLwMx1XouGZrkpO86BQv8zo/HGAo4IFT?=
 =?us-ascii?Q?ePrtEx11Owr/w8KNW41yrREsT67uQoShx0F7+uxKrHDkWI0/a6EnSXmg+ZGz?=
 =?us-ascii?Q?RyoJgJHvQ7FVberyEZvXd7e9+hAdkXBQ96o1o7F//JIAjBig2TFwhJWK8jJp?=
 =?us-ascii?Q?jsJ6NLHh50oB+jhZgkF4PrGmwuZbjmS/u442E/YVBCMVZXDMIukssj8BFL34?=
 =?us-ascii?Q?AHLQv+89hc5HnwLY0BuPI3SA4RJsxB8F+J5FUEV7b4Q8EUQ6uKxeVLCQDwQK?=
 =?us-ascii?Q?kJQfVuFU84SFMdxzOstohwngMcPeETq3vJV4OQ+FyNmxwVM2WtgA4KygG5gj?=
 =?us-ascii?Q?f249kYzEgCu+MIuAIreqK3nyTQXrZCaXLiS5VzympiE2ZhbNThm2CUdP8kYV?=
 =?us-ascii?Q?v5WQ25avR4q5U66+tHuo+NoSVZy599hZVgNLOd/009t1J3MOOoEJZ7ZvXcSk?=
 =?us-ascii?Q?VUdct+0/I/dqjTXpQGCUOQV7HvUPGqx7dnM4RnUpBWKjloG8G0L14aOsCrkM?=
 =?us-ascii?Q?8aB/1U8tIGjp9Q4arBffD7N3ihv8naKepm7Pu7QdkuwYT8r16ExRAsXr5N3u?=
 =?us-ascii?Q?X4h+OcC1Pwrc0P9AnVPkNac1HtmVSvNkiorMEztCLv8dLiD23xUvdw6mj40k?=
 =?us-ascii?Q?e2tJhtCxlhRwceNUeEfRWvpXXzZ2WAI/rcIDsAuXOOIp77TstweSa3qvSymR?=
 =?us-ascii?Q?TW6N7x92FRq0e2yQX0LQrw2dzCI8bZWRnNB6fEAZHcTYNzzI/pFTyZWLEz+H?=
 =?us-ascii?Q?QuEKoG4WA9TQFkQczEicWrLErlxYMBO4HSZoUXX33dj02F08shxunPzF8xVY?=
 =?us-ascii?Q?D5JonnllshW6IlfBcjtiRvHYX+0XZPgtOjCa6pgtC4Ji79iMhXJEiRdzQD5K?=
 =?us-ascii?Q?jxMkLoVSY8jegmrsD7iVKiIsCPiRVOdwKTlE0YnL4OvSmgIIrK2o7J6+WWqf?=
 =?us-ascii?Q?cpu+pQEY/n7N0JWg+5hKlmv9itJt4SJUEZcmc5G3aYit6l1IlaQ2K4huiwHG?=
 =?us-ascii?Q?a15DbGTx03gBCvlSD1JxbiPHdjg+rWqvap/CXLJN?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 428b9b25-ff19-4948-97db-08dba1f7ec33
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 03:37:19.7272
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hr0NeE8D4joKbFbdQy0qr1//K1j6sEQVeJAmfnDLy2gDUMeXEPFH2Zj9FSfLoilMnOuROHfOHLoC5zJ4/+7nxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7758
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To get better accuration, use pixel clock rate to calculate lbcc instead of
lane_mbps since the pixel clock rate is in KHz while lane_mbps is in MHz.
Without this, distorted image can be seen on a HDMI monitor connected with
i.MX93 11x11 EVK through ADV7535 DSI to HDMI bridge in 1920x1080p@60 video
mode.

Signed-off-by: Liu Ying <victor.liu@nxp.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
---
v2->v3:
* Add Neil's R-b tag from v1.

v1->v2:
* No change.

 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index b2da803c9de7..18e7d64b0216 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -12,6 +12,7 @@
 #include <linux/component.h>
 #include <linux/debugfs.h>
 #include <linux/iopoll.h>
+#include <linux/math64.h>
 #include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/platform_device.h>
@@ -764,8 +765,15 @@ static u32 dw_mipi_dsi_get_hcomponent_lbcc(struct dw_mipi_dsi *dsi,
 					   u32 hcomponent)
 {
 	u32 frac, lbcc;
+	int bpp;
 
-	lbcc = hcomponent * dsi->lane_mbps * MSEC_PER_SEC / 8;
+	bpp = mipi_dsi_pixel_format_to_bpp(dsi->format);
+	if (bpp < 0) {
+		dev_err(dsi->dev, "failed to get bpp\n");
+		return 0;
+	}
+
+	lbcc = div_u64((u64)hcomponent * mode->clock * bpp, dsi->lanes * 8);
 
 	frac = lbcc % mode->clock;
 	lbcc = lbcc / mode->clock;
-- 
2.37.1

