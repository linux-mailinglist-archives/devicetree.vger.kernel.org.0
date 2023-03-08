Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6DE56B081E
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 14:13:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231428AbjCHNNj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 08:13:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231517AbjCHNNH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 08:13:07 -0500
Received: from smtp-190e.mail.infomaniak.ch (smtp-190e.mail.infomaniak.ch [185.125.25.14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B81647BA07
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 05:10:19 -0800 (PST)
Received: from smtp-2-0000.mail.infomaniak.ch (unknown [10.5.36.107])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4PWsgJ5zVGzMrS9Q;
        Wed,  8 Mar 2023 13:53:16 +0100 (CET)
Received: from unknown by smtp-2-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4PWsgJ2T5czMslrx;
        Wed,  8 Mar 2023 13:53:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=pschenker.ch;
        s=20220412; t=1678279996;
        bh=aExLQ6B+SPPPLHo1PHQOw+NlQL8dDHzonnhZWoJIBHs=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=Z17z0InBhcSGaQbYoUypBNPqiYFRUVpPf9Y5drop92G3smRvLIIFMRdYVJjeNac/Y
         LepbB9iAMpwZxWSBnSWhMA264fsWIlI62jo/zgdxVxDEQJWprDtz6t2LO1nVT7j5+h
         wKwEdJp40xhv7p0hr2GXEksQRq4H4EuufwqrL9Aw=
From:   Philippe Schenker <dev@pschenker.ch>
To:     devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@gmail.com>,
        Philippe Schenker <philippe.schenker@toradex.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v1 17/25] arm64: dts: colibri-imx8x: eval: Add spi-to-can
Date:   Wed,  8 Mar 2023 13:52:51 +0100
Message-Id: <20230308125300.58244-18-dev@pschenker.ch>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308125300.58244-1-dev@pschenker.ch>
References: <20230308125300.58244-1-dev@pschenker.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Philippe Schenker <philippe.schenker@toradex.com>

Add mcp2515 spi-to-can to &lpspi2.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

 .../dts/freescale/imx8x-colibri-eval-v3.dtsi  | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8x-colibri-eval-v3.dtsi b/arch/arm64/boot/dts/freescale/imx8x-colibri-eval-v3.dtsi
index 625d2caaf5d1..e7e3cf462408 100644
--- a/arch/arm64/boot/dts/freescale/imx8x-colibri-eval-v3.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8x-colibri-eval-v3.dtsi
@@ -11,6 +11,13 @@ aliases {
 		rtc1 = &rtc;
 	};
 
+	/* fixed crystal dedicated to mcp25xx */
+	clk16m: clock-16mhz-fixed {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <16000000>;
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -44,6 +51,18 @@ rtc_i2c: rtc@68 {
 /* Colibri SPI */
 &lpspi2 {
 	status = "okay";
+
+	mcp2515: can@0 {
+		compatible = "microchip,mcp2515";
+		reg = <0>;
+		interrupt-parent = <&lsio_gpio3>;
+		interrupts = <13 IRQ_TYPE_EDGE_FALLING>;
+		pinctrl-0 = <&pinctrl_can_int>;
+		pinctrl-names = "default";
+		clocks = <&clk16m>;
+		spi-max-frequency = <10000000>;
+		status = "okay";
+	};
 };
 
 /* Colibri UART_B */
-- 
2.39.2

