Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7F93365CDE
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 18:08:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232916AbhDTQIm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 12:08:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232174AbhDTQIk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 12:08:40 -0400
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3019C06138B
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 09:08:08 -0700 (PDT)
Received: by mail-oi1-x22d.google.com with SMTP id u80so5873042oia.0
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 09:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=12xoJC8I/0jBFBQ6uTjCdcTJY4GOeJNX+Bl1LJtzWP8=;
        b=G7jm/Yam0WwdVJCS/CDN+oXqZYSYYvANUNbi9M8uORILKNhtccbkQZWZFKWtYUh5zu
         fmXD4CB0/BQ1fmiNaDsgT/HtN7kekBsqKNfBNW/fwrll71WbOsGTX6Y6+7Et3XjziFWd
         nyVxkMKd6R46UT1KZ1n+/uPTcsrUkswjCAjQ4Jz1N0i4mm+ogzi0kfCQ/Oh4Z8sSc+dk
         IcYypzam4YUViIWFLkJD6YyC4EiL0EpeKVNYRkcxTr7UArkGuwenscO0m8tQ1DOMK4+Y
         FZh9KQXdhbXosPujic/K3gF+TOdXdXiZSGTbDlq5Gf4z9D0TmUS86dllE5azjIfLzdRk
         lDhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=12xoJC8I/0jBFBQ6uTjCdcTJY4GOeJNX+Bl1LJtzWP8=;
        b=Nzgh6IDULx/tUU3r3tCGAKTS+Fxv/H+E+hrRVlDbBOX3u8m8XCauwHcVQXsmg4j6uZ
         uuS2d9aSRyIZ949EFT9juTb7f4m1QyEgEHb35ubySzR1LX7LHojmgnWk2ei0sQZVsbCD
         80T2SeiHH5G6jGXSx3c+38p9F8IIrRV1O9iTlEfaCcqaG5AgWVBKjjFkrGQIPZEsh07W
         8CrO5n4PviyNbC9bDRZJ2nfXpq/22oZZUvrTBSGJGgfjOn/ns9NwJZwJhUVa+Ap1xABk
         /fYVDSmwsjZi7Fre2DQlJ6KD1icniREBZgQl54Om7XqrD6MGSCS4Ygw3TK4LbE1Epg/g
         JSmQ==
X-Gm-Message-State: AOAM531x0FM+78KdPIvsjyq5T9PWHNy60jNM9EPN3fJRjhEKLnJhngmb
        A+KBz97DMDSXSAYJjaA4pYQ=
X-Google-Smtp-Source: ABdhPJxnIsUzsLKcT2K+8x1/eiGdYFczArt58MVmcFmfXRNXcC94kQ2ecJEGomo5nvJVw4qw+hWk4w==
X-Received: by 2002:a05:6808:1444:: with SMTP id x4mr3736124oiv.142.1618934888333;
        Tue, 20 Apr 2021 09:08:08 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id y6sm4497057otk.42.2021.04.20.09.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 09:08:07 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [v7 4/4] arm64: dts: rockchip: add rk817 codec to Odroid Go
Date:   Tue, 20 Apr 2021 11:07:47 -0500
Message-Id: <20210420160747.22942-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210420160747.22942-1-macroalpha82@gmail.com>
References: <20210420160747.22942-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add the new rk817 codec driver to the Odroid Go Advance.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
Changes in v7:
 - Removed ifdef around register definitions for MFD.
 - Replaced codec documentation with updates to MFD documentation.
 - Reordered elements in example to comply with upstream rules.
 - Added binding update back for Odroid Go Advance as requested.
 - Submitting patches from gmail now.
Changes in v6:
 - Included additional project maintainers for correct subsystems.
 - Removed unneeded compatible from DT documentation.
 - Removed binding update for Odroid Go Advance (will do in seperate series).
Changes in v5:
 - Move register definitions from rk817_codec.h to main rk808.h register
   definitions.
 - Add volatile register for codec bits.
 - Add default values for codec bits.
 - Removed of_compatible from mtd driver (not necessary).
 - Switched to using parent regmap instead of private regmap for codec.
Changes in v4:
 - Created set_pll() call.
 - Created user visible gain control in mic.
 - Check for return value of clk_prepare_enable().
 - Removed duplicate clk_prepare_enable().
 - Split DT documentation to separate commit.
Changes in v3:
 - Use DAPM macros to set audio path.
 - Updated devicetree binding (as every rk817 has this codec chip).
 - Changed documentation to yaml format.
 - Split MFD changes to separate commit.
Changes in v2:
 - Fixed audio path registers to solve some bugs.

 .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 36 +++++++++++++++++--
 1 file changed, 34 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index 97fb93e1cc00..5356bcf6d99c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -161,6 +161,29 @@ blue_led: led-0 {
 		};
 	};
 
+	rk817-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,name = "rockchip,rk817-codec";
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,widgets =
+			"Microphone", "Mic Jack",
+			"Headphone", "Headphones",
+			"Speaker", "Speaker";
+		simple-audio-card,routing =
+			"MICL", "Mic Jack",
+			"Headphones", "HPOL",
+			"Headphones", "HPOR",
+			"Speaker", "SPKO";
+		simple-audio-card,hp-det-gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_2ch>;
+		};
+		simple-audio-card,codec {
+			sound-dai = <&rk817>;
+		};
+	};
+
 	vccsys: vccsys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v8_sys";
@@ -265,11 +288,14 @@ rk817: pmic@20 {
 		reg = <0x20>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
+		clock-output-names = "rk808-clkout1", "xin32k";
+		clock-names = "mclk";
+		clocks = <&cru SCLK_I2S1_OUT>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int>;
+		pinctrl-0 = <&pmic_int>, <&i2s1_2ch_mclk>;
 		wakeup-source;
 		#clock-cells = <1>;
-		clock-output-names = "rk808-clkout1", "xin32k";
+		#sound-dai-cells = <0>;
 
 		vcc1-supply = <&vccsys>;
 		vcc2-supply = <&vccsys>;
@@ -428,6 +454,10 @@ regulator-state-mem {
 				};
 			};
 		};
+
+		rk817_codec: codec {
+			mic-in-differential;
+		};
 	};
 };
 
@@ -439,6 +469,8 @@ &i2c1 {
 
 /* I2S 1 Channel Used */
 &i2s1_2ch {
+	resets = <&cru SRST_I2S1>, <&cru SRST_I2S1_H>;
+	reset-names = "reset-m", "reset-h";
 	status = "okay";
 };
 
-- 
2.25.1

