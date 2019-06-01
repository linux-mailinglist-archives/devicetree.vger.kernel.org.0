Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E5C4B319FC
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2019 09:07:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726058AbfFAHHc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Jun 2019 03:07:32 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:46926 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725928AbfFAHHc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Jun 2019 03:07:32 -0400
Received: by mail-wr1-f65.google.com with SMTP id n4so2620821wrw.13
        for <devicetree@vger.kernel.org>; Sat, 01 Jun 2019 00:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9lL5CgHcd0LZEFcnEjtQYPA7xSFuJCxrXyXWXhxW8WE=;
        b=JhWaX8UQaa8+V7uFIGcC9hxXJeyEEsg+W5+B5NXAVFuxgzgfgvnpt+Fc4NtYUjUvhq
         Mg2J6I+odS0v3LTRy6lbJr3bTKMD9V+O/JXMT8G8avwjjme03qZCPTv/N8SBwuHVFJ9w
         NEQ/2pkLBPbDrE/63TFN5SvAMEwHUUwxWC2hgTJ1AOKtVscYg1g5YHXyd+HWUGjxZMSB
         6uC5V7SQa5mv7lK/aikG5MA8jZQ4DNxB276V7qCv58sLoR2IRIc2xwEGHuPNCGLTBa7o
         jBtQ4YpcjzX/fs8ZEt2C67YF426DIWVMhOvVL1cy/+JTFobBj1A8r4X79lvRUENgM4k9
         0Tfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9lL5CgHcd0LZEFcnEjtQYPA7xSFuJCxrXyXWXhxW8WE=;
        b=uMoYqK70sYGhe4qgUg74kI2MKh8/02K75ZGfQPkziDvNhEliODobTLoBxAkFMmweD0
         Ga8AXN7d/Sxhfay/Ykp/A/G1SGJDfIycMOHJELht6a8LvM/dAOkYCfTwFG26RyOagxbB
         R/QNcVSUITLqOEb+el2AmoxDPtf+6zliNRcSXAGHgDJwT04277Hzv7H520c7VktaQRkp
         yEv1RZS72St0bvPxSMlww1MdXkAcKtbUStnfljXYO76lhnagXwR99Z7GmlnBAsx3M+dz
         cpQbTC2XrVdmCMeJ4rGY5eXtCDmcMlcD82JtQ+4jBRb/wuYqIyQ+N7EWOaKLX+023UI9
         uoSA==
X-Gm-Message-State: APjAAAWnRTTg7sSkc/YSbr7YUZYj4/gqjNydGE/bgd+bCM2PQbuKPjD6
        pcRMfyBlTTzMnCxyoORzxfA=
X-Google-Smtp-Source: APXvYqzWHYyI7f4522H/ds8l8XyFO1Cbr+RerwEo87fol1T4saiJ3SHofTlPq5DOiurs4uLMNYmsFQ==
X-Received: by 2002:adf:e945:: with SMTP id m5mr9269179wrn.90.1559372850859;
        Sat, 01 Jun 2019 00:07:30 -0700 (PDT)
Received: from morpheus.roving-it.com.com (2.e.6.5.c.a.a.1.a.8.0.3.1.e.3.c.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:c3e1:308a:1aac:56e2])
        by smtp.googlemail.com with ESMTPSA id h8sm19008382wmf.5.2019.06.01.00.07.29
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sat, 01 Jun 2019 00:07:30 -0700 (PDT)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 3/3] ARM: dts: imx6sx-udoo-neo: add bluetooth config to uart3
Date:   Sat,  1 Jun 2019 08:07:18 +0100
Message-Id: <20190601070718.26971-4-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190601070718.26971-1-pbrobinson@gmail.com>
References: <20190601070718.26971-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This updates the WL1831 bluetooth to use the serial serdev driver
interface.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../arm/boot/dts/imx6sx-udoo-neo-extended.dts |  4 ++++
 arch/arm/boot/dts/imx6sx-udoo-neo-full.dts    |  4 ++++
 arch/arm/boot/dts/imx6sx-udoo-neo.dtsi        | 24 ++++++++-----------
 3 files changed, 18 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts b/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
index 04a9f8780b8c..5c50d44eb8d8 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
@@ -20,3 +20,7 @@
 &i2c4 { /* Onboard Motion sensors */
 	status = "okay";
 };
+
+&uart3 { /* Bluetooth */
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts b/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
index 3cc6b0231ff6..ba051a755177 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
@@ -35,3 +35,7 @@
 &i2c4 { /* Onboard Motion sensors */
 	status = "okay";
 };
+
+&uart3 { /* Bluetooth */
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi b/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
index 26373e3f3afd..f35c3af43780 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
@@ -70,18 +70,6 @@
 		startup-delay-us = <70000>;
 		enable-active-high;
 	};
-
-	reg_bt: regulator-bt {
-		compatible = "regulator-fixed";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_bt_reg>;
-		enable-active-high;
-		gpio = <&gpio2 17 GPIO_ACTIVE_HIGH>;
-		regulator-name = "bt_reg";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		regulator-always-on;
-	};
 };
 
 &fec1 {
@@ -343,11 +331,19 @@
 	status = "disabled";
 };
 
-&uart3 { /* Bluetooth */
+&uart3 { /* Bluetooth - only on Extended/Full versions */
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart3>;
 	uart-has-rtscts;
-	status = "okay";
+	status = "disabled";
+
+	bluetooth {
+		compatible = "ti,wl1831-st";
+		enable-gpios = <&gpio2 17 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_bt_reg>;
+		max-speed = <921600>;
+	};
 };
 
 /* Arduino serial */
-- 
2.21.0

