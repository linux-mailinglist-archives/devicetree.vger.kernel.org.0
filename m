Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 380BB77195F
	for <lists+devicetree@lfdr.de>; Mon,  7 Aug 2023 07:22:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229952AbjHGFWO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Aug 2023 01:22:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229716AbjHGFWM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Aug 2023 01:22:12 -0400
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2083.outbound.protection.outlook.com [40.107.22.83])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3592170B
        for <devicetree@vger.kernel.org>; Sun,  6 Aug 2023 22:22:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xxj84PKW2oIczMMrRlQ2dEr0101++3qv6ThRH0HFk6DyJXzFFiMRWGHrkevSMzxdKVQ5p58TSeOM8lkn0GdygiiZf4hSGooj8aEv4TxraEwdLJrOkGhRMM/x19Jkf3o8aH7Ux0quCHmGDCPNKvj4/NdXol+V7C+gvQnvExeZRkZ/IcnUpIpc5+Q+QhvifdXRFjVMjwEdk3ZAQHg09EgEX9FRTmck8rwrM8QU90J8OGTygglevnpyFtWql4TqCGJBsT3UKIk5wzwDdSvcKhHiSDzMBnpRW75H7pJM0PT0pp7j0ii+uMwRvwJb7qgvvNtxR/3LLWzBJEbCy3cZWP+LVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HviIkpnOLXPijI+yHIE9CMnfmFAZqe/94FMKZnsVQWI=;
 b=RhqrP4fj8AEcpfGHdIOO1NphU+mKIVVmM2IxEBllKzdJrzTHToXMx8aPSwsrIhwxGzlFdTL3oLuz0QPCEZIIleaknODY/hIQWIWF/oB/1hJcCKrMrYm/KT42R6zRMCEuahVdn8OdgSouh5pTWhZa1ee1PKuuJOPyHrTAzzoZInocZ6kaOBPrAnT8qD9yn9qHrLbWvX0AhdgEAwubff3rswQM2X+iLo9y03in3Z2zqbQWTmkhNCqKJG9jrT4SVsbVLTBqBjkTp1xOLtHwyR3IdscsaphBDHgiLzekDKA/6hJV3bfXSyMjx4rIFFIyWIwRtlQy+zcGRbMEdfMp1SbVIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HviIkpnOLXPijI+yHIE9CMnfmFAZqe/94FMKZnsVQWI=;
 b=SMRsJNC5zsdBM4IfmTn7/CxFxJaj/kd0PQF5fvX0O4d7jULaa9+86d7eWH94Pl3fHosofW+szMmHpRhOmnM7Lam0u5zgh4mMP3dlOzU9Os2D7ULDiI5e2VqDFEVDENWu81dZ0LPg5XMQYNPKkPM+GV7OQpZ/JPpkkJGvFHN0A68=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by PA4PR04MB9390.eurprd04.prod.outlook.com (2603:10a6:102:2a9::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.25; Mon, 7 Aug
 2023 05:22:08 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::9018:e395:332c:e24b]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::9018:e395:332c:e24b%4]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 05:22:08 +0000
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
Subject: [PATCH v3 3/9] drm/bridge: synopsys: dw-mipi-dsi: Force input bus flags
Date:   Mon,  7 Aug 2023 13:26:02 +0800
Message-Id: <20230807052608.3038698-4-victor.liu@nxp.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20230807052608.3038698-1-victor.liu@nxp.com>
References: <20230807052608.3038698-1-victor.liu@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR01CA0006.apcprd01.prod.exchangelabs.com
 (2603:1096:4:191::14) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|PA4PR04MB9390:EE_
