Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B65B63C2EE
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 15:44:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235728AbiK2Ooj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 09:44:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230391AbiK2Ooj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 09:44:39 -0500
Received: from smtp-out-01.comm2000.it (smtp-out-01.comm2000.it [212.97.32.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6957550D7C
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 06:44:38 -0800 (PST)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: francesco@dolcini.it)
        by smtp-out-01.comm2000.it (Postfix) with ESMTPSA id 5CADC844911;
        Tue, 29 Nov 2022 15:44:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
        s=mailsrv; t=1669733075;
        bh=DJETYg4L4LGpD3CLysXDZ7uf+K13ie8KvyfwuJtKuBA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=eDf9QD91rTob6GJegpJ+77oqLFfAYHwYh2fj/8KtoGB6cjGegd7wg3rN16DW13OzV
         Jsdj7aYWFiSjnQB4MoU1FPbeC8O56dAFjsk9sLDbXmuccPAHvuU9E4n14d2xrjJSv2
         Z/YiKweHHeg+BuK/hdLqBIFYUVM6ONYSPcOiruD0xqYEzZ4biw8ewseE+wbZx2VTOd
         bbVx32PSqJ84OvdRCFWlOchy+qdCXPkeDxKNpZ8EnLb1eQVsDSfGRzhjtXnMhitG3x
         S8P8T6BweX5LuNCsKk3zEjKpU8CoDJ8zwdMAc9kkLJHtzMXl9OKdvO7J9lbXbS5GgR
         A9L2DF2R4Ra4A==
From:   Francesco Dolcini <francesco@dolcini.it>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Max Krummenacher <max.krummenacher@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, laurent.pinchart@ideasonboard.com,
        Stefan Eichenberger <stefan.eichenberger@toradex.com>,
        Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: [PATCH v2 2/2] arm64: dts: imx8mp-verdin: add dsi to lvds functionality
Date:   Tue, 29 Nov 2022 15:44:12 +0100
Message-Id: <20221129144412.37497-3-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129144412.37497-1-francesco@dolcini.it>
References: <20221129144412.37497-1-francesco@dolcini.it>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Max Krummenacher <max.krummenacher@toradex.com>

Add a panel-lvds node and use the correct dsi to lvds chip name.
Both to be later extended in a dt overlay according to the exact
board HW configuration.

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
index c9c64433cf70..aefe10de4778 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
@@ -72,6 +72,13 @@ hdmi_connector: hdmi-connector {
 		status = "disabled";
 	};
 
+	panel_lvds: panel-lvds {
+		compatible = "panel-lvds";
+		backlight = <&backlight>;
+		data-mapping = "vesa-24";
+		status = "disabled";
+	};
+
 	/* Carrier Board Supplies */
 	reg_1p8v: regulator-1p8v {
 		compatible = "regulator-fixed";
-- 
2.25.1

