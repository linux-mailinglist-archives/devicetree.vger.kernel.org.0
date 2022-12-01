Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FE0463E687
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 01:31:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229461AbiLAAbX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 19:31:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229516AbiLAAbW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 19:31:22 -0500
Received: from finn.localdomain (finn.gateworks.com [108.161.129.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1938610E
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 16:31:22 -0800 (PST)
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139] helo=tharvey.pdc.gateworks.com)
        by finn.localdomain with esmtp (Exim 4.93)
        (envelope-from <tharvey@gateworks.com>)
        id 1p0XTs-0017NA-1q; Thu, 01 Dec 2022 00:31:12 +0000
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
Subject: [PATCH 1/2] ARM: dts: imx6qdl-gw5904: add internal mdio nodes
Date:   Wed, 30 Nov 2022 16:31:08 -0800
Message-Id: <20221201003109.448693-1-tharvey@gateworks.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Complete the switch definition by adding the internal mdio nodes.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 arch/arm/boot/dts/imx6qdl-gw5904.dtsi | 35 +++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-gw5904.dtsi b/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
index 612b6e068e28..08463e65dca3 100644
--- a/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
@@ -212,6 +212,27 @@ switch@0 {
 			compatible = "marvell,mv88e6085";
 			reg = <0>;
 
+			mdio {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				sw_phy0: ethernet-phy@0 {
+					reg = <0x0>;
+				};
+
+				sw_phy1: ethernet-phy@1 {
+					reg = <0x1>;
+				};
+
+				sw_phy2: ethernet-phy@2 {
+					reg = <0x2>;
+				};
+
+				sw_phy3: ethernet-phy@3 {
+					reg = <0x3>;
+				};
+			};
+
 			ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
@@ -219,27 +240,41 @@ ports {
 				port@0 {
 					reg = <0>;
 					label = "lan4";
+					phy-handle = <&sw_phy0>;
+					phy-mode = "internal";
 				};
 
 				port@1 {
 					reg = <1>;
 					label = "lan3";
+					phy-handle = <&sw_phy1>;
+					phy-mode = "internal";
 				};
 
 				port@2 {
 					reg = <2>;
 					label = "lan2";
+					phy-handle = <&sw_phy2>;
+					phy-mode = "internal";
 				};
 
 				port@3 {
 					reg = <3>;
 					label = "lan1";
+					phy-handle = <&sw_phy3>;
+					phy-mode = "internal";
 				};
 
 				port@5 {
 					reg = <5>;
 					label = "cpu";
 					ethernet = <&fec>;
+					phy-mode = "rgmii-id";
+
+					fixed-link {
+						speed = <1000>;
+						full-duplex;
+					};
 				};
 			};
 		};
-- 
2.25.1

