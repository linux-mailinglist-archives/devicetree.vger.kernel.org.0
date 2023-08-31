Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D3F278F273
	for <lists+devicetree@lfdr.de>; Thu, 31 Aug 2023 20:20:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346941AbjHaSUv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Aug 2023 14:20:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236642AbjHaSUu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Aug 2023 14:20:50 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70BFE10C7
        for <devicetree@vger.kernel.org>; Thu, 31 Aug 2023 11:20:37 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 9A469865A0;
        Thu, 31 Aug 2023 20:20:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1693506036;
        bh=LQjoJlbD7Jzr0Ccd41bjLscaGn/tN5jliWbkbVo1IFw=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=w7W6ZHXO9YRs937iC1x4KyMhTpTO/gvxnc14s/RFkoc9ilObJEAAiCLxfxpc+Pz7p
         6FuRwHta3S8qk3NCCn3YiHJ1kKMK5tgtu+91o3FSXjJVi6LfG/+FywNFxEGoQLMx5U
         xghmYfdd3IwqH8c4VzUhj0E15bnKuGH91W/Onoz7gYpKhh81ivSak9oyHHWKbCg/uk
         ANjxVZrJU41Nd+K4hxpZiiOnTnum6hGW483d2DGTkcHhvJvuQ0T4FCbP0K7U/DsvSz
         b9rrmEeRArFfPBOQAgVRNEIkHK7wt5swho1/Oe8sAJG1sFWvT9tS5UpJijCWQNoMGW
         5Tf5hjbe3cmFQ==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Magnus Damm <magnus.damm@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 2/4] arm64: dts: imx8mp: Fix property indent on DH i.MX8M Plus DHCOM PDK3
Date:   Thu, 31 Aug 2023 20:20:18 +0200
Message-Id: <20230831182020.154863-2-marex@denx.de>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230831182020.154863-1-marex@denx.de>
References: <20230831182020.154863-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix indent to use tab indent. No functional change.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Magnus Damm <magnus.damm@gmail.com>
Cc: Marek Vasut <marex@denx.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
index 31d85d5871c91..5d1eb3767bd34 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
@@ -225,10 +225,10 @@ ptn5150_out_ep: endpoint {
 			};
 
 			power-sensor@40 {
-			    compatible = "ti,ina238";
-			    reg = <0x40>;
-			    shunt-resistor = <20000>;	/* 0.02 R */
-			    ti,shunt-gain = <1>;	/* Drop cca. 40mV */
+				compatible = "ti,ina238";
+				reg = <0x40>;
+				shunt-resistor = <20000>;	/* 0.02 R */
+				ti,shunt-gain = <1>;	/* Drop cca. 40mV */
 			};
 
 			eeprom_board: eeprom@54 {
-- 
2.40.1

