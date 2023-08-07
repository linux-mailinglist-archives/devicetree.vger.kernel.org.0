Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49AEC771961
	for <lists+devicetree@lfdr.de>; Mon,  7 Aug 2023 07:22:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229716AbjHGFWV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Aug 2023 01:22:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229590AbjHGFWT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Aug 2023 01:22:19 -0400
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (mail-am7eur03on2086.outbound.protection.outlook.com [40.107.105.86])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77FDD1703
        for <devicetree@vger.kernel.org>; Sun,  6 Aug 2023 22:22:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=POg7JdcHjbwCODhY7RpBLkN0otMZSR5m7en9jlzaaP37HJESBVM9AOmIGJGcEYvjf7scNVQ7yBpMIuLI6j+02k9V/udtZxgwsvPsJ+IUx++0NHhqRrhx7sAB5MqWgXRiX/0dghWrFHYXzCA/OYSJ0IbMPObi19/Eg/UyMkZTbmBk+UqFJ7+NC5UD7luyMyhXWEP2RQNOT6ossFtvNlXK3SvfS7B2H3A/cOHs4hztFAWQ5ZxKT4UFB5Fl8DUNG7wW4uNapHitpTgM3TbyQDCBAHfGU3JYdgRAEdKBmqBvKGW3Q8q+wBLW99Cy1PTKoMPC2lfXs3yjzBnQQszif2MSMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6nwUekE8dpN/HuRxa08DtlQXYJTUZgFn3pGifrVCQAc=;
 b=aNhukd+kM5exEopHVxX4shZ37kqrCNkKjiwEgTlb1dHlr1X/y9qYkxcqRFk1O5psy2a+uPsdlZze4cbCc+8ZqT6q3P956Te9HuzBLLqmdbsqQ7LScWA7qL7txxrripXba9crGQCpF1DTpY1HVvEUVwzFozSXLUiiksvWpQqOaUtC6/jueQrys1oNe9lgQyq1z1KujbCWhYvxFp1CadURILRKckF2kIRUKHZWMTqVIvz7pSIF8M841sQSxHCLtQmLTiiLkG2qjI3VhRzOVL9m35Iz3i3i08oyLgfSB13ulnVGYw/eJ0D3s/d1+RwgPcM3nhFIA1zccWE6pEat4RcVWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6nwUekE8dpN/HuRxa08DtlQXYJTUZgFn3pGifrVCQAc=;
 b=Lrzpk8WTJ0LpPud3Z2r9yBtqOZ/VdubBFyQIa1ZDeiarjoI/xpXKapASC/AwOR32pL1RKl5gpzrjC/lMS1qecspuWO9rWZIhnNz9yrAs5kn8vk0LWCkg2ItxdnZTKtNHjE2V+e+PKhRYHUw9zLlm0unTe4kHB17s+9Xy1aKPt5c=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by PA4PR04MB9390.eurprd04.prod.outlook.com (2603:10a6:102:2a9::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.25; Mon, 7 Aug
 2023 05:22:16 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::9018:e395:332c:e24b]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::9018:e395:332c:e24b%4]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 05:22:15 +0000
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
Subject: [PATCH v3 4/9] drm/bridge: synopsys: dw-mipi-dsi: Add mode fixup support
Date:   Mon,  7 Aug 2023 13:26:03 +0800
Message-Id: <20230807052608.3038698-5-victor.liu@nxp.com>
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
X-MS-Office365-Filtering-Correlation-Id: 74b28467-c8c8-4ea4-1942-08db97064345
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t7ptWOq9/ZEK29E3oAkCbf0WZ4Q1i5KWQGmBDnV3l2hp66ZWEaG6fQT5dDZ3037oT6d8f/79GqlUlnznRA511frSyZhHXL5IRDyrZ5nI/Tn5F666xH3YCRjviduWTiFCy0yipBwu/LYf/oI+CzYY9UC33SJGRAG0aoNHfFLz0noChsrE+IaXMBTnhAjPiJPsG5pwUiI0XZ+v3NI/J9kACUk1s+WcEXzGC/J/EUM9A41y2SgFVrphyCGDcKRS8om4FLhvcR58bwPMsDrITDooTiaCiXWRN+1x4RJGWNVsh2nDjQ7Y2IpriFO11KMZuHXozQlszLafUoOqqVwUPGK34ryUBEwz5EE+YKBbhPgNKJfcj34OhHO8T9AJl27szjkQ1NQzeghc51i2q5k9zl53SILKj8b7Zrbnqe03e1dLwrjSLiS0P4TGTkV127hg2lhstCL/dSevDFw0yUn+rDJjfRuDN9y0K03kmlZIZNb5HpZ0ORlvgdNVma67Ngf8a61newp4/Vq+qQ0/qMk2MlECyLanD3JrDeBE6qnMjrC/ItZB6WO5SHk0V0zY5B0I+obHHCCt0YyoNygZtXlyGtuYxuJ5MwzFU4WJhxlcl4XHo3jSklXmcGMyKsXV9A/QyB1z
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(39860400002)(376002)(366004)(396003)(346002)(451199021)(1800799003)(186006)(2616005)(6486002)(52116002)(6666004)(6512007)(478600001)(86362001)(26005)(36756003)(1076003)(6506007)(41300700001)(316002)(8936002)(5660300002)(8676002)(7416002)(38350700002)(4326008)(2906002)(66946007)(66556008)(66476007)(38100700002)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/BCD8mgL/bQN32SgMXP3Q75ez8H4JAXoyRw5vjMqxUvQnGC5UEeHlQyV/Fif?=
 =?us-ascii?Q?HSkIsu4ghLi19yi1yvBwZyZWsVl6AkX97uC7d2hAa17t8bUf4FgQ6kWZqgUC?=
 =?us-ascii?Q?gVMwUNzB9CEG7fIRZXIyMukRj3KnYi4uPR4CXmiEqugSuqhXGJz+7yOeiot2?=
 =?us-ascii?Q?bdDj36GS3TIQAIS4AJRyT4lndermsTAn9pMaZxyZOlkBb1mEslWBPSstva2F?=
 =?us-ascii?Q?wM20Lu+1NyoEMqa6k7vzPcSB05WAMQhc62L0zP5Wa1eF9FnyoMWvqkERcYE+?=
 =?us-ascii?Q?gYbgrC2q49ssFuv0tbduF+RplN2R2MMeY3pLrCw7E2m20WvD46XcrH+SDTlr?=
 =?us-ascii?Q?9Jg5w0dBM/8YfXc5yNVOVb0n+AhQphkqWqVTGkM3MiupKOYi9rovDAblf406?=
 =?us-ascii?Q?uF0FwC0IlAO6CETfqKGjWQ1TEiLDZGxB7XiwjeUA9Y04sBdzkkje1JP5a6uT?=
 =?us-ascii?Q?IbIZVT+TxhcDnwxOzQniBBRi7+i33f3lX16BnVqNum8Q9xe/iLTaWAJBuGrn?=
 =?us-ascii?Q?YaQIBFBWDcOJZxv4wssik8+G5scuGq4QfQNOERmyz0leCVLpQRGi4y/DzaVX?=
 =?us-ascii?Q?zT25/y3ida9c3Uook26OuwCGqjkkRjHyMrdMYx6qGN94YWegyn6s046LEm/i?=
 =?us-ascii?Q?Vu+E55n8mbnz4iHcM71bWh4c4dWeYuQz6YEz8/Xy6aoFwFDggAjHjBbn4AQ9?=
 =?us-ascii?Q?wzr1LAVTgA/63BIiX3QuSJdtVhjgnlUX8mV9S7PBMgzZehsScw5xEpnnm25G?=
 =?us-ascii?Q?FKeMEXOh8lLsPMf1JP4XJNCPgx6SiD+ez5ZGme5ndgTj0WJY1en6hJ2OIoVp?=
 =?us-ascii?Q?Bi6S/aJxLfsKg/YuZ8ByeaQATDASzTrEXsBrxZ4WNq2R8pPKE4PKoB+TfYF2?=
 =?us-ascii?Q?VxMpSh6adG0FUci44rIxI4z8fO1NuqrNQ5PrfUrr8c4ClkDsOWMhyMsSXXr1?=
 =?us-ascii?Q?Xt3xRVB/eg5a9lAb/mpmOnSG8M9SdTlLhrEo6dSyDkRSLk3xT5ptgruYxNrW?=
 =?us-ascii?Q?e/r3rGXA+HNTnb0IE69qY8GvTDet1hm8+qxYW4fbGcp7YoC6dVpyX9K5SIkH?=
 =?us-ascii?Q?ZDK+L90tL1r9DWqGrftVByuX9y8gL3r74DCatCidQ83cKvtGXS12DLEsNOvP?=
 =?us-ascii?Q?u4anW9Knlm7hN7Jj67G/RR5/r6ZbwCElqZhjKJoUrO6e2pNaz5ExOnOAO65C?=
 =?us-ascii?Q?E/smt8RyKqpBVhnTU2/tcRtuXJxCmEnTgKj86PLI0c3022dCqHFTmEs8ZkPJ?=
 =?us-ascii?Q?dnj8L+XGvC9pYbdvIa7UplRU9EYJSi5wXg8KTcN7rudh+fq6EUuLIaAGrbf9?=
 =?us-ascii?Q?9d8Wa3WdlDsSBDCVA1TK7cxd3TzwB/hlJtZzXin8lOWxjLH81KldlhCRgQCS?=
 =?us-ascii?Q?W5EwagubCU38u9fueEEYNSr3MTAC0QP6+C3H4ElAkPAsTTgKr/qZ2X/J+WSs?=
 =?us-ascii?Q?Or31zmhiApTQhbp6Brff77W8PkjZ0UjgmK4fEEF+lR7CKZDWO1WjJjTj1yvb?=
 =?us-ascii?Q?XPBjBrmRzP/HOW7JHCj9SWt9cx4ntX3QEsCvhEiADEcl2iMb6ZgAW67+eLtS?=
 =?us-ascii?Q?3yovsA5TIRY4E9Nw6IKGQSbRmThR0+M5df058R03?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74b28467-c8c8-4ea4-1942-08db97064345
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2023 05:22:15.9278
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H5PDXDMq3asV0u8HUwDVSYtmJHPMeNYDhMUyRWWsrj/+yXAS8os3wqEVhBnmqKOjXPX9Vhi0ssUXZo+BTZKiDQ==
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

