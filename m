Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6311C31C31F
	for <lists+devicetree@lfdr.de>; Mon, 15 Feb 2021 21:42:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229651AbhBOUl5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Feb 2021 15:41:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229617AbhBOUl4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Feb 2021 15:41:56 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6366C061756
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 12:41:15 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id k22so8774945ljg.3
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 12:41:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X6cRi5iB+RmhFHWpgneVYfTKCJ7xAR/n7ekYwFpABDw=;
        b=K7L3q5uRqFy5c/kJIzkddW8tZcePYGAM/ck8R5WFYXVPjF/RaVgNFDLvR/8Q9PgalH
         b4hFmKsEipCepuShtYWl/Ux3J0Mw6AjyX1Fj+PQ0Kd3DvL5Fmfc/3EErX+W3KN2I3jC/
         X7Rg14G1Pl+fdN2KSh6ZSPGd2uh4XZC//O+0qFyBbZbQOknZIlasR0gLql6NLDKol+yd
         FzUk0P4MBJVO7I3MngvHhyOyyeRjFfgyai25EAGAUoEmRtUICM6A39Gqy/HRrXrTd3Ny
         wQ1VMASNaTTKX14j1Njsh6v/ari/Mnq+FAO+ndUckxR55ARBiJxHyr3wHSB3HA/I0ys7
         2/JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X6cRi5iB+RmhFHWpgneVYfTKCJ7xAR/n7ekYwFpABDw=;
        b=ikgbJb7wu8vgBvpxwPdo4G7HC5vynGLm6QaEg8bkifF49Rlcap8nMF8z44/uoDx6/U
         Ua6BvNgZnpvSNVUyvmyLQgT9jhcQNlwcRZDBPm6rfePz4Ba502pmi6AYs3uyNiM7gi2o
         0ofmjR0ojP4NJxkTqQppAc+ZMAVNkVbl0fOSeD5niBeTzLK8iO2z58RRRS4Pwu84zYiq
         eUQ7j7DTFuAibqvour/GST5PwarP9LnjUKJq9zbDHL6vp7bWnQmiUuPbnhpjZxiNeokr
         iZ50LSpdk7sjbuw2eMN5c0D9OqBTaTJWmI1/2gbkQVrd5H+LVhwTadGYGi4VTUz6zX9l
         70tQ==
X-Gm-Message-State: AOAM531OjaO9vHfXt0isoGzdfp2jcq0YBzrvxQjvfDwyR2m/+Clzsvf0
        fAlt85d/GZPxZx25Vl2c+Os=
X-Google-Smtp-Source: ABdhPJy2YwKxA8K7voIIti7KXbFptCHhFdOxZfbHHgk4Vyd3iV+cYH/ex4SWDWDApaQDCZV8wIIy+Q==
X-Received: by 2002:a05:651c:1195:: with SMTP id w21mr2257906ljo.292.1613421674207;
        Mon, 15 Feb 2021 12:41:14 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id x36sm2922841lfu.129.2021.02.15.12.41.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 12:41:13 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/5] arm64: dts: broadcom: bcm4908: describe USB PHY
Date:   Mon, 15 Feb 2021 21:41:01 +0100
Message-Id: <20210215204105.27830-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

BCM4908 uses slightly modified STB family USB PHY. It handles OHCI/EHCI
and XHCI. It requires powering up using the PMB.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../bcm4908/bcm4906-netgear-r8000p.dts        | 17 +++++++++++++
 .../bcm4908/bcm4908-asus-gt-ac5300.dts        | 17 +++++++++++++
 .../boot/dts/broadcom/bcm4908/bcm4908.dtsi    | 25 ++++++++++++++++---
 3 files changed, 55 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
index ee3ed612274c..bf0d534ace2e 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
@@ -26,6 +26,23 @@ wps {
 	};
 };
 
+&usb_phy {
+	brcm,ioc = <1>;
+	status = "okay";
+};
+
+&ehci {
+	status = "okay";
+};
+
+&ohci {
+	status = "okay";
+};
+
+&xhci {
+	status = "okay";
+};
+
 &nandcs {
 	nand-ecc-strength = <4>;
 	nand-ecc-step-size = <512>;
diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
index 6e4ad66ff536..bb06683d6acf 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
@@ -44,6 +44,23 @@ brightness {
 	};
 };
 
+&usb_phy {
+	brcm,ioc = <1>;
+	status = "okay";
+};
+
+&ehci {
+	status = "okay";
+};
+
+&ohci {
+	status = "okay";
+};
+
+&xhci {
+	status = "okay";
+};
+
 &ports {
 	port@0 {
 		label = "lan2";
diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index 9354077f74cd..358958105337 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -2,6 +2,8 @@
 
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/phy/phy.h>
+#include <dt-bindings/soc/bcm-pmb.h>
 
 /dts-v1/;
 
@@ -110,24 +112,39 @@ soc {
 		#size-cells = <1>;
 		ranges = <0x00 0x00 0x80000000 0x281000>;
 
-		usb@c300 {
+		usb_phy: usb-phy@c200 {
+			compatible = "brcm,bcm4908-usb-phy";
+			reg = <0xc200 0x100>;
+			reg-names = "crtl";
+			power-domains = <&pmb BCM_PMB_HOST_USB>;
+			dr_mode = "host";
+			brcm,has-xhci;
+			brcm,has-eohci;
+			#phy-cells = <1>;
+			status = "disabled";
+		};
+
+		ehci: usb@c300 {
 			compatible = "generic-ehci";
 			reg = <0xc300 0x100>;
 			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&usb_phy PHY_TYPE_USB2>;
 			status = "disabled";
 		};
 
-		usb@c400 {
+		ohci: usb@c400 {
 			compatible = "generic-ohci";
 			reg = <0xc400 0x100>;
 			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&usb_phy PHY_TYPE_USB2>;
 			status = "disabled";
 		};
 
-		usb@d000 {
+		xhci: usb@d000 {
 			compatible = "generic-xhci";
 			reg = <0xd000 0x8c8>;
 			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&usb_phy PHY_TYPE_USB3>;
 			status = "disabled";
 		};
 
@@ -222,7 +239,7 @@ procmon: syscon@280000 {
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			power-controller@2800c0 {
+			pmb: power-controller@2800c0 {
 				compatible = "brcm,bcm4908-pmb";
 				reg = <0x2800c0 0x40>;
 				#power-domain-cells = <1>;
-- 
2.26.2

