Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45E6938154C
	for <lists+devicetree@lfdr.de>; Sat, 15 May 2021 04:58:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234081AbhEOC7P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 22:59:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234068AbhEOC7O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 22:59:14 -0400
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74B90C06174A
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 19:58:02 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id n32-20020a9d1ea30000b02902a53d6ad4bdso968065otn.3
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 19:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CtIozg4TyPmaxagSKodE8olnLW3eEIEko3jxzjbTr90=;
        b=LMPCfR+8vlIYDHGPtCemLZfNaO75T6pi9kuBjKzYz9/Xy1EMjLGW+q7ONW7GLR5Dwt
         dTNHtAR+4zry/8hAZI1adYOGYeIMRoDTycarr3fsxilyOdFLwIwWE0sl8l20VjKQXoB9
         v1uwMwjJqATjOzJUIfEzf7uEcuULIOXrcRHnJFPl9IOZkuoFr/Va6SDjm6rkEE+Ynxme
         XCu1uUWAhcEyNtTMv5/zG8rLCQ0z9pg8oY/jli0q4wa/b3bEdd3+ycX0xuuzqOqNrnHj
         zx24uI9Jtc44xABdIlTmemZ64Zyj/6FvBLZUanYzp1yu4T5UDDskm84DXVG+Am5i/81q
         U45Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CtIozg4TyPmaxagSKodE8olnLW3eEIEko3jxzjbTr90=;
        b=FVVJDHimV5HS0nE4/7ZUnyVZKWQQIFQWk9B3/Au+vQqlU6jPR3vE+WwmZ25IOHQt1d
         btN3wA9BkfcNI8dsBZvMoZYcpuMp3Ixg1FYXTRp9Rm+mUmwVYTyRHcO0cjDpPfxLMW14
         TLpVrXLXENtn9ZIB9gc/DXuAg8RTdJHkLT+Aaljs0P5zDlt1aKXj2D6YNMoBKulVYlSB
         p3KaHxNT+BGVrPf7GWoAiuOf7r6G+Aa9Z0/zaFfLbcOzneFDQ8K5ZmZ1fcMbF2ENJKVM
         7dpz5JHIVu+M7CrGdlA5roJxJBLaf+QcSm7eG2RtWSaCVmVpsq2xsr4oOvk+7p6PP3+N
         QgFg==
X-Gm-Message-State: AOAM532Gytse/i+aInx2EF64LCjPYlkAgwPnN/vX5MPzqeT6LHZIxuyO
        +4C8dJ1I8Cxkq0hLGF5dTxMjDdiGhjY=
X-Google-Smtp-Source: ABdhPJz4Q9lKotO5l15FOiBWW+C1bGEq8I+Y+fOKMyYpCmFGTP5rozeA4IuWpRbjUsZnBP+eenvFTw==
X-Received: by 2002:a9d:7a92:: with SMTP id l18mr30032392otn.355.1621047481943;
        Fri, 14 May 2021 19:58:01 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id j16sm1689444otn.55.2021.05.14.19.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 May 2021 19:58:01 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v11 4/4] arm64: dts: rockchip: add rk817 codec to Odroid Go
Date:   Fri, 14 May 2021 21:57:49 -0500
Message-Id: <20210515025749.11291-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210515025749.11291-1-macroalpha82@gmail.com>
References: <20210515025749.11291-1-macroalpha82@gmail.com>
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

