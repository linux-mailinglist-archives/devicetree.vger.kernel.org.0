Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA1DF40EAAA
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 21:09:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233270AbhIPTLG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 15:11:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230515AbhIPTLG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 15:11:06 -0400
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56753C061574
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 12:09:45 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id 6so10457240oiy.8
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 12:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RLRBlnVNi17+ow5TrySaM4i4u5LdTRHPbnI02x12qH0=;
        b=Bj6VSBPwrKgMAmJr7eDmeyOqRnppCyyGPf+Z87vDRoG5S1ecfOYekYQFzOByKwPjXL
         yDaTu1LOnvDyNC0k02nWOdLBjKXTKSomzMrSCnZudMYiy+qwiNBUWBOuEwVJgvhKWXC+
         B6TBr17aalAOPFw4/Emp5/ajJxwXT5x3BVIRjvBbHcjkUa3+4LyjSLJqE9unofpIPO/K
         NXXCZkL/YjBaZzjN4pQgBco2Rr90MNIbJy4r1+IYt/gokzXIPklrlO+FUP2T3U0gq7Dt
         RdxiTqVv9oLu3DAVeh/DXGWqYSqPtUuUFMw1rDHOCIJLFMK1qzM7pzkQb0CmC3FIe9Y2
         4t8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RLRBlnVNi17+ow5TrySaM4i4u5LdTRHPbnI02x12qH0=;
        b=qbu5rJ712MTWzlW+ION6Td1bLhftCePxbEZR35AsAQYKL2ytJnye+2vIH38E0DeIWj
         UG952DlTtEnJ/rZMuoJ/c532l/VEOVdXghmTXWfQTcBOwbFaz6Q9XP/3NajSl+Tj4TwG
         rXBYlBYRwAUart+KfiwPyhY5WDjApxsm17pxFlvMA9l2s1AbFTIpf0zfm3tR7F2jZF0n
         QvbJhe6XHGtEaHnFhpApjDoR52TtmXxtMR7eyh1qEn/nkBD6agzUSvEYOC82LUx4nGoU
         lMNoYwqu4tTniD0YeMnnqYju9/g/jQK9iBFfLvzm0+W+TzERU8//3kNrEE1qG00qDXEh
         hrdQ==
X-Gm-Message-State: AOAM53014yzZAQedadcqlDlxpOkSGaQQdA7/68Dik1rQLUo4Xq1Zq7UT
        OyEtMWzdijWtc/Tg0BDN53RKTpnWylE=
X-Google-Smtp-Source: ABdhPJwBtS1W/QntHfjSnkquwQuMfavF2gDEgmczU80Lll3g6PeZc2vnPJicVDXeID5MBsQ14lyfgw==
X-Received: by 2002:a05:6808:997:: with SMTP id a23mr10600919oic.11.1631819383749;
        Thu, 16 Sep 2021 12:09:43 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id w24sm318260oow.5.2021.09.16.12.09.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 12:09:43 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, heiko@sntech.de, robh+dt@kernel.org,
        maccraft123mc@gmail.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v3] arm64: dts: rockchip: Correct regulator for USB host
Date:   Thu, 16 Sep 2021 14:09:38 -0500
Message-Id: <20210916190938.6175-1-macroalpha82@gmail.com>
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
GPIO), which then feeds power into the USB host. I named the regulator
usb_midu because on the datasheet the pin is described as "MIDU/BOOST -
middle point of USB power supply / boost output". Making these changes
solved the USB power issue on battery and I'm now reading approximately
5v.

Note that on my board at least there is a difference in time from the
USB PHY probing and the regulators being powered on. This causes the
USB port to be undervolted for a few seconds during boot up. The
solutions to this problem are either 1) to add the proper phy-supply
on the host port, or to 2) add regulator-boot-on to the regulator. I
chose to add regulator-boot-on because there is an issue with the phy
clk that causes a warning when booting (see v1 of this patch series).
Basically the clock usb480m is a child of the usb480m_phy clock (used
by the USB PHY) and also a critical clock. Setting the phy-supply
causes this driver to be EPROBE_DEFERed until the regulator is ready,
however upon unregistering the driver to be probed later the system
cannot remove the usb480m_phy clock due to a child being marked
critical.

Changes since v2:
 - Added notes about clk problem and regulator voltage at boot.
 - Added regulator-boot-on as a workaround for the voltage at boot.
 - Removed note about fixed regulator warning, as that has been
   fixed upstream.

Changes since v1:
 - Removed phy-supply, as this generated a warning in dmesg.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index 7fc674a99a6c..8985efccbb4d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -207,7 +207,8 @@ vcc_host: vcc_host {
 		gpio = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 		regulator-always-on;
-		vin-supply = <&vccsys>;
+		regulator-boot-on;
+		vin-supply = <&usb_midu>;
 	};
 };
 
@@ -311,6 +312,7 @@ rk817: pmic@20 {
 		vcc5-supply = <&vccsys>;
 		vcc6-supply = <&vccsys>;
 		vcc7-supply = <&vccsys>;
+		vcc8-supply = <&vccsys>;
 
 		regulators {
 			vdd_logic: DCDC_REG1 {
@@ -460,6 +462,14 @@ regulator-state-mem {
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
-- 
2.25.1

