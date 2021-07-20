Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 067353D0322
	for <lists+devicetree@lfdr.de>; Tue, 20 Jul 2021 22:46:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230462AbhGTT7m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jul 2021 15:59:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236534AbhGTTne (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jul 2021 15:43:34 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 352D0C061574
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 13:24:09 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id w194so533779oie.5
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 13:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Eq/uiZDuvdJ/Xw4zS+t5ljdYkTNbxJWlm0+PiRx6ysk=;
        b=PitbgXY23zjfZsNjnv37vYkjSj1Kr2jR3jhnJp3VJ6O2dk8n/+zXfDedz0kJZTiDXc
         MkpLUmeFLBwTFwq6TYwtwmoXAWjAAMrIarPNZSDXf3rLQt/cgO8E5FqL6iBb40iL8qBx
         zuus4A5uJfdoLQD/DHMGhGGhhJJHfVXhm702fLQL4fD4lGMb24huIinyLiVmGTP1HSE/
         J4jEmvxjPkFxbfTPBGQrz0/JPr6CxLrQbOdDa5mSXubt1Gm35dEaq6CNMln4vP+JiO09
         Ajh87TANIGgRy13Ohf+tVhc/rNrhM32Q1mXskAtsGNHEzOQ4aJqVekvqDAQMA3Vr4ukU
         YhxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Eq/uiZDuvdJ/Xw4zS+t5ljdYkTNbxJWlm0+PiRx6ysk=;
        b=H3ZKxRRw0Rrh8zdA3Nsk9mkCWXv9uYIzlAx3378RK+U+mHIEniAN75wsfAW3nlS8c0
         WEI4H4B2cuhmhhkF//kKo6jldBtNxoRtiz/DC28QAwOKlY4JohN6Ez/UGUMlmZSECnFW
         L+aMKl52aW2WwHhFdm0fBBlBlSsWxknl8l4Bk1m2mxFqeA17XrG5vuw4A8YHO5uaRVUO
         xG8EeTecHq64vZ5T1oSypEsq3GVrIMktkDq0wtCZRJmLwRjgT9lL5ALC2R4bAUdiKQby
         86aHCg0bunbPlS0+PKAyk3W0vdtpU3l/cIVOjq48/esGYddS7MdwiWqZjwOjVt4VajcO
         5boQ==
X-Gm-Message-State: AOAM530tH6K+tpgKBCwlFvTGM8rfz8QMd1us41PjClS3lU4xJevlFxqa
        u8CzO/NvYJbFV3hY5Yiv71+JV5MzVd4=
X-Google-Smtp-Source: ABdhPJxXpyzamO2OP/05X7FkjFdLp7jDw+Uo6hoh0iDxvU5CkKRAY8LSWEP7YhfeRCMx1q5O1bnSEg==
X-Received: by 2002:aca:4dc6:: with SMTP id a189mr174778oib.166.1626812648136;
        Tue, 20 Jul 2021 13:24:08 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id v7sm4148162ooj.46.2021.07.20.13.24.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jul 2021 13:24:07 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, heiko@sntech.de, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Correct regulator for USB host
Date:   Tue, 20 Jul 2021 15:23:54 -0500
Message-Id: <20210720202354.5179-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

When writing a battery driver, I noticed that the USB voltage was ~3.7V
while running off of battery on a mainline kernel. After consulting the
schematics for the Odroid Go Advance, it appears that the BOOST
regulator is involved in the process of powering the USB host. Power
for the USB host goes from the vccsys regulator into the PMIC, then out
from the PMIC BOOST regulator into the FC9516A (which is controlled by
GPIO), which then feeds power into the USB host. I also added the
vcc_host regulator as the phy-supply for the host USB port, which
accurately describes the hardware. I named the regulator usb_midu
because on the datasheet the pin is described as "MIDU/BOOST - middle
point of USB power supply / boost output". Making these changes solved
the USB power issue on battery and I'm now reading approximately 5V.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index 7fc674a99a6c..79d2f86ab46d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -207,7 +207,7 @@ vcc_host: vcc_host {
 		gpio = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 		regulator-always-on;
-		vin-supply = <&vccsys>;
+		vin-supply = <&usb_midu>;
 	};
 };
 
@@ -311,6 +311,7 @@ rk817: pmic@20 {
 		vcc5-supply = <&vccsys>;
 		vcc6-supply = <&vccsys>;
 		vcc7-supply = <&vccsys>;
+		vcc8-supply = <&vccsys>;
 
 		regulators {
 			vdd_logic: DCDC_REG1 {
@@ -460,6 +461,14 @@ regulator-state-mem {
 					regulator-suspend-microvolt = <3000000>;
 				};
 			};
+
+			usb_midu: BOOST {
+				regulator-name = "usb_midu";
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5400000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
 		};
 
 		rk817_codec: codec {
@@ -525,6 +534,7 @@ &u2phy {
 	status = "okay";
 
 	u2phy_host: host-port {
+		phy-supply = <&vcc_host>;
 		status = "okay";
 	};
 
-- 
2.25.1

