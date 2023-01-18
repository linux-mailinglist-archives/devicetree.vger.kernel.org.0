Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF533671AFD
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 12:44:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229827AbjARLou (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 06:44:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229898AbjARLn6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 06:43:58 -0500
Received: from smtp-bc0c.mail.infomaniak.ch (smtp-bc0c.mail.infomaniak.ch [45.157.188.12])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FDC9689F7
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 03:03:08 -0800 (PST)
Received: from smtp-2-0001.mail.infomaniak.ch (unknown [10.5.36.108])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4NxjKC4t7WzMr8hc;
        Wed, 18 Jan 2023 11:53:03 +0100 (CET)
Received: from unknown by smtp-2-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4NxjKC0fXyzMpxwW;
        Wed, 18 Jan 2023 11:53:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=pschenker.ch;
        s=20220412; t=1674039183;
        bh=5xYLCetMGqkTkOYH9Rss/uAtdDJh1Jbj+W770F/N5yk=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=ysSIVeVcuXaf1ezB4JzMS+SJk/icq+BsbUzU8uknpRDpIygqRgihN6ljhtFm7JGBF
         GgcqoW6G3p4XZ5dv0XsGjWbkI3vrhmJRUXVVtu2k9wLNugilACw1aGo8h2E9gx7KYm
         M9Fnk6SFgZJYG2BoZ0ex+jffjoyLSg7JyKVIeQ/0=
From:   Philippe Schenker <dev@pschenker.ch>
To:     devicetree@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>,
        Philippe Schenker <philippe.schenker@toradex.com>,
        Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
        Fabio Estevam <festevam@gmail.com>,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: imx8mm-verdin-dev: Do not include dahlia dtsi
Date:   Wed, 18 Jan 2023 11:52:50 +0100
Message-Id: <20230118105251.6035-2-dev@pschenker.ch>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230118105251.6035-1-dev@pschenker.ch>
References: <20230118105251.6035-1-dev@pschenker.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Philippe Schenker <philippe.schenker@toradex.com>

Inheriting the dahlia devicetree leads to inheriting certain settings
for the audio-codec that are not correct and hence the dt schema check
failing.

Remove that include and put all nodes back that had been included.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

 .../boot/dts/freescale/imx8mm-verdin-dev.dtsi | 96 ++++++++++++++++++-
 1 file changed, 94 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-verdin-dev.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-verdin-dev.dtsi
index b2bcd2282170..3c4b8ca125e3 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-verdin-dev.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-verdin-dev.dtsi
@@ -3,8 +3,6 @@
  * Copyright 2022 Toradex
  */
 
-#include "imx8mm-verdin-dahlia.dtsi"
-
 / {
 	sound_card: sound-card {
 		compatible = "simple-audio-card";
@@ -42,27 +40,121 @@ simple-audio-card,cpu {
 	};
 };
 
+/* Verdin SPI_1 */
+&ecspi2 {
+	status = "okay";
+};
+
+/* EEPROM on display adapter boards */
+&eeprom_display_adapter {
+	status = "okay";
+};
+
+/* EEPROM on Verdin Development board */
+&eeprom_carrier_board {
+	status = "okay";
+};
+
+&fec1 {
+	status = "okay";
+};
+
+/* Verdin QSPI_1 */
+&flexspi {
+	status = "okay";
+};
+
+/* Current measurement into module VCC */
+&hwmon {
+	status = "okay";
+};
+
+&hwmon_temp {
+	vs-supply = <&reg_1p8v>;
+	status = "okay";
+};
+
+&i2c3 {
+	status = "okay";
+};
+
 &gpio_expander_21 {
 	status = "okay";
 };
 
 /* Verdin I2C_1 */
 &i2c4 {
+	status = "okay";
+
 	/* Audio Codec */
 	nau8822_1a: audio-codec@1a {
 		compatible = "nuvoton,nau8822";
 		reg = <0x1a>;
+		#sound-dai-cells = <0>;
 	};
 };
 
+/* Verdin PCIE_1 */
+&pcie0 {
+	status = "okay";
+};
+
+&pcie_phy {
+	status = "okay";
+};
+
+/* Verdin PWM_3_DSI */
+&pwm1 {
+	status = "okay";
+};
+
+/* Verdin PWM_1 */
+&pwm2 {
+	status = "okay";
+};
+
+/* Verdin PWM_2 */
+&pwm3 {
+	status = "okay";
+};
+
+/* Verdin I2S_1 */
+&sai2 {
+	status = "okay";
+};
+
+/* Verdin UART_3 */
+&uart1 {
+	status = "okay";
+};
+
 /* Verdin UART_1, connector X50 through RS485 transceiver */
 &uart2 {
 	linux,rs485-enabled-at-boot-time;
 	rs485-rts-active-low;
 	rs485-rx-during-tx;
+	status = "okay";
+};
+
+/* Verdin UART_2 */
+&uart3 {
+	status = "okay";
+};
+
+/* Verdin USB_1 */
+&usbotg1 {
+	disable-over-current;
+	status = "okay";
+};
+
+/* Verdin USB_2 */
+&usbotg2 {
+	disable-over-current;
+	status = "okay";
 };
 
 /* Limit frequency on dev board due to long traces and bad signal integrity */
 &usdhc2 {
 	max-frequency = <100000000>;
+	status = "okay";
 };
-- 
2.39.0

