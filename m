Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DA4D0DFC45
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2019 05:47:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730370AbfJVDr1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Oct 2019 23:47:27 -0400
Received: from mail.kernel.org ([198.145.29.99]:59212 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730084AbfJVDr1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 21 Oct 2019 23:47:27 -0400
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com [70.114.128.244])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id D148520659;
        Tue, 22 Oct 2019 03:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1571716047;
        bh=ds7psSxIIlIrK3y1oh6ABP6ZlZjg4cASFL3Vo5Wi4xc=;
        h=From:To:Cc:Subject:Date:From;
        b=wh7UpRpqokFpFEAdB7dIJPj6yPt4zP+D155iVyIi3MpJtsA9VDl67Z1O25VwscCqm
         YjC4LjwKLunC/GCee/vLg7WmMa6+g7mJjyQu4N2xprmPQmYGaNr6qc4b0MnPbT3hZM
         BtLr3eCGpmhVZFWoA7Kjo/84OJ5e6ky9DakDCSjw=
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH] arm64: agilex: enable USB and LEDs on agilex devkit
Date:   Mon, 21 Oct 2019 22:47:17 -0500
Message-Id: <20191022034717.25351-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable USB on the Agilex devkit. Also the Agilex devkit will use the
same daughter card that is used on Stratix10, thus it map the same
LEDs and GPIOs.

pushbutton PB_SW0 = gpio1.io4
pushbutton PB_SW1 = gpio1.io5
LED HPS_LED0      = gpio1.io20
LED HPS_LED1      = gpio1.io19
LED HPS_LED2      = gpio1.io21

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 .../boot/dts/intel/socfpga_agilex_socdk.dts   | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
index 866205ac7d51..e794a12ba7c5 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
@@ -18,6 +18,24 @@
 		stdout-path = "serial0:115200n8";
 	};
 
+	leds {
+		compatible = "gpio-leds";
+		hps0 {
+			label = "hps_led0";
+			gpios = <&portb 20 GPIO_ACTIVE_HIGH>;
+		};
+
+		hps1 {
+			label = "hps_led1";
+			gpios = <&portb 19 GPIO_ACTIVE_HIGH>;
+		};
+
+		hps2 {
+			label = "hps_led2";
+			gpios = <&portb 21 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
 	memory {
 		device_type = "memory";
 		/* We expect the bootloader to fill in the reg */
@@ -70,6 +88,11 @@
 	status = "okay";
 };
 
+&usb0 {
+	status = "okay";
+	disable-over-current;
+};
+
 &watchdog0 {
 	status = "okay";
 };
-- 
2.20.0

