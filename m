Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FB074FFAFA
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 18:09:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232770AbiDMQL1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 12:11:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbiDMQL1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 12:11:27 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5035966CA7
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 09:09:05 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id b15so2987098edn.4
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 09:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UHgRvgx7SYkj5pmKsaI78m5hk2m1gV/Mhyu2PiUCr4E=;
        b=lBWu77Y5D2mXiuJjDT0MwNKo4A9phca9/l3ON7aH+9P/8o1crWjKtyOgzTb9xU22b9
         7aVTH9ZGs6JjySr9UuH8nGq/ISCdGFOLsZ4UR+IKEGEWHTPoPfamJO4M13rX2YBRB2JR
         VwpNLfXuj30Zt7vEd7WXD6Z25w3WffY1aQ5Og=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UHgRvgx7SYkj5pmKsaI78m5hk2m1gV/Mhyu2PiUCr4E=;
        b=AZe5NT2NOQPcj7Gkrq0otTEerljifelcnuzuyT94SfdBFjlSiy6S325pNlpx1Gy+zH
         AWV9sHFPY9xherN1DxQcqa+qXATuJlN0g+5xVzBz1LFwT2FBuwFrVR15RZUtqb1nEz4J
         jIlfiwDgdqxRnbwdjzWviIp1NTvPacbK5i56p5AaBWMSgk2ilh0GJV/RuFARmAdX7CJs
         tTp6WKL5Bqh0xJ+6UKSu/BxyB0esxgcFC3n6rsYYHYi6IXDrBiQgflP8Ia6on8NiX8V8
         kXbhyEZ1tmG61nckiy4UtH85AXbOIii+F9/YhOGynsixA8K+/EbsirfZ/PkZiwlwRdaG
         5L2w==
X-Gm-Message-State: AOAM530R1BKddj0sWC/W3hzLRSTx+aYvBMvbcuG8y5iL958l9vGpw3fV
        XEDowD25huxe6YnF/HTZmmqC6Q==
X-Google-Smtp-Source: ABdhPJzL+8K6wO1ADFpY262+dLQBXel1bmtF0/jCpFTKg6WqCNHpdMZbwaMQfOhRyXlG2ARv/+PYBw==
X-Received: by 2002:a05:6402:1c1e:b0:416:5b93:eacf with SMTP id ck30-20020a0564021c1e00b004165b93eacfmr44827620edb.302.1649866143905;
        Wed, 13 Apr 2022 09:09:03 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-95-245-147-71.retail.telecomitalia.it. [95.245.147.71])
        by smtp.gmail.com with ESMTPSA id kk23-20020a170907767700b006e8a6e53a7bsm125399ejc.139.2022.04.13.09.09.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Apr 2022 09:09:03 -0700 (PDT)
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
        Richard Zhu <hongxing.zhu@nxp.com>,
        Tim Harvey <tharvey@gateworks.com>, Li Jun <jun.li@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3] arm64: dts: imx8mm-evk: add pwm1/backlight support
Date:   Wed, 13 Apr 2022 18:08:59 +0200
Message-Id: <20220413160900.36271-1-tommaso.merciai@amarulasolutions.com>
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

Changes since v2:
 - Remove status okay from pwm1,backlight (enable as default)

 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
index 6d67df7692f1..c50d2cc3ca71 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
@@ -59,6 +59,14 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
 		enable-active-high;
 	};
 
+	backlight: backlight {
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
@@ -395,6 +403,11 @@ &wdog1 {
 	status = "okay";
 };
 
+&pwm1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_backlight>;
+};
+
 &iomuxc {
 	pinctrl_fec1: fec1grp {
 		fsl,pins = <
@@ -549,4 +562,10 @@ pinctrl_wdog: wdoggrp {
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

