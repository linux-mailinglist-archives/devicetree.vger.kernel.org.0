Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07832389810
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 22:38:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229480AbhESUja (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 16:39:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbhESUj3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 16:39:29 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84910C06175F
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 13:38:08 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id 69-20020a9d0a4b0000b02902ed42f141e1so12935388otg.2
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 13:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CtIozg4TyPmaxagSKodE8olnLW3eEIEko3jxzjbTr90=;
        b=AmHfXcnp1nO4RnOBhOGb34amB7BP00FVaE/uDsHk47L24i3u2FAHIBLSX7vthr1R79
         /zAmGb90klzTJeZepfKBjI6nQFMRKMT5xeDZsfKOEKPOmIgBM4Uhnb/2VUyMnrvvNMsu
         vib5P/C8mAZF2JXd/IzRqep+kz7RFICkqMl8PpXmYBowCzaRvoCdGfEHjq5p61eXPPwN
         LwyirQZPt1DBfhCyvvK+FAw55EqIQOj5d/bLMmbasIdhnsUQ2agryjiIoZoDCemTOJiF
         Q/NjEEviStbjT7mI3UtdYHNfZDbFqQEm0Ocj9Vs2x3NTSg7Sn3IGAbLyEXTtSlAJYVsG
         WKnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CtIozg4TyPmaxagSKodE8olnLW3eEIEko3jxzjbTr90=;
        b=Vtm3FQ1ZlX1z8zY0+GBZoK2WLOAZxszgFxMxHxMKNbZuk7/GvPUJabMfUEmPgRCrpX
         5ttNrTwfUaFt/49DYRmepnmvKcMdNhUvMm9h1wv5bRJAcGRQG/JLWs1Cb955GPUY7/ah
         Sw2KyAIf6H9UUMkGlj+DkCH647j/4z0yuNy4UH3MJoxv+ttCkkzmEpA7k6zyeLE9d6rf
         un+tamklC4JAjaeebFWEi/oc1ROYZt7HqfMJNuqdOHjnlpcJnX2fHL0EIcBihrV0jHTl
         AWdFSIEE0HjxJu7Ib+334YMOUnOHNt2qvqPlzrndtWoeQy5deWhA3ww0Hi/MyYG0vQjK
         2JYw==
X-Gm-Message-State: AOAM532xL2xTG+WIikaRileq0hX4nIvHr1D7MqVk+RcIk+MPlaq1Z9XH
        7juFXjmKIIUP+0Z58pc83S4=
X-Google-Smtp-Source: ABdhPJyXXVFDbFRtx4H3uxFZNb1bgErAVsSW/mByBfulGM4AyoCMK2WWgSPI48yeZUGI2NU793iawg==
X-Received: by 2002:a9d:7049:: with SMTP id x9mr1152728otj.20.1621456687933;
        Wed, 19 May 2021 13:38:07 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id w6sm189223otj.5.2021.05.19.13.38.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 13:38:07 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v12 4/4] arm64: dts: rockchip: add rk817 codec to Odroid Go
Date:   Wed, 19 May 2021 15:37:54 -0500
Message-Id: <20210519203754.27184-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210519203754.27184-1-macroalpha82@gmail.com>
References: <20210519203754.27184-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add the new rk817 codec driver to the Odroid Go Advance.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Tested-by: Maciej Matuszczyk <maccraft123mc@gmail.com>
---
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

