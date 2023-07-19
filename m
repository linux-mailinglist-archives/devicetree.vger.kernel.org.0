Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A326075950D
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 14:22:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229616AbjGSMWK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 08:22:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229596AbjGSMWK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 08:22:10 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29CC01BFD
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 05:21:40 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-666eef03ebdso4548332b3a.1
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 05:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1689769296; x=1692361296;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9xcCLpmftHeGeQfoD14ubT9Bi8tdJw0Jz86kdTTP9jk=;
        b=N1vPVKH1XV02F4rt3itG2s4UdBXz1J1+d5A4tHtBnamSb27U82FLXEEk3Qrv4CNolx
         CWySiduSwSZX8JZpfeyJ9Mz5fDs8M8WqFoOjk1gDz8qS4KDuMAYKKLryD+kgG3sRgEIf
         /l2TGQ8SYgiIggC+Ad/kN6WXy7xuVnpBAK6Vw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689769296; x=1692361296;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9xcCLpmftHeGeQfoD14ubT9Bi8tdJw0Jz86kdTTP9jk=;
        b=Rd+LDo4puuNJIE0Kk6XNCVEqhVwACCYfvGELFk3YChryVwvLNAcO3VB55fIfkyMetA
         xgNpMdRVNKL+7TKgyVIO9k8uPD44qEB2WPjBQRkX9i2c4dIvxau1XAH/I/9HQyBWtuhv
         d4Y+exbaOXdRug6BVKeK4hvPnKPf1R4yW0C/KVfSPYRw66EakKDVEiYg9CwinOf5x7Jy
         ERtKTfiJB/MtL23yKfy9Pnkcnw/Wg9OJn4AN5ioLYg/I5QMXjxInPCDRjuwXB/3qAPnZ
         OqthG39otpd8lYi9bK9pnekL+edinvq/PPC+otjawqKogaNP86T/OdxcxHuMURwVJgIu
         2sOQ==
X-Gm-Message-State: ABy/qLb1QFMCeytgZyj5aCiBo2l5+dyb2BeLrZ4w9lE5qjo1Oz73vqOn
        SskfouxBvXVQPT4aYOCLSx3zbA==
X-Google-Smtp-Source: APBJJlF0jPy1ajqwBXDOriWABI0+r/gQfRfllY+z9iV0HlUvAyrGG6o+K5F6n8FGBq2zdGWS0U8/8g==
X-Received: by 2002:a05:6a21:328a:b0:130:d84b:eb91 with SMTP id yt10-20020a056a21328a00b00130d84beb91mr19548092pzb.49.1689769296577;
        Wed, 19 Jul 2023 05:21:36 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id i3-20020aa78b43000000b005d22639b577sm3166773pfd.165.2023.07.19.05.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jul 2023 05:21:35 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH] arm64: dts: rockchip: Enable TYPE-C PD for ROC-RK3399-PC
Date:   Wed, 19 Jul 2023 17:51:23 +0530
Message-Id: <20230719122123.3702588-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The power supply circuit in ROC-RK3399-PC is

Power Supply (or PPS) => FUSB => MP8859

VUBS pin of FUSB and IN pin of MP8859 is supplied via TYPEC_IN.

The MP8859 operated with 2.8V to 22V supply voltage and typical
applications this supply can be 12V.

This patch is trying to support the PD by changing the FUSB VBUS supply
to 12V and tune the I2C7 timings from downstream kernel.

Tested with PD3.0 PPS with supply voltages of 12V/3A and 20V/5A.

Cc: Corentin Labbe <clabbe@baylibre.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index c32913df93c3..8963b3858eae 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -6,6 +6,7 @@
 /dts-v1/;
 #include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/pwm/pwm.h>
+#include "dt-bindings/usb/pd.h"
 #include "rk3399.dtsi"
 #include "rk3399-opp.dtsi"
 
@@ -524,8 +525,9 @@ &i2c3 {
 };
 
 &i2c4 {
-	i2c-scl-rising-time-ns = <600>;
-	i2c-scl-falling-time-ns = <20>;
+	clock-frequency = <400000>;
+	i2c-scl-rising-time-ns = <345>;
+	i2c-scl-falling-time-ns = <11>;
 	status = "okay";
 
 	fusb1: usb-typec@22 {
@@ -552,8 +554,19 @@ fusb0: usb-typec@22 {
 		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&fusb0_int>;
-		vbus-supply = <&vcc_vbus_typec0>;
+		vbus-supply = <&dc_12v>;
 		status = "okay";
+
+		connector {
+			compatible = "usb-c-connector";
+			data-role = "dual";
+			label = "USB-C";
+			power-role = "sink";
+			try-power-role = "sink";
+			op-sink-microwatt = <10000000>;
+			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
+				     PDO_VAR(5000, 20000, 5000)>;
+		};
 	};
 
 	mp8859: regulator@66 {
-- 
2.25.1