X-MS-Office365-Filtering-Correlation-Id: dd7446db-1d5c-4dd6-6e76-08db97063eb7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gKcKTPkV5I4ugsDLEBMd2W3kALaPmgDRIT4L/6OXexRMbmwACmE+yyGJrO14PMVRYETEFfbVIkh2rM6k3lTs667PBpKzOb+wm5pBbGKg0wLaP8ngaPEzyLjKB3v4T/jXwKo5SM8ppCGjCkULODDUahJUI+eKm3eT08pvLLFw0FKBUI7JwH8bl5qtJKEk63JIdoBw63SWAp/EJ134+EvKjKyxr9Z2J46cAU1yIE45pMz5LVPXWc1T1MbAjFrZql+GhnS561yCUwsf08cDYa/Y/Ehiaw6B5C/bpbcDZfAbeHYt6HJybuoVK/pzWeatiwSKK5lhpMqeFpVInl59/bYz1fSL4CnpUOAvn6SOg95KOBU4iXdlFzn37VFxgpnbMENwlnYrOIt3a6efArF1Ro2cen9JXxNKBfHAmBodtfDXeVdjbrW41iwMLKfGYwVPc/9p1ZmNNhasyRzuwheBpiPc32fJioNzheD3U6bdIuEO9wur/DSN/HlO8pwiTz1GV58e9Ixij60eXmTtuZ6vmfbUbGseRcV05xhhTZvQF7nREsJlHsqPqn4ZND+CaznxtXJtLy5IsW3PmCqD8Km0uUDwCj2Ye9Ppo6q7qAgTaSUvL14YEIEqNw6xS7do5+4Mq738
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(39860400002)(376002)(366004)(396003)(346002)(451199021)(1800799003)(186006)(2616005)(6486002)(52116002)(6666004)(6512007)(478600001)(86362001)(26005)(36756003)(1076003)(6506007)(41300700001)(316002)(8936002)(5660300002)(8676002)(7416002)(38350700002)(4326008)(2906002)(66946007)(66556008)(66476007)(38100700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?a0H1NRZMmH28puT8xHmaTlYU9GcXSsLTSLmBf8BZkGMqFysQCF5Kb96Q/449?=
 =?us-ascii?Q?DUtOmvRejMP+8CuLKap8rkrvIda5piKR05AuRZvqiEaRrrinHhmqbX4a2Wxc?=
 =?us-ascii?Q?CyldQB0zfbbvdSZKx5tevYFGeoB9wmEsFUrYLWS/AnHSEKqK0ScP7TqrBXdk?=
 =?us-ascii?Q?qClICEpFDEAdZp1FXbH4x6MoQQmIECwb1debF0HpcG/7KyxH67cfxMOqZKlx?=
 =?us-ascii?Q?ejpIlxobWt+bFvSOXbsiftVaxlbC8qNQgrfCsf0iRWw7S4RCHGHCfBUmSVsk?=
 =?us-ascii?Q?LQmGl5qdQ1gSRzFYsf3mDDiY9kEPqP02GceHR3W3qH1ZjejhCt01VNqT6QN+?=
 =?us-ascii?Q?/jDggmAlstJkXQJT2G3PcxC6bo3sSYm7cYXQBCLIaA6D0HtNfNoIgJUefP2W?=
 =?us-ascii?Q?AEM19avkV5tpkgM0j8q60RWub5ino8anS/eokX2I3iysgQm5vi89AiWJXTvT?=
 =?us-ascii?Q?jcuBfdpJbzsf44Uq19Y5ukWM5dXZahiFMABUsXHGPRxGHJ+maH2O5bbIb2ak?=
 =?us-ascii?Q?XbIY13EliknGlMRq4C93sz+lTH3IODM8pMUeD4/AMdohGLTsvzJ/odYW5rzy?=
 =?us-ascii?Q?0QooOomdmLB7mzMOz5WXm2Dht6SsFImd/TnUs5GdaRSHMPn/Q5yLuxp8ogsn?=
 =?us-ascii?Q?u5VnJ0UK0O0ayJeT6gA7k19oJ8qvSuBJmrQ8VBuvenL5uzIZKIecCkuEeIe/?=
 =?us-ascii?Q?tFQs6B4y046Zj2Hhe5QBsPfu62HEpamY5L7SH8wIaoQyPQhZKwshCmTeeOdY?=
 =?us-ascii?Q?48S/WkAhRRIfL0KsLs6IDREp2JCv1JbHavTBVsxayFrYbDVZHqaC92h+KqWg?=
 =?us-ascii?Q?931aTDsGxcy1zexGzt85YssR3wjWiBBLPl5PjSmQ80vhYAXXUNEnXk8K6g3s?=
 =?us-ascii?Q?Xjldk7BtH8PfJVD7gd9lp+mmUBc3pCje1vpxirrR++7josNd6Ixe3GEmeCGr?=
 =?us-ascii?Q?Y4m1MW6bJaLHH27Ht91RfCtJiPMVPWTtyT3/kNjcs2W7X+e7EAUYr60WGVVS?=
 =?us-ascii?Q?+LhDXEYLB5VbpPFzStcuphYXFjSY8OwnsknNktr3ypRs7uz1qmQI67Tmxc5p?=
 =?us-ascii?Q?6JhDDqb/cQ15zLv7x9c6zKYaJuZi1l2tb0SztgqjF9RAhgpbzFRe8f5ksyxJ?=
 =?us-ascii?Q?VNBi4zYplb2U9p88Zkl0+Qtm/bQi00fMDSQRkYZ9qaZBfBCFo0lbDGGnGdPm?=
 =?us-ascii?Q?Usz1Qml1j78eDBiCL1HtihBkJqs9+0qQxYp6W2LU+Lbbax4vPnWc3wvlIKAW?=
 =?us-ascii?Q?V6gTimxTeBYToi7AiK2qHS/CQl6n8boq7ngJFIcnaulqAUjES5ad4+/GhMrb?=
 =?us-ascii?Q?LrpuzGFT4PA5yDxgsDA0JFKG1UeS/qSEa1kc1txaRrI1nb5w1x3EOG1yPDh7?=
 =?us-ascii?Q?2sKuXyw+KkgPl2AfUvQzTRG2mr+u/pMp19mXU6HWWrc2hHJ+046EecsERndK?=
 =?us-ascii?Q?8DnyGhMHp5AmuyDuN2L+jbWjGlYaCjkvQ5XF4n2wx1E5Edu8mkDZlXrf5wG8?=
 =?us-ascii?Q?e2WBUlvunMfWS3eLq7B0iXRb0HDg77ogIAmZvHIFXoBf2QamRh2moovYWZT3?=
 =?us-ascii?Q?q0SDj0FXW5KVlNP1DcsJBTt/RILICjEHxyNjKMLS?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd7446db-1d5c-4dd6-6e76-08db97063eb7
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2023 05:22:08.3106
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uNq0YassAHSpF7VKDB6xQJtkUDVxdO07Ek7CCA8HeguhzdvlwD7qygYjru9dE7IURztWepDkwqJg0Hathw7gMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB9390
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DATAEN_ACTIVE_LOW bit in DSI_DPI_CFG_POL register is set to zero,
so set the DRM_BUS_FLAG_DE_HIGH flag in input_bus_cfg.flags.  It appears
that the DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE flag also makes sense, so
set it in input_bus_cfg.flags too.  With this patch, the flags set by
drm_atomic_bridge_propagate_bus_flags() are overridden (see comment in
that function) in case any downstream bridges propagates invalid flags
to this bridge.  A real problematic case is to connect a RM67191 MIPI
DSI panel whose driver sets DRM_BUS_FLAG_DE_LOW and
DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE bus flags.

Signed-off-by: Liu Ying <victor.liu@nxp.com>
---
v1->v3:
* No change.

 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index 8580b8a97fb1..8cd89a63b5f2 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -23,6 +23,7 @@
 #include <drm/bridge/dw_mipi_dsi.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
+#include <drm/drm_connector.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_modes.h>
@@ -565,6 +566,17 @@ dw_mipi_dsi_bridge_atomic_get_input_bus_fmts(struct drm_bridge *bridge,
 	return input_fmts;
 }
 
+static int dw_mipi_dsi_bridge_atomic_check(struct drm_bridge *bridge,
+					   struct drm_bridge_state *bridge_state,
+					   struct drm_crtc_state *crtc_state,
+					   struct drm_connector_state *conn_state)
+{
+	bridge_state->input_bus_cfg.flags =
+		DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE;
+
+	return 0;
+}
+
 static void dw_mipi_dsi_video_mode_config(struct dw_mipi_dsi *dsi)
 {
 	u32 val;
@@ -1033,6 +1045,7 @@ static const struct drm_bridge_funcs dw_mipi_dsi_bridge_funcs = {
 	.atomic_duplicate_state	= drm_atomic_helper_bridge_duplicate_state,
 	.atomic_destroy_state	= drm_atomic_helper_bridge_destroy_state,
 	.atomic_get_input_bus_fmts = dw_mipi_dsi_bridge_atomic_get_input_bus_fmts,
+	.atomic_check		= dw_mipi_dsi_bridge_atomic_check,
 	.atomic_reset		= drm_atomic_helper_bridge_reset,
 	.atomic_enable		= dw_mipi_dsi_bridge_atomic_enable,
 	.atomic_post_disable	= dw_mipi_dsi_bridge_post_atomic_disable,
-- 
2.37.1

