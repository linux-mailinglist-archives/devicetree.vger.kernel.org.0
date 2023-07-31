Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 357A976A36D
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 23:55:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231604AbjGaVzQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 17:55:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230266AbjGaVzP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 17:55:15 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E73DE7
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 14:55:14 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id DADD4982;
        Mon, 31 Jul 2023 23:54:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1690840450;
        bh=VW68c7LHYt5A4X71/eZ/VEWxBfzC2P5hQ+2/Jq5Gano=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=HGt0MaubyGxJF4et/25JR/fQ1E8BFPAXgjKBploaON8HI78eW6ivCbNATS26hw7qP
         fqn25hIOMyfpg9IicruS5iqy+lrjXGNWQsTn6bMiWZ2ryhn4nx+2RMTNhPWPRNvLUC
         iIHW8QQRGgNz0I43bULlmbpZIOquWW6t+jmqLIOY=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     linux-rpi-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Cyril Brulebois <kibi@debian.org>,
        Maxime Ripard <mripard@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Umang Jain <umang.jain@ideasonboard.com>
Subject: [PATCH v4 1/2] ARM: dts: bcm2711-rpi: Add pinctrl-based multiplexing for I2C0
Date:   Tue,  1 Aug 2023 00:55:14 +0300
Message-ID: <20230731215515.20682-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230731215515.20682-1-laurent.pinchart@ideasonboard.com>
References: <20230731215515.20682-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Uwe Kleine-König <uwe@kleine-koenig.org>

BCM2711-based Raspberry Pi boards (4B, CM4 and 400) multiplex the I2C0
controller over two sets of pins, GPIO0+1 and GPIO44+45. The former is
exposed on the 40-pin header, while the latter is used for the CSI and
DSI connectors.

Add a pinctrl-based I2C bus multiplexer to bcm2711-rpi.dtsi to model
this multiplexing. The two child buses are named i2c0_0 and i2c0_1.

Note that if you modified the dts before to add devices to the i2c bus
appearing on pins gpio0 + gpio1 (either directly in the dts or using an
overlay), you have to put these into the i2c0_0 node introduced here
now.

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v3:

- Split addition of the RTC to a separate patch
- Move the mux to bcm2711-rpi.dtsi
---
 arch/arm/boot/dts/bcm2711-rpi.dtsi | 31 ++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi.dtsi b/arch/arm/boot/dts/bcm2711-rpi.dtsi
index 5e95e2321218..7eb9f131cfd1 100644
--- a/arch/arm/boot/dts/bcm2711-rpi.dtsi
+++ b/arch/arm/boot/dts/bcm2711-rpi.dtsi
@@ -16,6 +16,32 @@ aliases {
 		pcie0 = &pcie0;
 		blconfig = &blconfig;
 	};
+
+	i2c0mux: i2c0mux {
+		compatible = "i2c-mux-pinctrl";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		i2c-parent = <&i2c0>;
+
+		pinctrl-names = "i2c0", "i2c0-vc";
+		pinctrl-0 = <&i2c0_gpio0>;
+		pinctrl-1 = <&i2c0_gpio44>;
+
+		status = "disabled";
+
+		i2c0_0: i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c0_1: i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
 };
 
 &firmware {
@@ -48,6 +74,11 @@ &hvs {
 	clocks = <&firmware_clocks 4>;
 };
 
+&i2c0 {
+	/delete-property/ pinctrl-names;
+	/delete-property/ pinctrl-0;
+};
+
 &rmem {
 	/*
 	 * RPi4's co-processor will copy the board's bootloader configuration
-- 
Regards,

Laurent Pinchart

