Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8DDB3500138
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 23:33:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230171AbiDMVfp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 17:35:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230251AbiDMVfo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 17:35:44 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 980FE716CD
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 14:33:19 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id m15-20020a7bca4f000000b0038fdc1394b1so1282971wml.2
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 14:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hrRXt3ZjySM6jgUEgS/sVOHo9ohL7qyGaHBQht/wgxc=;
        b=ofxA5ENYuBeWsh9HN3+JXYWKOQrmwTUWaZGi+J/HtU8IYH6k/AJoFt/uFPtKhXm5CO
         9ZLt3RamQNlm7SUz3pjDcLo4YT4xxFrZx0suG2JEjnzpEYvLSDCo4WsCcOM5zsH3F1zk
         BP3ihT0CfADW0BdxWESdHyOUjm9KAa6G7p3pU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hrRXt3ZjySM6jgUEgS/sVOHo9ohL7qyGaHBQht/wgxc=;
        b=3lwiQ0Uj3uhgVYgEmgKVsBKI7QSAnMw9rMrChuhNjMlrrJJv6DzitUmPx3D9YxgNU0
         DJiBEulfvnmVSxipkRggZJwmUXA2NflGIBUThTEPZ3dJ9qb7o07Tiw2DkO9SHKJB2A4V
         xkcqe39dKUnH+oqsu6u+mriuAu38hynmHtH4pazGBVEsOL589yFmzQ4KCU2CQrgDv+N3
         btZ0PbWro8kY7i4NZUnWdnTjeSc5sqTqbyTUQ+ekjV0AdN4iNjEZKLsKjIgVZQZbbE7n
         QNL3P62g4ddN30WCMYQlhwPH0/63WiAsE6sAYoKYo283kLSJLXhkVdHEojJMTQduT3vg
         JbCA==
X-Gm-Message-State: AOAM531wnVY4CH1H1PGTm9YZjjrfM+SglltFtBdk4bEkB70pebeBE6Df
        SdZfjnY/VAvBmWE5Ag5HXgkmBw==
X-Google-Smtp-Source: ABdhPJzsUmO8kaFAE2HlAxutOffK+wUwusjMwPRbY+zWnNYAOUOkfYlX4aOTNTcDbKiR/LT9pqiDrA==
X-Received: by 2002:a05:600c:1e1f:b0:38e:c3eb:2d9 with SMTP id ay31-20020a05600c1e1f00b0038ec3eb02d9mr117845wmb.90.1649885598155;
        Wed, 13 Apr 2022 14:33:18 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i.station (net-188-217-56-163.cust.vodafonedsl.it. [188.217.56.163])
        by smtp.gmail.com with ESMTPSA id ay41-20020a05600c1e2900b0038e75fda4edsm3025wmb.47.2022.04.13.14.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Apr 2022 14:33:17 -0700 (PDT)
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
        Li Jun <jun.li@nxp.com>, Richard Zhu <hongxing.zhu@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4] arm64: dts: imx8mm-evk: add pwm1/backlight support
Date:   Wed, 13 Apr 2022 23:33:11 +0200
Message-Id: <20220413213313.11511-1-tommaso.merciai@amarulasolutions.com>
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

Changes since v3:
 - Remove status okay only from backlight (enable as default), pwm1 is disabled
   on imx8mm.dtsi, we need to enable it

 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
index 6d67df7692f1..6a209395452a 100644
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
@@ -395,6 +403,12 @@ &wdog1 {
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
@@ -549,4 +563,10 @@ pinctrl_wdog: wdoggrp {
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

