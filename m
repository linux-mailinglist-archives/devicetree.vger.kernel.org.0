Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 878335FFBDA
	for <lists+devicetree@lfdr.de>; Sat, 15 Oct 2022 22:11:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229594AbiJOULs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Oct 2022 16:11:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229666AbiJOULq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Oct 2022 16:11:46 -0400
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3672842AFC
        for <devicetree@vger.kernel.org>; Sat, 15 Oct 2022 13:11:45 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29FKBcLi097934;
        Sat, 15 Oct 2022 15:11:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1665864698;
        bh=AmGqfVhfyTJOrGbc3D1E6OPKuJNe0YkGpEBqdAYDZOQ=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=fd4MYacNPhuyJW5yVJUCwfNcB1lvf3kvVDzBAqVDlFt+KMAFd9ggyHiu8SlpWibTl
         wVG8Wp8Jd69TEZw0c7btWrk2JSWmwM1m8d9GNDuxB2DCKJ/QZEwacuwoZKH3ZgfkBp
         ZBn8Ovgc5Kku26KGUzB2orWZlU5kNKErDukdYlU4=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29FKBcrC085506
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Sat, 15 Oct 2022 15:11:38 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Sat, 15
 Oct 2022 15:11:37 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Sat, 15 Oct 2022 15:11:37 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29FKBZ1M064560;
        Sat, 15 Oct 2022 15:11:36 -0500
From:   Matt Ranostay <mranostay@ti.com>
To:     <vkoul@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <vigneshr@ti.com>
CC:     <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        Matt Ranostay <mranostay@ti.com>,
        Roger Quadros <rogerq@kernel.org>
Subject: [PATCH 2/2] phy: ti: phy-j721e-wiz: add j784s4-wiz-10g module support
Date:   Sat, 15 Oct 2022 13:11:23 -0700
Message-ID: <20221015201123.195477-3-mranostay@ti.com>
X-Mailer: git-send-email 2.38.0.rc0.52.gdda7228a83
In-Reply-To: <20221015201123.195477-1-mranostay@ti.com>
References: <20221015201123.195477-1-mranostay@ti.com>
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

Add support for j784s4-wiz-10g device which has two core reference
clocks (e.g core_ref_clk, core_ref1_clk) which requires an additional
mux selection option.

Acked-by: Roger Quadros <rogerq@kernel.org>
Signed-off-by: Matt Ranostay <mranostay@ti.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 41725c6bcdf6..141b51af4427 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -81,14 +81,20 @@ static const struct reg_field phy_reset_n = REG_FIELD(WIZ_SERDES_RST, 31, 31);
 static const struct reg_field phy_en_refclk = REG_FIELD(WIZ_SERDES_RST, 30, 30);
 static const struct reg_field pll1_refclk_mux_sel =
 					REG_FIELD(WIZ_SERDES_RST, 29, 29);
+static const struct reg_field pll1_refclk_mux_sel_2 =
+					REG_FIELD(WIZ_SERDES_RST, 22, 23);
 static const struct reg_field pll0_refclk_mux_sel =
 					REG_FIELD(WIZ_SERDES_RST, 28, 28);
+static const struct reg_field pll0_refclk_mux_sel_2 =
+					REG_FIELD(WIZ_SERDES_RST, 28, 29);
 static const struct reg_field refclk_dig_sel_16g =
 					REG_FIELD(WIZ_SERDES_RST, 24, 25);
 static const struct reg_field refclk_dig_sel_10g =
 					REG_FIELD(WIZ_SERDES_RST, 24, 24);
 static const struct reg_field pma_cmn_refclk_int_mode =
 					REG_FIELD(WIZ_SERDES_TOP_CTRL, 28, 29);
+static const struct reg_field pma_cmn_refclk1_int_mode =
+					REG_FIELD(WIZ_SERDES_TOP_CTRL, 20, 21);
 static const struct reg_field pma_cmn_refclk_mode =
 					REG_FIELD(WIZ_SERDES_TOP_CTRL, 30, 31);
 static const struct reg_field pma_cmn_refclk_dig_div =
@@ -315,6 +321,7 @@ enum wiz_type {
 	J721E_WIZ_10G,	/* Also for J7200 SR1.0 */
 	AM64_WIZ_10G,
 	J7200_WIZ_10G,  /* J7200 SR2.0 */
+	J784S4_WIZ_10G,
 };
 
 struct wiz_data {
@@ -992,6 +999,7 @@ static void wiz_clock_cleanup(struct wiz *wiz, struct device_node *node)
 	switch (wiz->type) {
 	case AM64_WIZ_10G:
 	case J7200_WIZ_10G:
+	case J784S4_WIZ_10G:
 		of_clk_del_provider(dev->of_node);
 		return;
 	default:
@@ -1123,6 +1131,7 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 	switch (wiz->type) {
 	case AM64_WIZ_10G:
 	case J7200_WIZ_10G:
+	case J784S4_WIZ_10G:
 		ret = wiz_clock_register(wiz);
 		if (ret)
 			dev_err(dev, "Failed to register wiz clocks\n");
@@ -1299,6 +1308,16 @@ static struct wiz_data j7200_pg2_10g_data = {
 	.clk_div_sel_num = WIZ_DIV_NUM_CLOCKS_10G,
 };
 
+static struct wiz_data j784s4_10g_data = {
+	.type = J784S4_WIZ_10G,
+	.pll0_refclk_mux_sel = &pll0_refclk_mux_sel_2,
+	.pll1_refclk_mux_sel = &pll1_refclk_mux_sel_2,
+	.refclk_dig_sel = &refclk_dig_sel_16g,
+	.pma_cmn_refclk1_int_mode = &pma_cmn_refclk1_int_mode,
+	.clk_mux_sel = clk_mux_sel_10g_2_refclk,
+	.clk_div_sel_num = WIZ_DIV_NUM_CLOCKS_10G,
+};
+
 static const struct of_device_id wiz_id_table[] = {
 	{
 		.compatible = "ti,j721e-wiz-16g", .data = &j721e_16g_data,
@@ -1312,6 +1331,9 @@ static const struct of_device_id wiz_id_table[] = {
 	{
 		.compatible = "ti,j7200-wiz-10g", .data = &j7200_pg2_10g_data,
 	},
+	{
+		.compatible = "ti,j784s4-wiz-10g", .data = &j784s4_10g_data,
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, wiz_id_table);
-- 
2.38.0.rc0.52.gdda7228a83

