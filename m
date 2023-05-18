Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 603D3708AD3
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 23:55:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230269AbjERVzU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 17:55:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230298AbjERVzP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 17:55:15 -0400
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EED66197
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 14:55:05 -0700 (PDT)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-199e2e85212so308021fac.1
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 14:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684446905; x=1687038905;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KmAZbtkgKPh9RaA52sr1pZc5YndAAKQTnl7Me1l5sAI=;
        b=e0Kz8Zz16wi0RRpe3GK8M9ogAfryPalq20hNPL5IxqrK37lQJDyoXgPQlrAYit+e50
         F7ycO3/uYE7072xGH7xhDcGclEekxdYf30UiDt9l8DzUwFqSSFCFlxlT0GXyI5mFudAV
         76xidvX4Z3cc1PcJbiiv2DO/ycUJXNp0pMFzKy4cRIEktg7FC2247Y3gKrG3lkc6alKp
         YILIDrLMmJIL79J2yqgNOnEjOnLizmaAnz5DCxKrvwtKQvrvAiK4JiPSlYCmH17YnZF3
         93SqppW6xIkk8l2lCODL5Mt409MTfBU2IQtMMB+2tANorwnpkC3SaDMflAKVsUm8o+va
         KpRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684446905; x=1687038905;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KmAZbtkgKPh9RaA52sr1pZc5YndAAKQTnl7Me1l5sAI=;
        b=bCxanUjJ2ueGFPEOfk7PPo+veDEZzoNl9FAJT/5kUEvSeKkUUWcit8Xfr9dXDCNWG+
         RKL1ADIoFbN0rWpaS8qZmbKvIfii/7/zwziE3pXexRwKvA9g+EzH/CgN9ZiMuWYnce42
         m27q3SVo4/1qU61+maUbkZeDPG0R4SQihJiwMjJJTHyPDPsu6coVplpSePBSP7BjrZUf
         w5fWKElDvhh74AgGPDmXQMuz0EQHDicJsFkmI4/OJXkDbnMhycI6AmscelU6nL1UnoOL
         l9ujAVqhykuB3UjEuntOKw87cbRsoOwA6MoFQvr/DdTF1t9i+mM42/mazXaE0pnpByyd
         S5ow==
X-Gm-Message-State: AC+VfDw51ojIUwRIAAQuJ6fwSpJuH/aRpMoaT+0FyV8fLQf7WI1eD3o8
        U6P9wGg+Pxy7tjrbBHiCay8=
X-Google-Smtp-Source: ACHHUZ6ZtQcM1k2gPj2UVoOgZF8PRDBfY5mvzAHPd251fKMluuh/ESK47cCPTOuzlSY9GqoEFS5YhA==
X-Received: by 2002:a05:6870:d24b:b0:199:c25b:f966 with SMTP id h11-20020a056870d24b00b00199c25bf966mr155089oac.2.1684446905244;
        Thu, 18 May 2023 14:55:05 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:e366:77e8:4ae8:a240])
        by smtp.gmail.com with ESMTPSA id dx11-20020a056870768b00b0017b21991355sm1264460oab.20.2023.05.18.14.55.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 May 2023 14:55:04 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     linux-imx@nxp.com, ye.li@nxp.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/2] ARM: dts: imx7d-sdb: Allow UHS modes
Date:   Thu, 18 May 2023 18:54:47 -0300
Message-Id: <20230518215447.180298-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230518215447.180298-1-festevam@gmail.com>
References: <20230518215447.180298-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Describe the SD1_VSELECT pad, which is necessary to allow UHS modes.

Also, to support higher SD card speed modes, describe the 100MHz and
200MHz SD card pinctrl entries.

Suggested-by: Ye Li <ye.li@nxp.com>
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx7d-sdb.dts | 40 ++++++++++++++++++++++++++++-----
 1 file changed, 35 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/imx7d-sdb.dts b/arch/arm/boot/dts/imx7d-sdb.dts
index 6e45f1154611..98e77fdfc27a 100644
--- a/arch/arm/boot/dts/imx7d-sdb.dts
+++ b/arch/arm/boot/dts/imx7d-sdb.dts
@@ -484,8 +484,10 @@ &usbotg2 {
 };
 
 &usdhc1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc1>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1>, <&pinctrl_usdhc1_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz>, <&pinctrl_usdhc1_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz>, <&pinctrl_usdhc1_gpio>;
 	cd-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
 	wp-gpios = <&gpio5 1 GPIO_ACTIVE_HIGH>;
 	vmmc-supply = <&reg_sd1_vmmc>;
@@ -743,6 +745,15 @@ MX7D_PAD_ECSPI1_MISO__UART6_DCE_RTS	0x79
 			>;
 		};
 
+		pinctrl_usdhc1_gpio: usdhc1_gpiogrp {
+			fsl,pins = <
+				MX7D_PAD_SD1_CD_B__GPIO5_IO0		0x59 /* CD */
+				MX7D_PAD_SD1_WP__GPIO5_IO1		0x59 /* WP */
+				MX7D_PAD_SD1_RESET_B__GPIO5_IO2		0x59 /* vmmc */
+				MX7D_PAD_GPIO1_IO08__SD1_VSELECT	0x59 /* VSELECT */
+			>;
+		};
+
 		pinctrl_usdhc1: usdhc1grp {
 			fsl,pins = <
 				MX7D_PAD_SD1_CMD__SD1_CMD		0x59
@@ -751,9 +762,28 @@ MX7D_PAD_SD1_DATA0__SD1_DATA0		0x59
 				MX7D_PAD_SD1_DATA1__SD1_DATA1		0x59
 				MX7D_PAD_SD1_DATA2__SD1_DATA2		0x59
 				MX7D_PAD_SD1_DATA3__SD1_DATA3		0x59
-				MX7D_PAD_SD1_CD_B__GPIO5_IO0		0x59 /* CD */
-				MX7D_PAD_SD1_WP__GPIO5_IO1		0x59 /* WP */
-				MX7D_PAD_SD1_RESET_B__GPIO5_IO2		0x59 /* vmmc */
+			>;
+		};
+
+		pinctrl_usdhc1_100mhz: usdhc1grp_100mhz {
+			fsl,pins = <
+				MX7D_PAD_SD1_CMD__SD1_CMD		0x5a
+				MX7D_PAD_SD1_CLK__SD1_CLK		0x1a
+				MX7D_PAD_SD1_DATA0__SD1_DATA0		0x5a
+				MX7D_PAD_SD1_DATA1__SD1_DATA1		0x5a
+				MX7D_PAD_SD1_DATA2__SD1_DATA2		0x5a
+				MX7D_PAD_SD1_DATA3__SD1_DATA3		0x5a
+			>;
+		};
+
+		pinctrl_usdhc1_200mhz: usdhc1grp_200mhz {
+			fsl,pins = <
+				MX7D_PAD_SD1_CMD__SD1_CMD		0x5b
+				MX7D_PAD_SD1_CLK__SD1_CLK		0x1b
+				MX7D_PAD_SD1_DATA0__SD1_DATA0		0x5b
+				MX7D_PAD_SD1_DATA1__SD1_DATA1		0x5b
+				MX7D_PAD_SD1_DATA2__SD1_DATA2		0x5b
+				MX7D_PAD_SD1_DATA3__SD1_DATA3		0x5b
 			>;
 		};
 
-- 
2.34.1

