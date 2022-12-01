Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2913E63E686
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 01:31:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229532AbiLAAbX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 19:31:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbiLAAbW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 19:31:22 -0500
Received: from finn.localdomain (finn.gateworks.com [108.161.129.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10D859C
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 16:31:20 -0800 (PST)
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139] helo=tharvey.pdc.gateworks.com)
        by finn.localdomain with esmtp (Exim 4.93)
        (envelope-from <tharvey@gateworks.com>)
        id 1p0XTs-0017NA-Re; Thu, 01 Dec 2022 00:31:12 +0000
From:   Tim Harvey <tharvey@gateworks.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Vladimir Oltean <vladimir.oltean@nxp.com>
Cc:     Tim Harvey <tharvey@gateworks.com>
Subject: [PATCH 2/2] ARM: dts: imx6qdl-gw5904: add dt props for populating eth MAC addrs
Date:   Wed, 30 Nov 2022 16:31:09 -0800
Message-Id: <20221201003109.448693-2-tharvey@gateworks.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201003109.448693-1-tharvey@gateworks.com>
References: <20221201003109.448693-1-tharvey@gateworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device-tree props to allow boot firmware to populate MAC addresses.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 arch/arm/boot/dts/imx6qdl-gw5904.dtsi | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-gw5904.dtsi b/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
index 08463e65dca3..6596e8bd7e60 100644
--- a/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
@@ -52,6 +52,11 @@
 / {
 	/* these are used by bootloader for disabling nodes */
 	aliases {
+		ethernet0 = &fec;
+		ethernet1 = &lan1;
+		ethernet2 = &lan2;
+		ethernet3 = &lan3;
+		ethernet4 = &lan4;
 		led0 = &led0;
 		led1 = &led1;
 		led2 = &led2;
@@ -237,32 +242,36 @@ ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
-				port@0 {
+				lan4: port@0 {
 					reg = <0>;
 					label = "lan4";
 					phy-handle = <&sw_phy0>;
 					phy-mode = "internal";
+					local-mac-address = [00 00 00 00 00 00];
 				};
 
-				port@1 {
+				lan3: port@1 {
 					reg = <1>;
 					label = "lan3";
 					phy-handle = <&sw_phy1>;
 					phy-mode = "internal";
+					local-mac-address = [00 00 00 00 00 00];
 				};
 
-				port@2 {
+				lan2: port@2 {
 					reg = <2>;
 					label = "lan2";
 					phy-handle = <&sw_phy2>;
 					phy-mode = "internal";
+					local-mac-address = [00 00 00 00 00 00];
 				};
 
-				port@3 {
+				lan1: port@3 {
 					reg = <3>;
 					label = "lan1";
 					phy-handle = <&sw_phy3>;
 					phy-mode = "internal";
+					local-mac-address = [00 00 00 00 00 00];
 				};
 
 				port@5 {
-- 
2.25.1

