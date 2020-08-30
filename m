Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA18625702B
	for <lists+devicetree@lfdr.de>; Sun, 30 Aug 2020 21:34:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726155AbgH3TeF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Aug 2020 15:34:05 -0400
Received: from mout.kundenserver.de ([212.227.17.24]:43887 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726150AbgH3TeD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Aug 2020 15:34:03 -0400
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MMnnm-1jvtdg04oO-00IiNX; Sun, 30 Aug 2020 21:33:56 +0200
From:   Adrian Schmutzler <freifunk@adrianschmutzler.de>
To:     Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: keystone: replace status value "ok" by "okay"
Date:   Sun, 30 Aug 2020 21:32:49 +0200
Message-Id: <20200830193249.21526-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:TDyLsDFXG0TCIirzFPX542KseELh+4Kn1dn3sw31jDGVehalMHK
 rnurePHATcPjeWlYszNLPDCJ/ov8y4tAowilMBEmIUyByGzF5AJ3RuXqh+DozEzZ7pZ1rRD
 plye/4/M3dp0cclRwv01BJHUiXn3nu+snmBZcxgcYoXXb8BBQMJ+ew4eLQFAQLrmS6xnInH
 DChJgfX7By4TR4srdkXyA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BdnXlKfQWA8=:09thwm72UbBC6ukePWGAmE
 ivYYaNDstf5R+9I9+T/FQqqChXpaeGod5O4khO+h21pk7LbvssCCl8CYCDLwd/yUWUAIkUC4E
 RAqZE17SBxcuhCkLRJ0O5gwdXh1woCPH5xI8e2xOPA/migl4EKWQLX6cTmddbHMwI9fU+q0mC
 X8gH3L13TqpTXIRTr7sSmM1IjQ9/kQGI4YUd157vO8e/PvmS1G1ThifjsNA14uPSL8XR8sBFg
 k2u3n/J2dt1WfQlW8gL41zvbk/pGnnbg5l/EBwlFekh8v+qSRF3nVzdVvTohq9l5686Id637r
 EVagG3tDHnHTip/sxFx2NK2gJWGg+lAlP9Cp3wIvTC5T6p97vjJvrp99iU0+e6tDfBqOiJcvO
 vLWE/N8xILjRQ0FF0zDTiNn3z6EitGQ5z+lbNbyTCq2qhMJK16HAG1EGOAn8GfvvNj/jrXRkY
 4LaWjwJ8+s2U3a/pHXHtvjz/Q2aINwJ91Qr8BUjIlA5Y1xYMCCjGawpJBOBZmt4cTAN5kp0O0
 hPQcvzMw8IXemfwHt15l0D2WXaCo2sKGf2PYi0FAHG0wYlzp+PSJ6Zi2I2qyKyH47OuTbOwr+
 7AH8/WS7Agpx/nh+/j41JpDuttd2//V/7buwbSPMv4bXzl7DUg64uW3saBE81EBUA/j165JXh
 jLWx4qWqTRmGk9plQDEgwDOA1A5j8/5B6M3mmrBO49GPg4eYHqZi4v1y//DofWyNZp6dLYG6T
 /NgU9IsMieYRm2T+yCUb/ROIWkDM8ZmurskwJ5zhBlRYac/7o3sJbXsoRamtC51gkRwRpzoOu
 WywQLE1uUO4yHfom4/CYt8ogj12j9TvaLEJ73gpiqH+wxUNiYeOMoCmIwG/XVEW4kLvQUKBRN
 fyT2TuGDoVH7glultlvw==
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While the DT parser recognizes "ok" as a valid value for the
"status" property, it is actually mentioned nowhere. Use the
proper value "okay" instead, as done in the majority of files
already.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 arch/arm/boot/dts/keystone-k2e-evm.dts  | 2 +-
 arch/arm/boot/dts/keystone-k2g-evm.dts  | 2 +-
 arch/arm/boot/dts/keystone-k2hk-evm.dts | 2 +-
 arch/arm/boot/dts/keystone-k2l-evm.dts  | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/keystone-k2e-evm.dts b/arch/arm/boot/dts/keystone-k2e-evm.dts
index 66fec5f5d081..acac242ebdf7 100644
--- a/arch/arm/boot/dts/keystone-k2e-evm.dts
+++ b/arch/arm/boot/dts/keystone-k2e-evm.dts
@@ -159,7 +159,7 @@
 };
 
 &mdio {
-	status = "ok";
+	status = "okay";
 	ethphy0: ethernet-phy@0 {
 		compatible = "marvell,88E1514", "marvell,88E1510", "ethernet-phy-ieee802.3-c22";
 		reg = <0>;
diff --git a/arch/arm/boot/dts/keystone-k2g-evm.dts b/arch/arm/boot/dts/keystone-k2g-evm.dts
index 8b3d64c913d8..a11457c7fc88 100644
--- a/arch/arm/boot/dts/keystone-k2g-evm.dts
+++ b/arch/arm/boot/dts/keystone-k2g-evm.dts
@@ -449,7 +449,7 @@
 &dss {
 	pinctrl-names = "default";
 	pinctrl-0 = <&vout_pins>;
-	status = "ok";
+	status = "okay";
 
 	port {
 		dpi_out: endpoint {
diff --git a/arch/arm/boot/dts/keystone-k2hk-evm.dts b/arch/arm/boot/dts/keystone-k2hk-evm.dts
index ad4e22afe133..5e85f000acc3 100644
--- a/arch/arm/boot/dts/keystone-k2hk-evm.dts
+++ b/arch/arm/boot/dts/keystone-k2hk-evm.dts
@@ -183,7 +183,7 @@
 };
 
 &mdio {
-	status = "ok";
+	status = "okay";
 	ethphy0: ethernet-phy@0 {
 		compatible = "marvell,88E1111", "ethernet-phy-ieee802.3-c22";
 		reg = <0>;
diff --git a/arch/arm/boot/dts/keystone-k2l-evm.dts b/arch/arm/boot/dts/keystone-k2l-evm.dts
index e200533d26a4..a6cbff4cfe20 100644
--- a/arch/arm/boot/dts/keystone-k2l-evm.dts
+++ b/arch/arm/boot/dts/keystone-k2l-evm.dts
@@ -132,7 +132,7 @@
 };
 
 &mdio {
-	status = "ok";
+	status = "okay";
 	ethphy0: ethernet-phy@0 {
 		compatible = "marvell,88E1514", "marvell,88E1510", "ethernet-phy-ieee802.3-c22";
 		reg = <0>;
-- 
2.20.1

