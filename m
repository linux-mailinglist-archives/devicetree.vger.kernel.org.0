Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A50367B6A0
	for <lists+devicetree@lfdr.de>; Wed, 25 Jan 2023 17:10:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235483AbjAYQKc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 11:10:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235474AbjAYQKb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 11:10:31 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F0B8564B0
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 08:10:30 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id o13so19028484pjg.2
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 08:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=stSWpw8TUYjnXGpZEjiWEmn4szU9a8OizCIboNZhV04=;
        b=aTkxaiAsF5fkrYH8+9HyksKu877tIYcuOSBTrL3prk1kEQ1eZZMwvqsxZYt9f72Ro2
         KrTEPr7hvMXqckVEwAxAJivJOEI+63xrPx6KomJMGp3J1u5wmn51K06+TN+5ACX6eU9f
         jLPcpjy8PdK8FNmsfGFcUQwjmaZSF0q7n/qt8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=stSWpw8TUYjnXGpZEjiWEmn4szU9a8OizCIboNZhV04=;
        b=m7FJ8mPzbpaYfTrUox5hpfLOdpqXmlnkqlwv3POchh7oo2/8LFo+Z+NhtVnDC758Ss
         E1WJ1m4CAkWsPbStr8x1yeD4P1dIq7c2gMo1N+NDe/WcJ+zs177xA0lChV+qAF+nqlPx
         GPiHlcy9SYGO1lRoZreaGW280Bt9Eq+fvQ2h7pg9gsa7CVl/hLCTC7HWGT+cBeCsGyCv
         hgnYx4dRX+AY5pxoGpkNQPR90ln0K9Gi2WBQ4DEWBVtSaQzojSZT7YvV8W7DEr20lnph
         RDazvDrMF47oiEjXIsGO6UhPAwUut5GcOPdiIFLDDyQ7LITbOd6tOuFJdfmSZIxDO4sU
         V6xg==
X-Gm-Message-State: AFqh2ko9RHDBtFMG/MslZM1fwaYQmFXyM7E0iZq1ghqYWfk1QwQOsvhH
        RVmBuF1Yriy7xCjO6t8u6LwEATfT/diKZhfDL5s=
X-Google-Smtp-Source: AMrXdXvP/zwB7h3HdIwW3NhfX//yk279ulFteXpkPz7QTebWQ0/74xOm7OiR1WdhQNIuHJcuC5aXUg==
X-Received: by 2002:a05:6a20:cb41:b0:b5:951b:e339 with SMTP id hd1-20020a056a20cb4100b000b5951be339mr30213436pzb.21.1674663029881;
        Wed, 25 Jan 2023 08:10:29 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a238:3cb1:2156:ef87:8af5])
        by smtp.gmail.com with ESMTPSA id n29-20020a638f1d000000b004dadeb4decasm14929pgd.53.2023.01.25.08.10.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jan 2023 08:10:29 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: Enable Ethernet for Radxa CM3 IO
Date:   Wed, 25 Jan 2023 21:40:22 +0530
Message-Id: <20230125161023.12115-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>

Add ethernet nodes for enabling gmac1 on the Radxa CM3 IO board.

Signed-off-by: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
---
 .../boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 93 +++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
index 3e6578f27ec0..170af01371ff 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
@@ -21,6 +21,13 @@ chosen: chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	gmac1_clkin: external-gmac1-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "gmac1_clkin";
+		#clock-cells = <0>;
+	};
+
 	hdmi-con {
 		compatible = "hdmi-connector";
 		type = "a";
@@ -83,6 +90,29 @@ &combphy1 {
 	status = "okay";
 };
 
+&gmac1 {
+	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
+	assigned-clock-rates = <0>, <125000000>;
+	clock_in_out = "input";
+	phy-handle = <&rgmii_phy1>;
+	phy-mode = "rgmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1m0_miim
+		     &gmac1m0_tx_bus2
+		     &gmac1m0_rx_bus2
+		     &gmac1m0_rgmii_clk
+		     &gmac1m0_rgmii_bus
+		     &gmac1m0_clkinout>;
+	snps,reset-gpio = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	/* Reset time is 20ms, 100ms for rtl8211f */
+	snps,reset-delays-us = <0 20000 100000>;
+	tx_delay = <0x46>;
+	rx_delay = <0x2e>;
+	status = "okay";
+};
+
 &hdmi {
 	avdd-0v9-supply = <&vdda0v9_image>;
 	avdd-1v8-supply = <&vcca1v8_image>;
@@ -105,7 +135,70 @@ &hdmi_sound {
 	status = "okay";
 };
 
+&mdio1 {
+	rgmii_phy1: ethernet-phy@0 {
+		compatible="ethernet-phy-ieee802.3-c22";
+		reg= <0x0>;
+	};
+};
+
 &pinctrl {
+	gmac1 {
+		gmac1m0_miim: gmac1m0-miim {
+			rockchip,pins =
+				/* gmac1_mdcm0 */
+				<3 RK_PC4 3 &pcfg_pull_none_drv_level_15>,
+				/* gmac1_mdiom0 */
+				<3 RK_PC5 3 &pcfg_pull_none_drv_level_15>;
+		};
+
+		gmac1m0_rx_bus2: gmac1m0-rx-bus2 {
+			rockchip,pins =
+				/* gmac1_rxd0m0 */
+				<3 RK_PB1 3 &pcfg_pull_none_drv_level_15>,
+				/* gmac1_rxd1m0 */
+				<3 RK_PB2 3 &pcfg_pull_none_drv_level_15>,
+				/* gmac1_rxdvcrsm0 */
+				<3 RK_PB3 3 &pcfg_pull_none_drv_level_15>;
+		};
+
+		gmac1m0_tx_bus2: gmac1m0-tx-bus2 {
+			rockchip,pins =
+				/* gmac1_txd0m0 */
+				<3 RK_PB5 3 &pcfg_pull_none_drv_level_15>,
+				/* gmac1_txd1m0 */
+				<3 RK_PB6 3 &pcfg_pull_none_drv_level_15>,
+				/* gmac1_txenm0 */
+				<3 RK_PB7 3 &pcfg_pull_none_drv_level_15>;
+		};
+
+		gmac1m0_rgmii_clk: gmac1m0-rgmii-clk {
+			rockchip,pins =
+				/* gmac1_rxclkm0 */
+				<3 RK_PA7 3 &pcfg_pull_none_drv_level_15>,
+				/* gmac1_txclkm0 */
+				<3 RK_PA6 3 &pcfg_pull_none_drv_level_15>;
+		};
+
+		gmac1m0_rgmii_bus: gmac1m0-rgmii-bus {
+			rockchip,pins =
+				/* gmac1_rxd2m0 */
+				<3 RK_PA4 3 &pcfg_pull_none_drv_level_15>,
+				/* gmac1_rxd3m0 */
+				<3 RK_PA5 3 &pcfg_pull_none_drv_level_15>,
+				/* gmac1_txd2m0 */
+				<3 RK_PA2 3 &pcfg_pull_none_drv_level_15>,
+				/* gmac1_txd3m0 */
+				<3 RK_PA3 3 &pcfg_pull_none_drv_level_15>;
+		};
+
+		gmac1m0_clkinout: gmac1m0-clkinout {
+			rockchip,pins =
+				/* gmac1_mclkinoutm0 */
+				<3 RK_PC0 3 &pcfg_pull_none_drv_level_15>;
+		};
+	};
+
 	leds {
 		pi_nled_activity: pi-nled-activity {
 			rockchip,pins = <4 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.25.1

