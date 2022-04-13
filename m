Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CBF04FF73A
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 14:56:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233361AbiDMM7D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 08:59:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233299AbiDMM7D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 08:59:03 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1EC54FC73
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 05:56:41 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id p15so3743530ejc.7
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 05:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ahTXWU/PO1db6NpymuEarcVlH8cpP7KwJst30CgSTjE=;
        b=lz1nR2vbTodMdiEGS+96/0Amdf5k+4IW4UipuGNmmQfNJ5u3I0zPbBHs/qdsKGq1W3
         T0mHWSooZWSfPUEOpLVNY8yQN6cQWbhBccY/oc5rf4h4vx8ftY3PXV8KB4dCgoci9AJu
         PnGDbqNJpYoYqMak/4c08iTcRmmRY4xIYlmJk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ahTXWU/PO1db6NpymuEarcVlH8cpP7KwJst30CgSTjE=;
        b=chNhYVmb7kuF0GC1G+A3MLFxR9+3MA402SF90aS3uHOc6Vo+RzY6XqxGEQdVN1/QSe
         T0yMgzDADN0GnRoDSTSFCWXak6e/u+xp6yBfp9IDfPXJFNOn0MXG5AF2FL+bf6SQw2o3
         CPI3qGx5iDDr6DKHtK8XRY4/+3/e6h4iv3KdfjWvnHzKRwW7h/DcMYvb/ZMmbCSrwehq
         f7mjOfP3YgpAc5ruywt7A8h8Im5Re/3IT3+sRIfCBl4ruNr23MLAd6sWN7vq3Y2NZ98f
         COERruSYGUnVAIUp9kseygg8j+nWVR/TvqEYaWZvC5udM030RIjwn/65Rqx19ySpwm8U
         AEAQ==
X-Gm-Message-State: AOAM5316QADy4x4iCDIbKqYA/v+7RXW8eREXI5E31MZkrf/GtPraQTp4
        VhDdwJTHUmjH4b8IcN10TGr8IA==
X-Google-Smtp-Source: ABdhPJw2mU0s1CVx/DWijTgytaKl9ZPqK2UNfp6KnR/HuEl7VMgYwmGqFL9mheLYSqTLxJ6NgdatWQ==
X-Received: by 2002:a17:907:72c3:b0:6e8:b602:9793 with SMTP id du3-20020a17090772c300b006e8b6029793mr6276288ejc.704.1649854600433;
        Wed, 13 Apr 2022 05:56:40 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-95-245-147-71.retail.telecomitalia.it. [95.245.147.71])
        by smtp.gmail.com with ESMTPSA id f12-20020a1709067f8c00b006e88b1556f4sm3941781ejr.212.2022.04.13.05.56.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Apr 2022 05:56:39 -0700 (PDT)
From:   Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
Cc:     tommaso.merciai@amarulasolutions.com,
        linux-amarula@amarulasolutions.com,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Li Jun <jun.li@nxp.com>, Tim Harvey <tharvey@gateworks.com>,
        Richard Zhu <hongxing.zhu@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: imx8mm-evk: add pwm1/backlight support
Date:   Wed, 13 Apr 2022 14:56:35 +0200
Message-Id: <20220413125636.28650-1-tommaso.merciai@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add pwm1/backlight support nodes for imx8mm_evk board.
Align with u-boot dts

References:
 - https://patchwork.ozlabs.org/project/uboot/patch/20220326111911.13720-9-tommaso.merciai@amarulasolutions.com/

Signed-off-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
---
Changes since v1:
 - Fix commit body
 - Enable pwm, backlight

 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
index 6d67df7692f1..4c18f8fcd377 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
@@ -59,6 +59,15 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
 		enable-active-high;
 	};
 
+	backlight: backlight {
+		status = "okay";
+		compatible = "pwm-backlight";
+		pwms = <&pwm1 0 5000000>;
+		brightness-levels = <0 255>;
+		num-interpolated-steps = <255>;
+		default-brightness-level = <250>;
+	};
+
 	ir-receiver {
 		compatible = "gpio-ir-receiver";
 		gpios = <&gpio1 13 GPIO_ACTIVE_LOW>;
@@ -395,6 +404,12 @@ &wdog1 {
 	status = "okay";
 };
 
+&pwm1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_backlight>;
+	status = "okay";
+};
+
 &iomuxc {
 	pinctrl_fec1: fec1grp {
 		fsl,pins = <
@@ -549,4 +564,10 @@ pinctrl_wdog: wdoggrp {
 			MX8MM_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B	0x166
 		>;
 	};
+
+	pinctrl_backlight: backlightgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_GPIO1_IO01_PWM1_OUT	0x06
+		>;
+	};
 };
-- 
2.25.1

