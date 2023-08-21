Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31DEA7821E1
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 05:36:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230221AbjHUDgy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Aug 2023 23:36:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232665AbjHUDgy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Aug 2023 23:36:54 -0400
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (mail-dbaeur03on2044.outbound.protection.outlook.com [40.107.104.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F3A4A1
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 20:36:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IdhnjfnCXoVYydT9ETAJMpifa3I2PKtLMJKtHed8+CqC9mgZmH/HBEeKN1FXi9V3c+K7TGwsO33hzulsRt/orASGj9mSW17vYkXnBoefxB7xR6m0IO0AwL0DEA93YeSpi8FV3ah1Sx8gw/FgzoLjnKRtQDMtfeMdAACbvJ6bQFveqz7/n/1CtcAZ8fTlnMaw47+4XHxtqEsi7bFIZWNSWojVoze00T6HfBgIFrImfn+Wgpwf8NstKT5aruuQTzQcyP+eob7SX0/PsJFcAbtVw5s+dMcKmdXtmJSeWsow+/+GJyjKxIhefwQHZbw0blp8H0Go3AWWP/ZMoxEe4j9IAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yc60TojKkm+EG/yrr5xESHmoBhVpoVUMN1IQ2c9MLKY=;
 b=E5030RfHOYe1I2AgS/RTqDqsxFD261QswQMUVBTqyDl9IHnTSIRTHBEseg1GJ+reVQPsHMBw0UyRl6cXpanE5XDR7lfPSuWN+ziD9KFn59k5t62CaEDanB0ht2xoZNZ+mMYm2POVKoCeW528mbCv1GtTPexTs0BK9rl/QIcLrMZHg9dRvERIYxgea+9O6jqRJXYY6nFZ712o4ikM3fq7ShL4cp15G/NNwuAkKN8U0MxfhMRT+eFowYZIoWaWx0HSapjGmNJoc/rvh2eQkTZLqEYJgk8eISMntOWCkw2Vz0BATS6+MW6nOoJ9J+k74kcuPxT6jlRjcjAAZ/Dx5mDx6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yc60TojKkm+EG/yrr5xESHmoBhVpoVUMN1IQ2c9MLKY=;
 b=BKFXi+VPLAT1Dj0n3SDWp188xohnhp7T9EEvpPS82DMEqkJjDu+qfk9APxRnoAwplnI/3YxVlWhVFeiQj5N+bfX0uyzEV5/3qgrqljZJvOaar+Vk9RidfXsxprlJ/n/PpdkRmcmxHM1D/o8CYOLc4Csv0f2OmHVY7wkJfJxHahc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by PA4PR04MB7758.eurprd04.prod.outlook.com (2603:10a6:102:c4::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Mon, 21 Aug
 2023 03:36:49 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::9018:e395:332c:e24b]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::9018:e395:332c:e24b%4]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 03:36:49 +0000
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
Subject: [PATCH v3 RESEND 1/9] drm/bridge: synopsys: dw-mipi-dsi: Add dw_mipi_dsi_get_bridge() helper
Date:   Mon, 21 Aug 2023 11:40:00 +0800
Message-Id: <20230821034008.3876938-2-victor.liu@nxp.com>
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
X-MS-Office365-Filtering-Correlation-Id: 321a1688-cc56-4618-a0f8-08dba1f7da4b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hugMRF/1SJ8l3zzqokBk/ePyERPfMPjJu28gYWeiR5fIMVw28Pnln1m5S60HO4UP/3bDA9M0DKyXqBki0tj0zmmWhZPzu2T8/ktKcw7qk4oXJzWB7ElsfX/pe0hMW32kmwqQRAH5CZZI1q9fPhDw7xYVJPQvBfVmDTZYq4sOvdWDC0Yr8jRVNjnKUQF1qXadKIa+RktuLg9DijfKaS/KiDWFQsMEFfd4Q6m3wALlXky3Y4pxJi0aLsA8mxJgQVpkPQl9VN7ONXdgbR3V3HxWfdeq7K5SpMlt+hD1yc3ae6TeRakieCLmZAYrY6q8TtjfZaEU6Zc+LCdmIoKhRzipZV7O/s+JJDV2qEpMqmcQxGkRdNWI6qLJsLiepfybmrCm0J6EjARHKvqo6R4iBTLz7KF7KgBkIMRzzWRLOr3GJQDLMU6I2txod8vzV7bRX+Oivl2p5e4pUkivXuFxcJMxFR59wMWEROoJNoE3mFmLVAMSGONePVac7+jtOQzXuPHR/xgHf4zRI96kjHuMeXRBH/Z0+PdzWofsHUbBbzImfb4x+rxvMZJei442JfHMfYLE2FXL5qhmGuTvvO+0umvWCek2AkrGFgBtozUIHhnFIzufyAPYrR0elu1QL9nZtC+v
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(39860400002)(136003)(396003)(366004)(346002)(186009)(1800799009)(451199024)(1076003)(2616005)(26005)(6512007)(38350700002)(38100700002)(36756003)(86362001)(316002)(8936002)(8676002)(41300700001)(66476007)(66556008)(66946007)(2906002)(4326008)(478600001)(7416002)(6506007)(6486002)(6666004)(52116002)(5660300002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rORPkrwB5t1oYnqZWVXao1euERUkOSbUdo6V7B3Ri0HyI92xI89rh8RCCcYN?=
 =?us-ascii?Q?EfQBT4OoTVJ2JRA/SCKIaqMeAQyfkFUvOLsh8RDDJT7rmSaafxR39pVIoEmB?=
 =?us-ascii?Q?w5kmldNoiP4okjpBhsYidc3BslGfBEOijg1sSW/Q8aU8ErK+L2mmImIUyuVM?=
 =?us-ascii?Q?rh8rYJugvsPmLKhYj15/Kl/+0je6YKLVnfbqfLLIf8H/P/sOU9TzznL1oYJN?=
 =?us-ascii?Q?nKXJA/T5zuBFmVMDd1n97ih6vWTuznoZPNyha5xcXJ8N2BVsoRWogxt88IZP?=
 =?us-ascii?Q?iTcV9/QiKCxGgQUow0edLNG+0vlNy6Z/n+j7q1op5iLtVS9UkN4H1NuVkNOP?=
 =?us-ascii?Q?f6Z4t/OdxEWpRfI3yAsNr0+wTN+VqhjIdIkBUlVy+BvmBcuH2zmSgf2MBHZX?=
 =?us-ascii?Q?zSX/NlBFNEle36GgAzNGuIv+JmOOaCOC8z8YHH72LujmYd2k5QxEtuoHcQAA?=
 =?us-ascii?Q?nonrN6SK7m6nmFf2jQ93mOmk1n4Whz5CztqNBxdoaXeHV0+K5Rjradgh9tq8?=
 =?us-ascii?Q?0MTU0RZpxJGaZVIdoMqHzKcgDN9Bxpini1vJodVcW2SdPX8bZ5x2vhR3hAAK?=
 =?us-ascii?Q?onbCtf37AIf5B7bznkyIIv4VJ2Vkzs/ON7cWUo3WI2KhKu8Ov4GP1s4FCbYP?=
 =?us-ascii?Q?ygwlmpza2a8ptwmVaP/a9y29niP2dCehF/d78vQWKI0M6D/hQLCgFsVvP6PG?=
 =?us-ascii?Q?nPD4yuxR7CAbPTr8/Xs7/vGjMFxQTGh3Jlx+Uw7uQKNrfj7IiHV6DNMA/Jm7?=
 =?us-ascii?Q?acj9HbsZFFe9dCUad7lLc4z9cxry8r9l2mmiqWkSJvRy0FWajUYNkeQgPySr?=
 =?us-ascii?Q?3rTbvu1yYBST+7a6a7yGlhVULJxeJpufYjnGfudoAm1ZDn6lsGLAwYzQDWTF?=
 =?us-ascii?Q?QM/O4bwFiSA3AJQ7eJf9AU58Sgf3nYtJ5mDxMFsZbnohUpk3S15b+QyRrTBF?=
 =?us-ascii?Q?WMCft7AliIw45MUpae1DzibNiMPETUK/aytrym+p1YT9WqPQvmTCoBAsPx3l?=
 =?us-ascii?Q?CUbrSQyxIcIZpXdc6VWJis3H0BC3FZD7JNUCsbzkQVD1QoQ1RM/OVqcPF7nq?=
 =?us-ascii?Q?eblgC66XC27f3tdh9a+ZBEx07m54tpbvpwdZExodWfeHOCesAOGmxZyPVaxR?=
 =?us-ascii?Q?trtW8OrDTh/5qr3dabgmwGO8fd/SP2QrMcZJ4pP3DPDVm29AdB+CO4LkcMox?=
 =?us-ascii?Q?T7dSIvXR8ZrwzkBIcPY/6HgpI5kdJVZU9MWDP5ipNvklYDqwGjUwkiej9jRM?=
 =?us-ascii?Q?uRQ7Vd66wmWTcw9UgpOIzZbET8RBJijIDmGMPsSVIDd1mVBUAKV1W+ffGiJo?=
 =?us-ascii?Q?WNYOBNN7aoMK/NMvMu7j/o7vAR5kYhPp5A/Xtk7KnWQsan8EIP4RjuY/u5a5?=
 =?us-ascii?Q?0FO6/r+5+qL/1HnpTnuJ7DF6y6LHUOBEbbN6Yo1kdA7elis/0FggYdeTb9Ma?=
 =?us-ascii?Q?/qT9LcVQebG209cL+NiFwZ5rjQ6ycpxPDqy/8qcUoo0N5ra55YDWfP/tstQd?=
 =?us-ascii?Q?A9au+5VP3HoX6whro4i+aqIzEFQhz2NVsGPcafuDkTK5xS7IWwlypjZMEize?=
 =?us-ascii?Q?hcpasQZtFEC+2mhvmoPTUI2kpz4lHcJfZaPtzIC/?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 321a1688-cc56-4618-a0f8-08dba1f7da4b
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 03:36:49.6828
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1cRgsS8TrLFqUiUQYy3o3Wsw/T6QoCed/YS7nKPHpIAKmYAJD0BWfFbXKWWL01WO3+9LLfw87AzBYcHyCw52gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7758
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add dw_mipi_dsi_get_bridge() helper so that it can be used by vendor
drivers which implement vendor specific extensions to Synopsys DW MIPI DSI.

Signed-off-by: Liu Ying <victor.liu@nxp.com>
---
v1->v3:
* No change.

 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 6 ++++++
 include/drm/bridge/dw_mipi_dsi.h              | 2 ++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index 04d4a1a10698..ba3cd2a3e339 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -1211,6 +1211,12 @@ void dw_mipi_dsi_set_slave(struct dw_mipi_dsi *dsi, struct dw_mipi_dsi *slave)
 }
 EXPORT_SYMBOL_GPL(dw_mipi_dsi_set_slave);
 
+struct drm_bridge *dw_mipi_dsi_get_bridge(struct dw_mipi_dsi *dsi)
+{
+	return &dsi->bridge;
+}
+EXPORT_SYMBOL_GPL(dw_mipi_dsi_get_bridge);
+
 /*
  * Probe/remove API, used from platforms based on the DRM bridge API.
  */
diff --git a/include/drm/bridge/dw_mipi_dsi.h b/include/drm/bridge/dw_mipi_dsi.h
index 5286a53a1875..f54621b17a69 100644
--- a/include/drm/bridge/dw_mipi_dsi.h
+++ b/include/drm/bridge/dw_mipi_dsi.h
@@ -11,6 +11,7 @@
 
 #include <linux/types.h>
 
+#include <drm/drm_bridge.h>
 #include <drm/drm_modes.h>
 
 struct drm_display_mode;
@@ -68,5 +69,6 @@ void dw_mipi_dsi_remove(struct dw_mipi_dsi *dsi);
 int dw_mipi_dsi_bind(struct dw_mipi_dsi *dsi, struct drm_encoder *encoder);
 void dw_mipi_dsi_unbind(struct dw_mipi_dsi *dsi);
 void dw_mipi_dsi_set_slave(struct dw_mipi_dsi *dsi, struct dw_mipi_dsi *slave);
+struct drm_bridge *dw_mipi_dsi_get_bridge(struct dw_mipi_dsi *dsi);
 
 #endif /* __DW_MIPI_DSI__ */
-- 
2.37.1

