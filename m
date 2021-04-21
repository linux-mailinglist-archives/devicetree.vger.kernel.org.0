Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 986DD367221
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 19:59:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245071AbhDUSAD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 14:00:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235658AbhDUSAC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 14:00:02 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8263EC06174A
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 10:59:29 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id l17so11909653oil.11
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 10:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GFCjFDnTKts+03sH7fTjJ2Hzlbk05WTqad5B7papnEE=;
        b=AEys/8bSEhTIx0oIJJSawACS89ej9X6f4uTuZD9dPR0dvpLadTnWJu39H5NIj68RCr
         6mgYTETBPxwaE0PLYu6d9qSS1NCxKRqu9jVepPwiLhrroDo8Tiv/u1JIIWU3VCjTXiEG
         T00POD+kqBGpehCle4nCvuoqmvnVF8QZqc8lJjt+oAWrDY8uFZsZzdUG/nEYUtrhQuFi
         ozkaLTxzsMC1tA0MToqWQGnwhQV1Y1K7f89ef712WOKnkZRFG5N39jgtPAsds8YTkSGC
         291ixJ6tMSZ10dvjlroxozebQOdflFHv9CaEF8FXzx6sd7+NDbWvrGlG0w5xJJKNTIRg
         nkkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GFCjFDnTKts+03sH7fTjJ2Hzlbk05WTqad5B7papnEE=;
        b=Em+IQN6m6XKrOeqxYQ+YVRWFG0NIx9F/BPPkwf97yhELs2A6Wh3fu/XKElmyFrvoJD
         lhfHcmZwpDxjlHv6TKcc3gX1TjRMlbkBTxMwncNKfWSjx9ges9yDpL2zrWL737A35Oje
         sX9/TKyEPYSS57B3+qOTYRblsfZGZVl5B2i6FGPlP40GV07NddRMm04RpwaZFAij7stB
         Hje2zwjh09yf3qkS5F34Z87zWvnkgK8dcWavgmygXIqe9isbcNKatBiY8x4qzRWT8FYP
         BESGGvCV7pHt6jvHwKTiiwZ57w2qkWXyetgnL2HWzLTUs94ezgI/f/7nV29b3nsnGvvT
         nfdg==
X-Gm-Message-State: AOAM5319FnJ4a6yV+qYy0sD0+7m6U0/1B9YbZkQMz9kH1psB39fGlqFC
        EwrcGDBsRC3W9rcWW0+pgC4=
X-Google-Smtp-Source: ABdhPJy35tGx7OnR7lXlEBK/EZatiYx9tb4/EQP6rMQD7CleDi/jo7CDKf6ooCozvtMeTF72U0JEhw==
X-Received: by 2002:aca:b387:: with SMTP id c129mr7311825oif.30.1619027968983;
        Wed, 21 Apr 2021 10:59:28 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id l62sm13662oih.2.2021.04.21.10.59.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 10:59:28 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [v8 4/4] arm64: dts: rockchip: add rk817 codec to Odroid Go
Date:   Wed, 21 Apr 2021 12:59:06 -0500
Message-Id: <20210421175906.31977-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210421175906.31977-1-macroalpha82@gmail.com>
References: <20210421175906.31977-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add the new rk817 codec driver to the Odroid Go Advance.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
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
index 97fb93e1cc00..e3ecd34f3028 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -161,6 +161,31 @@ blue_led: led-0 {
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
@@ -265,11 +290,14 @@ rk817: pmic@20 {
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
@@ -428,6 +456,10 @@ regulator-state-mem {
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

