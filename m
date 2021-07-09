Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E3303C28F8
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 20:23:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229499AbhGIS0W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jul 2021 14:26:22 -0400
Received: from mo4-p00-ob.smtp.rzone.de ([85.215.255.24]:26988 "EHLO
        mo4-p00-ob.smtp.rzone.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229491AbhGIS0W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jul 2021 14:26:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1625855016;
    s=strato-dkim-0002; d=gerhold.net;
    h=Message-Id:Date:Subject:Cc:To:From:Cc:Date:From:Subject:Sender;
    bh=807nH3IImsijzSN7Ub0/B0AZ9EiwASXYOQFGdvH52Tc=;
    b=Fph8v6w8/sGRlYe7D65HsqZGvlpGTuKUGLXieFwXffDEuXC/llM7psZev025ejzJfT
    A7AfhSIMcQtUUsZLZjAZPoYJY2BI/N9q2jgTKrKfL8q35NcMxMqBHI8gKqD7A/3HrvYL
    TRNZNMPlZ2630/fsp2uqQ1C/r5Torx25oW1veFP1cEZugNaFZCCKcdmc9u0kiHLfld20
    vGKTKm+0OA0v242CPlTgUiMPc+nkf1t5ezfumMGFyPZs2fcSJGUQNUNZTu2/Pz/fiZ8i
    lbR8mGU/FRWgscTg5O84SHM9MSVeEYbYS3JuC3BL+k6yWERb/hIGSjGGT/VLkSasH81S
    m96g==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXS7IYBkLahKxO426NyZ1L"
X-RZG-CLASS-ID: mo00
Received: from droid..
    by smtp.strato.de (RZmta 47.28.1 DYNA|AUTH)
    with ESMTPSA id Y070ccx69INaxPu
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
    Fri, 9 Jul 2021 20:23:36 +0200 (CEST)
From:   Stephan Gerhold <stephan@gerhold.net>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH] ARM: dts: ux500: ab8500: Link USB PHY to USB controller node
Date:   Fri,  9 Jul 2021 20:22:34 +0200
Message-Id: <20210709182234.47232-1-stephan@gerhold.net>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

At the moment the AB8500 USB PHY driver still uses the old USB PHY
subsystem instead of the generic PHY subsystem. This means that there
is no explicit link between the USB controller and the USB PHY.

In U-Boot the PHY driver is integrated in the generic PHY subsystem,
so we need to use the typical PHY device tree bindings to specify
which PHY belongs to the USB controller.

Add the link between USB controller and PHY to both ste-ab8500.dtsi
and ste-ab8505.dtsi. This is mainly for U-Boot for now and will just
be ignored in Linux. However, if the AB8500 USB PHY driver in Linux
is moved to the generic PHY subsystem at some point these device tree
changes can be used as well.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/boot/dts/ste-ab8500.dtsi | 8 +++++++-
 arch/arm/boot/dts/ste-ab8505.dtsi | 6 ++++++
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/ste-ab8500.dtsi b/arch/arm/boot/dts/ste-ab8500.dtsi
index d0fe3f9aa183..bebcbb759794 100644
--- a/arch/arm/boot/dts/ste-ab8500.dtsi
+++ b/arch/arm/boot/dts/ste-ab8500.dtsi
@@ -217,7 +217,7 @@ ab8500_chargalg {
 					battery		= <&ab8500_battery>;
 				};
 
-				ab8500_usb {
+				ab8500_usb: ab8500_usb {
 					compatible = "stericsson,ab8500-usb";
 					interrupts = <90 IRQ_TYPE_LEVEL_HIGH>,
 						     <96 IRQ_TYPE_LEVEL_HIGH>,
@@ -238,6 +238,7 @@ ab8500_usb {
 					musb_1v8-supply = <&db8500_vsmps2_reg>;
 					clocks = <&prcmu_clk PRCMU_SYSCLK>;
 					clock-names = "sysclk";
+					#phy-cells = <0>;
 				};
 
 				ab8500-ponkey {
@@ -386,5 +387,10 @@ dsi@a0353000 {
 				vana-supply = <&ab8500_ldo_ana_reg>;
 			};
 		};
+
+		usb_per5@a03e0000 {
+			phys = <&ab8500_usb>;
+			phy-names = "usb";
+		};
 	};
 };
diff --git a/arch/arm/boot/dts/ste-ab8505.dtsi b/arch/arm/boot/dts/ste-ab8505.dtsi
index 0defc15b9bbc..fb30e247ac9c 100644
--- a/arch/arm/boot/dts/ste-ab8505.dtsi
+++ b/arch/arm/boot/dts/ste-ab8505.dtsi
@@ -201,6 +201,7 @@ ab8500_usb: ab8500_usb {
 					musb_1v8-supply = <&db8500_vsmps2_reg>;
 					clocks = <&prcmu_clk PRCMU_SYSCLK>;
 					clock-names = "sysclk";
+					#phy-cells = <0>;
 				};
 
 				ab8500-ponkey {
@@ -322,5 +323,10 @@ dsi@a0353000 {
 				vana-supply = <&ab8500_ldo_ana_reg>;
 			};
 		};
+
+		usb_per5@a03e0000 {
+			phys = <&ab8500_usb>;
+			phy-names = "usb";
+		};
 	};
 };
-- 
2.32.0

