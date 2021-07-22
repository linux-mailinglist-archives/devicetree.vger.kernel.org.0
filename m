Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3EDB3D2C46
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 21:03:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229897AbhGVSWp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jul 2021 14:22:45 -0400
Received: from mout.kundenserver.de ([212.227.126.130]:36989 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbhGVSWp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jul 2021 14:22:45 -0400
Received: from localhost.localdomain ([37.4.249.97]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MiaLn-1lUJ9M2Eh5-00fkNc; Thu, 22 Jul 2021 21:03:03 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Mateusz Kwiatkowski <kfyatek+publicgit@gmail.com>,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH] ARM: dts: bcm283x: Fix VEC address for BCM2711
Date:   Thu, 22 Jul 2021 21:02:08 +0200
Message-Id: <1626980528-3835-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:m+gtJAsQu3gGado4BZ0W8/gfi/o9zQQ8M74F6rwo3faScUMDQJr
 DOulsD9WkvkPZGnn4VFmR9zgy1MIe3yt9nla7Mv6GdpsqLoB4yvJ2i/21Y/PPhKHNi7G4UT
 ynn9SiKyJtcg9UjZc0mHEjRk2obecWlBSBiW7k2q621U6uGCgIo06kni2nBOmzGWSUb2Aoy
 uvc43oXQS8e3GU6QpTitg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iZUQgPrQN+k=:uhn8RMjKCFTyqL3bIsQ4py
 ZKDO/0KxBFDypMeXVEMXYZPkGI9KrK8zm9v9omUM0UGXFrlwM/etMQRzlLnbyzhU/oXYQ3FPc
 X7p07YUvs+wonwJezsBL2I7sQXS2VM6fLdnB0BpxwWEeEBRWp4tBOlWCabF5WbcoB7RGezyJz
 78OEYcW5VJHm2OKRmVTnBKyDS3HrpeFTApUyGn7QDegatdA4LlDB69XECRnYjvMtiaJNHjaCr
 ZoiDtTUXvs1nF1sbvEwjA7VtxxrwSLGyH8I8pWFmm3kaxIzNyzUZPODOFqXiWKAF5H7s97bEa
 tEwTneOQrtQ3NS6RtBqHz9mXfLHCAvky0nflcFlqzf75JBAyvAv0KemV+iQKsl/0Bt2RAzdbJ
 p/8Pz2rxTMlIOlykKoxm/FgIQMalXnIu6cSIg8EP93bsHSxIKa0RIvPfUPJsXMCZUFPNG8uWy
 qT5HReZ6OM4NrRrS2Yw11R56xHgqa84RV9dV2bPsld89+dMksW+1RFnGSXyLuMdBy9ykLZ+6x
 AIxf7/wIwJdiSu5HEhlwGKyGOjIpTsVdEB4kibIvu9DXQZUGD5+kcUsIXZisr8t81NGDmMxPc
 UZjE5K16kQJy/0/wLx74kl4v/5IA4P6tdAx4xwJ8Co0NvpD5SMDQWCfu1GxjaAjNpfUERWPOj
 wPkNWt7mtCCRojh/8dHlwqNXPLslBhAmn3gallhxVvtbAzDkwWY9CiZzhfDTzEQRaGX8iqOp4
 TQYODbJYtzqyYnb5erU+FDvWcCYc5H5NYU4Gq4xcsQetghdijd/o5KD1yPTppJaVAkm7TnypF
 C5pyd3e6YWqzLxOxBngzsa5GOPztTJyMPeU9YjzgIWvGJ97Br/H7y3aVQHt8c0yx1MMVhscZF
 IW1MFBpHWSzEpFUyZHHQ==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Mateusz Kwiatkowski <kfyatek+publicgit@gmail.com>

The VEC has a different address (0x7ec13000) on the BCM2711 (used in
e.g. Raspberry Pi 4) compared to BCM283x (e.g. Pi 3 and earlier). This
was erroneously not taken account for.

Definition of the VEC in the devicetrees had to be moved from
bcm283x.dtsi to bcm2711.dtsi and bcm2835-common.dtsi to allow for this
differentiation.

Fixes: 7894bdc6228f ("ARM: boot: dts: bcm2711: Add BCM2711 VEC compatible")
Signed-off-by: Mateusz Kwiatkowski <kfyatek+publicgit@gmail.com>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm2711.dtsi        | 8 ++++++++
 arch/arm/boot/dts/bcm2835-common.dtsi | 8 ++++++++
 arch/arm/boot/dts/bcm283x.dtsi        | 8 --------
 3 files changed, 16 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index b8a4096..734342c 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -300,6 +300,14 @@
 			status = "disabled";
 		};
 
+		vec: vec@7ec13000 {
+			compatible = "brcm,bcm2711-vec";
+			reg = <0x7ec13000 0x1000>;
+			clocks = <&clocks BCM2835_CLOCK_VEC>;
+			interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 		dvp: clock@7ef00000 {
 			compatible = "brcm,brcm2711-dvp";
 			reg = <0x7ef00000 0x10>;
diff --git a/arch/arm/boot/dts/bcm2835-common.dtsi b/arch/arm/boot/dts/bcm2835-common.dtsi
index 4119271..c25e797 100644
--- a/arch/arm/boot/dts/bcm2835-common.dtsi
+++ b/arch/arm/boot/dts/bcm2835-common.dtsi
@@ -106,6 +106,14 @@
 			status = "okay";
 		};
 
+		vec: vec@7e806000 {
+			compatible = "brcm,bcm2835-vec";
+			reg = <0x7e806000 0x1000>;
+			clocks = <&clocks BCM2835_CLOCK_VEC>;
+			interrupts = <2 27>;
+			status = "disabled";
+		};
+
 		pixelvalve@7e807000 {
 			compatible = "brcm,bcm2835-pixelvalve2";
 			reg = <0x7e807000 0x100>;
diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
index 0f3be55..a3e06b6 100644
--- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -464,14 +464,6 @@
 			status = "disabled";
 		};
 
-		vec: vec@7e806000 {
-			compatible = "brcm,bcm2835-vec";
-			reg = <0x7e806000 0x1000>;
-			clocks = <&clocks BCM2835_CLOCK_VEC>;
-			interrupts = <2 27>;
-			status = "disabled";
-		};
-
 		usb: usb@7e980000 {
 			compatible = "brcm,bcm2835-usb";
 			reg = <0x7e980000 0x10000>;
-- 
2.7.4