Vendor drivers may need to fixup mode due to pixel clock tree limitation,
so introduce the ->mode_fixup() callcack to struct dw_mipi_dsi_plat_data
and call it at atomic check stage if available.

Signed-off-by: Liu Ying <victor.liu@nxp.com>
---
v1->v3:
* No change.

 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 14 ++++++++++++++
 include/drm/bridge/dw_mipi_dsi.h              |  3 +++
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index 8cd89a63b5f2..c754d55f71d1 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -571,9 +571,23 @@ static int dw_mipi_dsi_bridge_atomic_check(struct drm_bridge *bridge,
 					   struct drm_crtc_state *crtc_state,
 					   struct drm_connector_state *conn_state)
 {
+	struct dw_mipi_dsi *dsi = bridge_to_dsi(bridge);
+	const struct dw_mipi_dsi_plat_data *pdata = dsi->plat_data;
+	bool ret;
+
 	bridge_state->input_bus_cfg.flags =
 		DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE;
 
+	if (pdata->mode_fixup) {
+		ret = pdata->mode_fixup(pdata->priv_data, &crtc_state->mode,
+					&crtc_state->adjusted_mode);
+		if (!ret) {
+			DRM_DEBUG_DRIVER("failed to fixup mode " DRM_MODE_FMT "\n",
+					 DRM_MODE_ARG(&crtc_state->mode));
+			return -EINVAL;
+		}
+	}
+
 	return 0;
 }
 
diff --git a/include/drm/bridge/dw_mipi_dsi.h b/include/drm/bridge/dw_mipi_dsi.h
index 246650f2814f..65d5e68065e3 100644
--- a/include/drm/bridge/dw_mipi_dsi.h
+++ b/include/drm/bridge/dw_mipi_dsi.h
@@ -59,6 +59,9 @@ struct dw_mipi_dsi_plat_data {
 					   unsigned long mode_flags,
 					   u32 lanes, u32 format);
 
+	bool (*mode_fixup)(void *priv_data, const struct drm_display_mode *mode,
+			   struct drm_display_mode *adjusted_mode);
+
 	u32 *(*get_input_bus_fmts)(void *priv_data,
 				   struct drm_bridge *bridge,
 				   struct drm_bridge_state *bridge_state,
-- 
2.37.1

