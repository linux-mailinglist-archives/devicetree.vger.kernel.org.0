Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E33916C0595
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 22:31:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229700AbjCSVbV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 17:31:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230412AbjCSVas (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 17:30:48 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 07A711E9E2
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 14:30:24 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 09653106F;
        Sun, 19 Mar 2023 14:30:36 -0700 (PDT)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7770C3F67D;
        Sun, 19 Mar 2023 14:29:50 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Chen-Yu Tsai <wens@csie.org>
Cc:     linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, Icenowy Zheng <uwu@icenowy.me>
Subject: [PATCH v6 2/6] ARM: dts: suniv: licheepi-nano: enable USB
Date:   Sun, 19 Mar 2023 21:29:32 +0000
Message-Id: <20230319212936.26649-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.35.7
In-Reply-To: <20230319212936.26649-1-andre.przywara@arm.com>
References: <20230319212936.26649-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Icenowy Zheng <uwu@icenowy.me>

Lichee Pi Nano has a Micro-USB connector, with its D+, D- pins connected
to the USB pins of the SoC and ID pin connected to PE2 GPIO.

Enable the USB functionality.

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../arm/boot/dts/suniv-f1c100s-licheepi-nano.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/suniv-f1c100s-licheepi-nano.dts b/arch/arm/boot/dts/suniv-f1c100s-licheepi-nano.dts
index 04e59b8381cb8..43896723a994c 100644
--- a/arch/arm/boot/dts/suniv-f1c100s-licheepi-nano.dts
+++ b/arch/arm/boot/dts/suniv-f1c100s-licheepi-nano.dts
@@ -6,6 +6,8 @@
 /dts-v1/;
 #include "suniv-f1c100s.dtsi"
 
+#include <dt-bindings/gpio/gpio.h>
+
 / {
 	model = "Lichee Pi Nano";
 	compatible = "licheepi,licheepi-nano", "allwinner,suniv-f1c100s";
@@ -50,8 +52,22 @@ flash@0 {
 	};
 };
 
+&otg_sram {
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_pe_pins>;
 	status = "okay";
 };
+
+&usb_otg {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&usbphy {
+	usb0_id_det-gpios = <&pio 4 2 GPIO_ACTIVE_HIGH>; /* PE2 */
+	status = "okay";
+};
-- 
2.35.7

