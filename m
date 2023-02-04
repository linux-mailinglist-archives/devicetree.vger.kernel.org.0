Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3705D68A90D
	for <lists+devicetree@lfdr.de>; Sat,  4 Feb 2023 09:48:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233309AbjBDIsd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Feb 2023 03:48:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230101AbjBDIsb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Feb 2023 03:48:31 -0500
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3DD974A4F
        for <devicetree@vger.kernel.org>; Sat,  4 Feb 2023 00:48:30 -0800 (PST)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out2.suse.de (Postfix) with ESMTPS id 5F87C5D658;
        Sat,  4 Feb 2023 08:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
        t=1675500509; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=cOzrv40QkD0Kfa2EYbZ8nlh7FWOn+IL1gxkb2voS31k=;
        b=T+dpggk1Hu/eU1BJgKLCITl/fzUARWuXInFQTCGxj1Im5trMa/egwRtPnnJSUZWhn8NoUx
        DfUT6ZyAtcFAYDSSYb3ubqVD1TQJxIDPG2W0m9NRYCJVvzzDH7AAoCoTmaC35npaEWUlzD
        qroDmsprbtpR5hienphBBF2HDyKGaG0=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 1B34C133F5;
        Sat,  4 Feb 2023 08:48:27 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id +DGUN9sb3mMKLAAAMHmgww
        (envelope-from <wqu@suse.com>); Sat, 04 Feb 2023 08:48:27 +0000
From:   Qu Wenruo <wqu@suse.com>
To:     linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     sebastian.reichel@collabora.com, heiko@sntech.de
Subject: [PATCH RFC 5/5] arm64: dts: rockchip: enable PCIE3 controller and phy for Rock5B boards
Date:   Sat,  4 Feb 2023 16:48:02 +0800
Message-Id: <74cec42b80db30395772df61fd8029bbf5a56411.1675498628.git.wqu@suse.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1675498628.git.wqu@suse.com>
References: <cover.1675498628.git.wqu@suse.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We only needs to define the needed 3v3 voltage for the PCIE controller,
and enable both the controller and phy.

Since I only own Rock5B boards for RK3588, I can not test for sure for
other boards, thus this patch only enables the PCIE controller/phy for
Rock5B.

Signed-off-by: Qu Wenruo <wqu@suse.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index d2f1e963ce06..75015f065ceb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -2,6 +2,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/gpio/gpio.h>
 #include "rk3588.dtsi"
 
 / {
@@ -25,6 +26,17 @@ vcc5v0_sys: vcc5v0-sys-regulator {
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 	};
+
+	vcc3v3_pcie30: vcc3v3-pcie30 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie30";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
 };
 
 &sdhci {
@@ -38,6 +50,16 @@ &sdhci {
 	status = "okay";
 };
 
+&pcie30phy {
+	status = "okay";
+};
+
+&pcie3x4 {
+	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie30>;
+	status = "okay";
+};
+
 &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";
-- 
2.39.1

