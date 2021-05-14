Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DDF9380EBC
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 19:20:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235094AbhENRVO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 13:21:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235092AbhENRVN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 13:21:13 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B08CDC061574
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 10:20:01 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id b25so210916oic.0
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 10:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CtIozg4TyPmaxagSKodE8olnLW3eEIEko3jxzjbTr90=;
        b=PCVqlSCodPkrGPKgZ1w9KKVkYDhYVW9vrpCZ3xmhVRVmc+9HaSbcCyoCGHszbA0gQm
         PNGLQzkLI9eG667gQmIuHUh22ltAR+V8EgMTvZ6zlDNHAwTpHXL7x2LeiR2+0mSeAyqN
         +zP3jH2Mj9Wu+GMBrecWVgXZe1Ay6k96Q0AQsIQj1dCKTQ+NUWCCz0b6dchdrQLajBNF
         gnsRBkX3yU9MKyyDG7IzMdq1D+fR4jRqE7fOhyd952Cfq0nraZ4A6duqgVLy1HKVz/ZM
         MqkNdq2Ab/ntfn+ad0s68tUHjyNNpObWrFk8W/pCuZx9sKzm5ElAaC99/apKdjYex4DS
         BANw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CtIozg4TyPmaxagSKodE8olnLW3eEIEko3jxzjbTr90=;
        b=IEHUjYryBwBDRuJffeWmvHPYFmmtKcES5Frz1/jtaYurcgRGmxMMJ/yK8yib54XbNX
         tW94xhRVW+/o80Puu3AtrSX/rgMzMfBQWdVwptDrCSdU7W1s1/Ft25FSd38LN2uY+KZm
         tPllnp1+9zeCVsJrwvc4Kv0mCZP8tDLP27zC+2mVmcdkT3o0Z5I/0qrcmV1qkH4zcjic
         sGooPgFUMYaEqkI4nd8+dORBuPKN1wJHjdFSK30qGOXjJsrOyf2/V/S96F1s/4Fr8Y7X
         Xr5N0cShFY8A4CIMmTSv7eoZOvw4V5V4HliLPKo0ls3E47Ye1oj1F6L7G4XshTdiXYnQ
         qzdg==
X-Gm-Message-State: AOAM5307zIgRYipwlWefsYKecIOl3ugb0fFpweUleBTPXU0IG+Q7HL9U
        hNkjibhE3TlJXW/e38mAZi9MmBzbp2I=
X-Google-Smtp-Source: ABdhPJytITL4P1navsjFM7xpsEj20HyjcE+F1Bt+xFcaQ52PEKrTicRXH2w1VUfyo+tTxCOEXkArBw==
X-Received: by 2002:aca:c714:: with SMTP id x20mr34029513oif.85.1621012801169;
        Fri, 14 May 2021 10:20:01 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id x14sm1302547oic.3.2021.05.14.10.19.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 May 2021 10:20:00 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v10 4/4] arm64: dts: rockchip: add rk817 codec to Odroid Go
Date:   Fri, 14 May 2021 12:19:40 -0500
Message-Id: <20210514171940.20831-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210514171940.20831-1-macroalpha82@gmail.com>
References: <20210514171940.20831-1-macroalpha82@gmail.com>
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

