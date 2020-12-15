Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41A442DB60D
	for <lists+devicetree@lfdr.de>; Tue, 15 Dec 2020 22:50:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729506AbgLOVX3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Dec 2020 16:23:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729807AbgLOVXZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Dec 2020 16:23:25 -0500
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF401C0617B0
        for <devicetree@vger.kernel.org>; Tue, 15 Dec 2020 13:22:44 -0800 (PST)
Received: by mail-lf1-x142.google.com with SMTP id x20so23589409lfe.12
        for <devicetree@vger.kernel.org>; Tue, 15 Dec 2020 13:22:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4wmym+efiM8WV7TEDNr4qc8aqC81NZZf8wS7Ce5Q2xc=;
        b=elDmDFsfIE+Yv5nqEIs1IdnNgAeI5ptd7N7u3PhrOGbfhNQ/VwdVKGqokg06zc3vlF
         SCF2P87Xzevdt047xekEIboTGcIif8UVeUC6BG5081oLpKFPmNe6E5y9PDnHNT4EakTA
         O0DCAKfpsotIlrjp4ufjfmvrQ/zdmSyItJVqexsM4Z5amSrEQCx8anjjWt8rHsNVOxtF
         RQAOEV+H5/vJyIgrq3wvs8J+KkMWB7rHOXy3fAS0HcNAXEJzNepcVjfKUpbnHxvjKEyV
         j94nQV1mj2gu1tyg8KqvZxQcqmT8sbWPs7dnLBJmxGQqH4osjNc3AEmc5bVVwYGTjnwb
         342A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4wmym+efiM8WV7TEDNr4qc8aqC81NZZf8wS7Ce5Q2xc=;
        b=VMKUkFNOPTX+6Nt9b8eYY9jsli4GXVFyAFKiqpzF9D8pa5xAZ3xEP4MklNKamlTY0t
         c9asq2Y+7dE6/KZlPvoO9z7gXe1y1JbLp25XGYfnqJBYQHu/lYAJJwzTGPUbSHPSYzrs
         iH5l1QrwQMBPWCr45FYjtaTRLDEl2N++ojQamuvfSeMqssKwnFHM3oUFNGYKcFRgg/RY
         z7hNdq8jv6ZYknFTGAHXRYbc3xMBButRUuCyd4CF8/DLq1q5zcJOEW+Je/nmlH+sod0Q
         3gwSlE72EZQ87155SGyORIgcWhbleqWGYXRuEyElEdt7sTwj6FLFQvXQuiD+SlFrApGR
         V09w==
X-Gm-Message-State: AOAM532QU9pujD1kgMD4OhHAe0rtlWnxO3z1GZ/PSJn4Vb8il7FmWbYA
        wqSY8jsIGvyrCWEDHh+WtP8=
X-Google-Smtp-Source: ABdhPJwtaD7pIUb4omoW+RokzeuyeBhHtTtFDwiCnZTmNBYknWYZNolDnomBvFfRCL5PqRlUfzRhdg==
X-Received: by 2002:a2e:b6d0:: with SMTP id m16mr11306164ljo.133.1608067363308;
        Tue, 15 Dec 2020 13:22:43 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id q9sm1904960ljm.113.2020.12.15.13.22.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Dec 2020 13:22:42 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcm4908: describe USB PHY
Date:   Tue, 15 Dec 2020 22:22:32 +0100
Message-Id: <20201215212232.11275-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

It's (nearly?) identical PHY as in the STB line and has to be
initialized the same way.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts |  4 ++++
 arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi   | 13 +++++++++++++
 2 files changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
index ee3ed612274c..e2bb0b04b524 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
@@ -26,6 +26,10 @@ wps {
 	};
 };
 
+&usb_phy {
+	brcm,ioc = <1>;
+};
+
 &nandcs {
 	nand-ecc-strength = <4>;
 	nand-ecc-step-size = <512>;
diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index b5b772a9a51b..a96ec9b85d1f 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -110,10 +110,21 @@ soc {
 		#size-cells = <1>;
 		ranges = <0x00 0x00 0x80000000 0x10000>;
 
+		usb_phy: usb-phy@c200 {
+			compatible = "brcm,brcmstb-usb-phy";
+			reg = <0xc200 0x100>;
+			reg-names = "crtl";
+			dr_mode = "host";
+			brcm,has-xhci;
+			brcm,has-eohci;
+			#phy-cells = <1>;
+		};
+
 		usb@c300 {
 			compatible = "generic-ehci";
 			reg = <0xc300 0x100>;
 			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&usb_phy PHY_TYPE_USB2>;
 			status = "disabled";
 		};
 
@@ -121,6 +132,7 @@ usb@c400 {
 			compatible = "generic-ohci";
 			reg = <0xc400 0x100>;
 			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&usb_phy PHY_TYPE_USB2>;
 			status = "disabled";
 		};
 
@@ -128,6 +140,7 @@ usb@d000 {
 			compatible = "generic-xhci";
 			reg = <0xd000 0x8c8>;
 			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&usb_phy PHY_TYPE_USB3>;
 			status = "disabled";
 		};
 	};
-- 
2.26.2

