Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8DB9463078
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 11:02:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240610AbhK3KFc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 05:05:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240601AbhK3KFb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Nov 2021 05:05:31 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 239CCC061748
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 02:02:12 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id l16so43113728wrp.11
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 02:02:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2StaEqVy9B8+ZfyW369JbxqFphYPc6IMTPWpr8yAUuQ=;
        b=CWupZEVGGC6d32E+1UEuD7BmkxvC73SyoaKJt1B+bj0IaS4oBm4h0YfoNhIzNybvqJ
         sDPgGk9SxiHxr2eqgHXxnmB3GUcPUGQwXvdynyLDpttddDHV/aEmiJ3/tFT/8hcAamVl
         qpHrVCfoFSHnL3MmvzxIu7YcHOMnNjlNfoRYNZI14wcn/XKs80gZd7OhmtqaUrSrsrhD
         tMKiVEwfm6WcWLbUOq6qvTeWrVW3I5FCQJIk/sEP3XhMlRDGZX/bBNcQxNMXUYi1Xb7I
         ZCqYZEPuW3RoXA3uHdYpfAZfMo96J4e/iYwUowJjC4QEsi01nZyZLhYYD5EMSKJu38xd
         VzSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2StaEqVy9B8+ZfyW369JbxqFphYPc6IMTPWpr8yAUuQ=;
        b=YRSdkj7g+C4WxvyWADLK/0gpP6GHvAYlg3feypEqMfhkAVtcJTTpzrftT7MtvaPWwY
         UdJ9euVvkGBmfcRkclFi/LYKZCXk1AXlD6VRQbdZuiZVthDdEdhESnhjiqkejgb/dIdc
         LPe0roXYTaEcYkyuQp9rUBhURYFXWhsoWQ+Duws6fDWcR8HNMWIURXOTmqVapVlxh7zO
         WVBSJY+1u40rFGyr4MO2V03wFO05y7x0TecBgoNdhrdXt3X99Ocnp0hZ1WUHeEh9WXRv
         1XutMSItLVeWuENPl7t77O+jgOWuJ42ww3k/wgyevqnfEykohYpmK2VDrjKj8a/gCtG/
         F+QQ==
X-Gm-Message-State: AOAM5338STx1hRAKuQe7opfmLkulcsR3I13zBcdYswpkPrxZonDwF+Ka
        tKiTzjww+gP9Yb+YqFdsywwUbQ==
X-Google-Smtp-Source: ABdhPJxAAvutkQ/CSzmM4k0ljhFTQPLnHG9Yg8AI6TQdmyY5geq4w7Nmn2rB8BsTgH34lKzABlDF9A==
X-Received: by 2002:adf:cd89:: with SMTP id q9mr39425844wrj.205.1638266530710;
        Tue, 30 Nov 2021 02:02:10 -0800 (PST)
Received: from jackdaw.lan (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.googlemail.com with ESMTPSA id e12sm21117166wrq.20.2021.11.30.02.02.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Nov 2021 02:02:10 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: meson: p241: add sound support
Date:   Tue, 30 Nov 2021 11:01:59 +0100
Message-Id: <20211130100159.214489-3-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211130100159.214489-1-jbrunet@baylibre.com>
References: <20211130100159.214489-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the p241 sound card support. This board can play audio through HDMI
and the internal DAC.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../boot/dts/amlogic/meson-gxl-s805x-p241.dts | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
index 9d0684a8264b..ff906becd2ab 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
@@ -8,6 +8,7 @@
 /dts-v1/;
 
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/sound/meson-aiu.h>
 
 #include "meson-gxl-s805x.dtsi"
 
@@ -21,6 +22,13 @@ aliases {
 		ethernet0 = &ethmac;
 	};
 
+	au2: analog-amplifier {
+		compatible = "simple-audio-amplifier";
+		sound-name-prefix = "AU2";
+		VCC-supply = <&vcc_5v>;
+		enable-gpios = <&gpio GPIOH_5 GPIO_ACTIVE_HIGH>;
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
@@ -110,6 +118,68 @@ sdio_pwrseq: sdio-pwrseq {
 		clocks = <&wifi32k>;
 		clock-names = "ext_clock";
 	};
+
+	sound {
+		compatible = "amlogic,gx-sound-card";
+		model = "GXL-P241";
+		audio-aux-devs = <&au2>;
+		audio-widgets = "Line", "Lineout";
+		audio-routing = "AU2 INL", "ACODEC LOLN",
+				"AU2 INR", "ACODEC LORN",
+				"Lineout", "AU2 OUTL",
+				"Lineout", "AU2 OUTR";
+		assigned-clocks = <&clkc CLKID_MPLL0>,
+				  <&clkc CLKID_MPLL1>,
+				  <&clkc CLKID_MPLL2>;
+		assigned-clock-parents = <0>, <0>, <0>;
+		assigned-clock-rates = <294912000>,
+				       <270950400>,
+				       <393216000>;
+		status = "okay";
+
+		dai-link-0 {
+			sound-dai = <&aiu AIU_CPU CPU_I2S_FIFO>;
+		};
+
+		dai-link-1 {
+			sound-dai = <&aiu AIU_CPU CPU_I2S_ENCODER>;
+			dai-format = "i2s";
+			mclk-fs = <256>;
+
+			codec-0 {
+				sound-dai = <&aiu AIU_HDMI CTRL_I2S>;
+			};
+
+			codec-1 {
+				sound-dai = <&aiu AIU_ACODEC CTRL_I2S>;
+			};
+		};
+
+		dai-link-2 {
+			sound-dai = <&aiu AIU_HDMI CTRL_OUT>;
+
+			codec-0 {
+				sound-dai = <&hdmi_tx>;
+			};
+		};
+
+		dai-link-3 {
+			sound-dai = <&aiu AIU_ACODEC CTRL_OUT>;
+
+			codec-0 {
+				sound-dai = <&acodec>;
+			};
+		};
+	};
+};
+
+&acodec {
+	AVDD-supply = <&vddio_ao18>;
+	status = "okay";
+};
+
+&aiu {
+	status = "okay";
 };
 
 &cec_AO {
-- 
2.34.0

