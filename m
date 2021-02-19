Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C11C31F4E7
	for <lists+devicetree@lfdr.de>; Fri, 19 Feb 2021 06:51:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229498AbhBSFvd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Feb 2021 00:51:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbhBSFvb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Feb 2021 00:51:31 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7095CC061574
        for <devicetree@vger.kernel.org>; Thu, 18 Feb 2021 21:50:51 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id e17so13531239ljl.8
        for <devicetree@vger.kernel.org>; Thu, 18 Feb 2021 21:50:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X6cRi5iB+RmhFHWpgneVYfTKCJ7xAR/n7ekYwFpABDw=;
        b=oJIkzBWRehY9m6clxALzeXL22NeGZx8hHxsoLZRErZVKbOxWiJ0m65OTzpLr1D9Bcq
         qu6SOWw5T+NYR6IChh69ovtcgC1Q/+gZRH3lKaLGUxu568gt3twrv2vk7tYksTmlZzB3
         jBdbLXbc4Tpwrsq+QxcuqeoxEqeejkk2BqTRCfUA41aa4mO/eymj2ilb40JSESo9bNDA
         t7LG7ABMEuPhfuQ1o6s+8/RBGJla7TNCL27XMbc73A9KhPgEreUwiEEI4r8+sXv32INM
         ZBdIrGpxEis6vAmGX1qKWCGdAiuTeeRfTzsZmmDEs45cNVUHC8n5adbC/fiZ1xjSVsl7
         BD+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X6cRi5iB+RmhFHWpgneVYfTKCJ7xAR/n7ekYwFpABDw=;
        b=D8NU9jiFdStUjTJTtg4vXKH84aQdcm9AMQy2C8bqqGWJ8BC98Ib1WKiE63II+1Lf53
         QzQy/sxsxnzdxsa8TrRkRFu+gSw/Jk19Ptm4q55gQseNGUmo7N/n9KnKKbltX2iKPJ3z
         DHJtZuDeALjuKmNVSCV0X9DYmyz3u1EMlhsygoBNgYwKu3o5Z03bSaczCKPTsqxXtXuO
         nHXmsVjbtgj5i1GekB3Xt9lUgL+m1bov7/Q8fiojVwnEMSgGIPuMnN+IiPdnHdR/XfCO
         YBiEx1q6yxKdmBK32txmArpAmkn5EIRiMDA2Kq+QFU35nnsDW4vjwRjKH50bsEogrFao
         u2uw==
X-Gm-Message-State: AOAM531YLiwKkY5oLOLcIiwzSF/TE3HTyP7BG2lGOALB4p2xRlbH8tk6
        +hd4Je+OOpDQ427QEi5BJQc=
X-Google-Smtp-Source: ABdhPJzw+rZpC3gGi6UChACa7SeideTsht8uaX/zyHFLOFSrD0ET6LKWqsMeLds0oY9BTaH4EtveQA==
X-Received: by 2002:a2e:5ca:: with SMTP id 193mr4794291ljf.70.1613713849886;
        Thu, 18 Feb 2021 21:50:49 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id n8sm819712lfe.276.2021.02.18.21.50.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Feb 2021 21:50:49 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2 1/5] arm64: dts: broadcom: bcm4908: describe USB PHY
Date:   Fri, 19 Feb 2021 06:50:26 +0100
Message-Id: <20210219055030.3997-1-zajec5@gmail.com>
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

