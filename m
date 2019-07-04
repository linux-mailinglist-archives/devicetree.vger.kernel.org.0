Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8A3DE5F923
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2019 15:30:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727092AbfGDNaS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Jul 2019 09:30:18 -0400
Received: from 3.mo5.mail-out.ovh.net ([46.105.40.108]:34385 "EHLO
        3.mo5.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727093AbfGDNaS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Jul 2019 09:30:18 -0400
X-Greylist: delayed 7805 seconds by postgrey-1.27 at vger.kernel.org; Thu, 04 Jul 2019 09:30:17 EDT
Received: from player698.ha.ovh.net (unknown [10.109.160.12])
        by mo5.mail-out.ovh.net (Postfix) with ESMTP id CC4792427E7
        for <devicetree@vger.kernel.org>; Thu,  4 Jul 2019 13:01:29 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr [90.126.248.179])
        (Authenticated sender: sebastien.szymanski@armadeus.com)
        by player698.ha.ovh.net (Postfix) with ESMTPSA id 8525378DC2D5;
        Thu,  4 Jul 2019 11:01:17 +0000 (UTC)
From:   =?UTF-8?q?S=C3=A9bastien=20Szymanski?= 
        <sebastien.szymanski@armadeus.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?q?S=C3=A9bastien=20Szymanski?= 
        <sebastien.szymanski@armadeus.com>
Subject: [PATCH 1/1] ARM: dts: imx6ul: fix clock frequency property name of I2C buses
Date:   Thu,  4 Jul 2019 13:00:53 +0200
Message-Id: <20190704110053.19028-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 15891232762363794563
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrfedvgdefjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A few boards set clock frequency of their I2C buses with
"clock_frequency" property. The right property is "clock-frequency".

Signed-off-by: Sébastien Szymanski <sebastien.szymanski@armadeus.com>
---
 arch/arm/boot/dts/imx6ul-14x14-evk.dtsi  | 2 +-
 arch/arm/boot/dts/imx6ul-geam.dts        | 2 +-
 arch/arm/boot/dts/imx6ul-isiot.dtsi      | 2 +-
 arch/arm/boot/dts/imx6ul-pico-hobbit.dts | 2 +-
 arch/arm/boot/dts/imx6ul-pico-pi.dts     | 4 ++--
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
index 9207d5d071f1..d556f7c541ce 100644
--- a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
+++ b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
@@ -112,7 +112,7 @@
 };
 
 &i2c2 {
-	clock_frequency = <100000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/imx6ul-geam.dts b/arch/arm/boot/dts/imx6ul-geam.dts
index bc77f26a2f1d..6157a058feec 100644
--- a/arch/arm/boot/dts/imx6ul-geam.dts
+++ b/arch/arm/boot/dts/imx6ul-geam.dts
@@ -156,7 +156,7 @@
 };
 
 &i2c2 {
-	clock_frequency = <100000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/imx6ul-isiot.dtsi b/arch/arm/boot/dts/imx6ul-isiot.dtsi
index 213e802bf35c..23e6e2e7ace9 100644
--- a/arch/arm/boot/dts/imx6ul-isiot.dtsi
+++ b/arch/arm/boot/dts/imx6ul-isiot.dtsi
@@ -148,7 +148,7 @@
 };
 
 &i2c2 {
-	clock_frequency = <100000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/imx6ul-pico-hobbit.dts b/arch/arm/boot/dts/imx6ul-pico-hobbit.dts
index 39eeeddac39e..09f7ffa9ad8c 100644
--- a/arch/arm/boot/dts/imx6ul-pico-hobbit.dts
+++ b/arch/arm/boot/dts/imx6ul-pico-hobbit.dts
@@ -43,7 +43,7 @@
 };
 
 &i2c2 {
-	clock_frequency = <100000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/imx6ul-pico-pi.dts b/arch/arm/boot/dts/imx6ul-pico-pi.dts
index de07357b27fc..6cd7d5877d20 100644
--- a/arch/arm/boot/dts/imx6ul-pico-pi.dts
+++ b/arch/arm/boot/dts/imx6ul-pico-pi.dts
@@ -43,7 +43,7 @@
 };
 
 &i2c2 {
-	clock_frequency = <100000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
@@ -58,7 +58,7 @@
 };
 
 &i2c3 {
-	clock_frequency = <100000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c3>;
 	status = "okay";
-- 
2.21.0

