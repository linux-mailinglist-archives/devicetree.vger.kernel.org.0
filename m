Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A30EE319FA
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2019 09:07:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726109AbfFAHHc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Jun 2019 03:07:32 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:55026 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726058AbfFAHHc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Jun 2019 03:07:32 -0400
Received: by mail-wm1-f68.google.com with SMTP id g135so4125826wme.4
        for <devicetree@vger.kernel.org>; Sat, 01 Jun 2019 00:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=J9T/H8O+Bo+86NWDkyKHynPMMBXWFWWk75NnIJsXS1M=;
        b=Bu9Q2cBIQQSskjlH4tHEeVo6UEq4/Ctril9JWNNojmlUJ7EQUywlhRMmRsZuVv82Ht
         Bu+/YPbHri0E806Jvhla1rOYpA4dReszJ5mp2gB7zczhTvh3uzdk05ixRCeIosjBmT9b
         cdqGX79BFnbSRNE9LLBSHofchHZFWheOXs/dVMxkaW4ZUaIPDwaZ+EgAzm0e/3nBIaD2
         8O/uqv+KN8YbMiuzsRe5MX8OtmerHJRSEH5lIblmHryin89t4XYE5l8mi+rtTrWwt2kn
         B6KyzyJeu3AY5Efp+6AWHTnDL2B3p7qiZxtk/5dgAazluOPIc9/qMKIoqvhUm//praAt
         D+zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=J9T/H8O+Bo+86NWDkyKHynPMMBXWFWWk75NnIJsXS1M=;
        b=AETYko/l6SQU/8Ohyiv4XWOdtKWy026VAjwuHsfLUJv1HdXIauiTJmh1KdBuZpmXBO
         xG7dpn8f36sGi6TGHAdx5IvM/lAd34X8MM7rgd63Z1ZHqO5nqhkr3W3kSRj0jLRKUFFv
         Ex4F9lhiwavmziV6hz4lWghVIvy6DJnrabZ/pEpUycBE8uS++AA8boS7P0JPQ8yf2gNP
         FT4U0YUDq1f1YPKTAu42RjSMuCJpNYH7EVIrwLIvDy35F1DlEUzLqdZyuxb8lLFi03D7
         svfhORFiEmht62m2hsK6QTpGFgSFnLUb0bb07iCZA+FO0MeimoU2WpV1AXeXadQF1fsk
         6poA==
X-Gm-Message-State: APjAAAX6dQClpgZMvGEwfTJFSbYg3229FNwN1WJBUf0JZevW5/UdEeIU
        3SqjdQ8PbEK+4QahGBXrPvY=
X-Google-Smtp-Source: APXvYqy2EBe2XAPiC7k++q1UMSmUfXIPBlRu+3RMG3Tc2OEWg2DOWrxOQLAEEjmn/gGI+ITGs3/XUA==
X-Received: by 2002:a05:600c:218d:: with SMTP id e13mr8057626wme.101.1559372849818;
        Sat, 01 Jun 2019 00:07:29 -0700 (PDT)
Received: from morpheus.roving-it.com.com (2.e.6.5.c.a.a.1.a.8.0.3.1.e.3.c.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:c3e1:308a:1aac:56e2])
        by smtp.googlemail.com with ESMTPSA id h8sm19008382wmf.5.2019.06.01.00.07.28
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sat, 01 Jun 2019 00:07:28 -0700 (PDT)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 2/3] ARM: dts: imx6sx-udoo-neo: enable i2c-2 and i2c-4 for onboard sensors
Date:   Sat,  1 Jun 2019 08:07:17 +0100
Message-Id: <20190601070718.26971-3-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190601070718.26971-1-pbrobinson@gmail.com>
References: <20190601070718.26971-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The i2c2 bus has a external plug which enables the easy connection of external
"bricks" with sensors of various kinds, while i2c4 on the Extended/Full boards
has a pair of on board motion sensors, accelerometer and magnetometer on one chip
and gyroscope on another so it makes sense to enable these i2c buses for use.
Tested on UDOO Neo Full.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>

--
v2: move i2c-4 core to imx6sx-udoo-neo.dtsi and just enable it on specific boards
---
 .../arm/boot/dts/imx6sx-udoo-neo-extended.dts |  4 +++
 arch/arm/boot/dts/imx6sx-udoo-neo-full.dts    |  4 +++
 arch/arm/boot/dts/imx6sx-udoo-neo.dtsi        | 26 +++++++++++++++++++
 3 files changed, 34 insertions(+)

diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts b/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
index c6005cd284be..04a9f8780b8c 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
@@ -16,3 +16,7 @@
 		reg = <0x80000000 0x40000000>;
 	};
 };
+
+&i2c4 { /* Onboard Motion sensors */
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts b/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
index ad8b8a663a70..3cc6b0231ff6 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
@@ -31,3 +31,7 @@
 		};
 	};
 };
+
+&i2c4 { /* Onboard Motion sensors */
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi b/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
index 386707c1bfe0..26373e3f3afd 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
@@ -188,6 +188,20 @@
 	};
 };
 
+&i2c2 { /* Brick snap in sensors connector */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	clock-frequency = <100000>;
+	status = "okay";
+};
+
+&i2c4 { /* Onboard Motion sensors */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	clock-frequency = <100000>;
+	status = "disabled";
+};
+
 &iomuxc {
 	pinctrl_bt_reg: btreggrp {
 		fsl,pins =
@@ -219,6 +233,18 @@
 			<MX6SX_PAD_GPIO1_IO01__I2C1_SDA		0x4001b8b1>;
 	};
 
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins =
+			<MX6SX_PAD_GPIO1_IO03__I2C2_SDA		0x4001b8b1>,
+			<MX6SX_PAD_GPIO1_IO02__I2C2_SCL		0x4001b8b1>;
+	};
+
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins =
+			<MX6SX_PAD_USB_H_DATA__I2C4_SDA		0x4001b8b1>,
+			<MX6SX_PAD_USB_H_STROBE__I2C4_SCL	0x4001b8b1>;
+	};
+
 	pinctrl_uart1: uart1grp {
 		fsl,pins =
 			<MX6SX_PAD_GPIO1_IO04__UART1_TX		0x1b0b1>,
-- 
2.21.0

