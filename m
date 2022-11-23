Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7A7D634E4F
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 04:24:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235519AbiKWDYj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 22:24:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235516AbiKWDYi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 22:24:38 -0500
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17B6BB70F3
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 19:24:36 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AN3OSYn065690;
        Tue, 22 Nov 2022 21:24:28 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1669173868;
        bh=lSlFyACc8pnTPbW9h+gaanz6fodidSpFFxONniXYeQQ=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=MHzPdIci5j3GrThJzOryoajN9ewLE8QzTkUp6003239IU5dEvIZFZIgSxq1/Ym7Bm
         1ruq9QTCAydczSLp8MeyELVl+pBxZnyS/BtXiEvWXhVWyML69ye2aPk8mcSEUxP20y
         muVKNdbw0IjRVa+2MDMy99Q548dXRFcIrWvjm6DQ=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AN3OS8c072007
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 22 Nov 2022 21:24:28 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Tue, 22
 Nov 2022 21:24:27 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Tue, 22 Nov 2022 21:24:27 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2AN3OOHc012283;
        Tue, 22 Nov 2022 21:24:26 -0600
From:   Matt Ranostay <mranostay@ti.com>
To:     <r-gunasekaran@ti.com>, <rogerq@kernel.org>, <vkoul@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <vigneshr@ti.com>
CC:     <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Matt Ranostay <mranostay@ti.com>
Subject: [PATCH v2 2/2] phy: ti: phy-j721e-wiz: add j721s2-wiz-10g module support
Date:   Tue, 22 Nov 2022 19:24:13 -0800
Message-ID: <20221123032413.1193961-3-mranostay@ti.com>
X-Mailer: git-send-email 2.38.GIT
In-Reply-To: <20221123032413.1193961-1-mranostay@ti.com>
References: <20221123032413.1193961-1-mranostay@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for j721s2-wiz-10g device which is similar to j721e-wiz-10g but
uses clock-names interface versus explicitly defining clock nodes within
device tree node.

Signed-off-by: Matt Ranostay <mranostay@ti.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 141b51af4427..ddce5ef7711c 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -322,6 +322,7 @@ enum wiz_type {
 	AM64_WIZ_10G,
 	J7200_WIZ_10G,  /* J7200 SR2.0 */
 	J784S4_WIZ_10G,
+	J721S2_WIZ_10G,
 };
 
 struct wiz_data {
@@ -1000,6 +1001,7 @@ static void wiz_clock_cleanup(struct wiz *wiz, struct device_node *node)
 	case AM64_WIZ_10G:
 	case J7200_WIZ_10G:
 	case J784S4_WIZ_10G:
+	case J721S2_WIZ_10G:
 		of_clk_del_provider(dev->of_node);
 		return;
 	default:
@@ -1132,6 +1134,7 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 	case AM64_WIZ_10G:
 	case J7200_WIZ_10G:
 	case J784S4_WIZ_10G:
+	case J721S2_WIZ_10G:
 		ret = wiz_clock_register(wiz);
 		if (ret)
 			dev_err(dev, "Failed to register wiz clocks\n");
@@ -1214,6 +1217,7 @@ static int wiz_phy_fullrt_div(struct wiz *wiz, int lane)
 		break;
 	case J721E_WIZ_10G:
 	case J7200_WIZ_10G:
+	case J721S2_WIZ_10G:
 		if (wiz->lane_phy_type[lane] == PHY_TYPE_SGMII)
 			return regmap_field_write(wiz->p0_fullrt_div[lane], 0x2);
 		break;
@@ -1318,6 +1322,15 @@ static struct wiz_data j784s4_10g_data = {
 	.clk_div_sel_num = WIZ_DIV_NUM_CLOCKS_10G,
 };
 
+static struct wiz_data j721s2_10g_data = {
+	.type = J721S2_WIZ_10G,
+	.pll0_refclk_mux_sel = &pll0_refclk_mux_sel,
+	.pll1_refclk_mux_sel = &pll1_refclk_mux_sel,
+	.refclk_dig_sel = &refclk_dig_sel_10g,
+	.clk_mux_sel = clk_mux_sel_10g,
+	.clk_div_sel_num = WIZ_DIV_NUM_CLOCKS_10G,
+};
+
 static const struct of_device_id wiz_id_table[] = {
 	{
 		.compatible = "ti,j721e-wiz-16g", .data = &j721e_16g_data,
@@ -1334,6 +1347,9 @@ static const struct of_device_id wiz_id_table[] = {
 	{
 		.compatible = "ti,j784s4-wiz-10g", .data = &j784s4_10g_data,
 	},
+	{
+		.compatible = "ti,j721s2-wiz-10g", .data = &j721s2_10g_data,
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, wiz_id_table);
-- 
2.38.GIT

