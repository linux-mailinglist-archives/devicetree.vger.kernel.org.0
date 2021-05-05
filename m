Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67D65373D0C
	for <lists+devicetree@lfdr.de>; Wed,  5 May 2021 16:09:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232569AbhEEOKO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 10:10:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233704AbhEEOKN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 May 2021 10:10:13 -0400
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83DFFC06174A
        for <devicetree@vger.kernel.org>; Wed,  5 May 2021 07:09:15 -0700 (PDT)
Received: by mail-oo1-xc2b.google.com with SMTP id s1-20020a4ac1010000b02901cfd9170ce2so492171oop.12
        for <devicetree@vger.kernel.org>; Wed, 05 May 2021 07:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=m5j/btsyLd9DUMe1LQtazP7T7DFpmpjQ+IT4zZRKp0k=;
        b=tZdXJBvIv84bP0TNCkZbIoTuEQGmESa8+/CPkZHMwKApjTYShvzXDTgJr7dEaDgo3s
         uEVbbW+JJUxu6qdNDwYcbaSesnvGzQahOMB7djEdbTF9BnSRM41eddgW1gVnNBWURo0C
         H3fed/EJStEy0owahqZijFOXhuXa41gSOwXf7UPQUWEa8gSp0ueq82csHl2Ru8zojmSr
         A55dswEYmt0tdhg/wP9YRKJr5aDY081hhu3uWU+qe+NSvOZeV/AO73QUdNFmGKuJq90g
         kswxIZwWxQqd7CORuWAk9gDwMSQxnNn6VeTvzP9Eans/CCxRjGvtguAVOOEZk6aGpdyj
         agGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=m5j/btsyLd9DUMe1LQtazP7T7DFpmpjQ+IT4zZRKp0k=;
        b=uCLSn5Ix0KdETesJ1EVbwJynK5oETgiwlD5nVMtZAA4nKwgXz2JONDmNtLbosKrRtA
         IR5AhDUptSCkch1xVXywCE+cmKHuGgaWRECok1TxUAVQ/yMDoDsPkq7ERHafLO9T04iS
         xpSbQAanS1Erj28azyHjqFmHeeGti8IxnC6wDrlP5T2KeqfE9vpC2euuFgZbNIFqcjxn
         7mrn08T2qJ+cKivc2QAQdVO3CWZE5hmpzWBg4RE5+6PspElbSrQRpdKQrIWhgTHt5DDO
         GDCtmPlFFkTDLq9IKlAKEa7Cj9asipGi7J7D9AeT5AHabSSWcNVGu1C7wCqCzl2YC99U
         hUyQ==
X-Gm-Message-State: AOAM531fjK8b5BdBZyQ5d9xelNIg+LS5n5UCKCel3nocuQxx3fkXVsqD
        xFgl/ktBMSW9kXJftotjzV7SMZIYmq0=
X-Google-Smtp-Source: ABdhPJybwK7GrzJrvVw8R4pJ8a+m50GIQzMVAv2HCjmDEpdFDjkQnrcaVF7NXxYGC4524gJLmv5B2w==
X-Received: by 2002:a4a:e548:: with SMTP id s8mr24476709oot.63.1620223754796;
        Wed, 05 May 2021 07:09:14 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id k20sm621707otb.15.2021.05.05.07.09.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 May 2021 07:09:14 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: add rk817 codec to Odroid Go
Date:   Wed,  5 May 2021 09:08:54 -0500
Message-Id: <20210505140854.15929-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210505140854.15929-1-macroalpha82@gmail.com>
References: <20210505140854.15929-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add the new rk817 codec driver to the Odroid Go Advance.

Tested-by: Maciej Matuszczyk <maccraft123mc@gmail.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
Changes in v9:
 - Add cover letter.
 - Remove documentation for interrupt parent per Rob Herring's request.
 - Remove unused MODULE_DEVICE_TABLE to fix a bug identified by kernel test
   robot.
Changes in v8:
 - Added additional documentation for missing properties of #sound-dai-cells,
   interrupt-parent, and wakeup-source for mfd documentation.
 - Corrected order of elements descriptions in device tree documentation.
 - Changed name of "mic-in-differential" to "rockchip,mic-in-differential".
 - Changed name of sound card from "rockchip,rk817-codec" to "Analog".
 - Removed unused resets and reset-names from the i2s1_2ch node.
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
index 49c97f76df77..e8c2b5a817a7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -165,6 +165,31 @@ blue_led: led-0 {
 		};
 	};
 
+	rk817-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "Analog";
+		simple-audio-card,format = "i2s";
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
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_2ch>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&rk817>;
+		};
+	};
+
 	vccsys: vccsys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v8_sys";
@@ -269,11 +294,14 @@ rk817: pmic@20 {
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
@@ -432,6 +460,10 @@ regulator-state-mem {
 				};
 			};
 		};
+
+		rk817_codec: codec {
+			rockchip,mic-in-differential;
+		};
 	};
 };
 
-- 
2.25.1

