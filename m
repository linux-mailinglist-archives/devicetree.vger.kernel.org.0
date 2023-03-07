Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B9A46ADB28
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 10:56:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230168AbjCGJ4O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 04:56:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231140AbjCGJzx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 04:55:53 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B93BF50733
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 01:55:27 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pZU2X-0003zp-Ke; Tue, 07 Mar 2023 10:55:25 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     linux-rockchip@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        briannorris@chromium.org, dianders@chromium.org,
        Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] ARM: dts: rockchip: Add mmc aliases for rk3288-veyron devices
Date:   Tue,  7 Mar 2023 10:55:16 +0100
Message-Id: <20230307095516.4116827-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

All of them have an internal emmc that becomes mmc0 and
devices including the sdmmc snippet get mmc1 for the external
sd slot on suitable devices.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi | 6 ++++++
 arch/arm/boot/dts/rk3288-veyron.dtsi       | 4 ++++
 2 files changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi b/arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi
index 27fb06ce907e..8b58773e592e 100644
--- a/arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi
@@ -5,6 +5,12 @@
  * Copyright 2015 Google, Inc
  */
 
+/ {
+	aliases {
+		mmc1 = &sdmmc;
+	};
+};
+
 &io_domains {
 	sdcard-supply = <&vccio_sd>;
 };
diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index e406c8c7c7e5..d838bf0d5d9a 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -10,6 +10,10 @@
 #include "rk3288.dtsi"
 
 / {
+	aliases {
+		mmc0 = &emmc;
+	};
+
 	chosen {
 		stdout-path = "serial2:115200n8";
 	};
-- 
2.39.0

