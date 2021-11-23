Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62311459ECF
	for <lists+devicetree@lfdr.de>; Tue, 23 Nov 2021 10:03:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230416AbhKWJHF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Nov 2021 04:07:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232432AbhKWJHC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Nov 2021 04:07:02 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89DE8C061714
        for <devicetree@vger.kernel.org>; Tue, 23 Nov 2021 01:03:54 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id k23so9769791lje.1
        for <devicetree@vger.kernel.org>; Tue, 23 Nov 2021 01:03:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M/z5Vz69s5nr1kpYYcK91ofPakub5omF5cpfR8mSR/M=;
        b=B1ecVDUzzaXMXC6qlS5eBs47/M+Cc6LxYBLeiU+jckbbZJu/dHNydItqweNvjvH/Iz
         QUF6CIRCny9AnO2FYfKVrJ+gOJ6I4iExcL7B+Gju5HRdBfAkGR2Y1AzKe6enj+oCxBan
         sHvhYYHhF9I3ofCOJbWTpZnEBRwxZWs/RBlg+ePH8ePQ0cyDGWpQZDjBAQQvd5ZAgz9J
         AXK11L3eg3HpL+PaEouA/PC1znwEUOUAUylu5PzsJRfdWVwiPqgNnxQCkFBdNBV5Otcv
         UttmpdgIH6hmd2k+QdXNsvQ7h2tIqffVgfV853aJSOH8/01Zwb7Ay+orZfUV4Nkm+a1+
         5thQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M/z5Vz69s5nr1kpYYcK91ofPakub5omF5cpfR8mSR/M=;
        b=xZmc6E3YJfMW18AzkfoV5WLYVc8iB2u/5JoLFDNnp12AqwcfoAXBftZ8yKMVGfgFCl
         8zyopRFDE12fI6EEzbYwL5HUnxZ21J8Fs5FDJ8fMDeNRnhuYhLnGJQ4OJN1Xo86gAKrp
         h1O0sKQk+tvubK3LCKxxd1aqsUm1IDGcSmvLPl9hHrMRS3j7g7GHtUvx6xxIKvHSpa54
         vYLpG4/tkFRBvonkNDZS1SGqL8X+V5Zv9ajS9zs7VSm4J5YkTcSDghAOE+H3cKOoKdiC
         AJUSg1qy/Fky4+/KOlm+9W6eSpMRKGaAypJVNMaB4Q1zjwLPU1wNT5lqPdjjHH8mrsJD
         2U3w==
X-Gm-Message-State: AOAM533BTEkAfFQkURGwcmadxEb5Iekgl0nv8ouRVz18QflcVRw9DxaV
        XxP2dR35IfxUFkY5sSpYijE=
X-Google-Smtp-Source: ABdhPJybeK1dsDyG/9wDTJHXWMYUeeycpQJ1ks0+W5ygyb5bT4N5ITQobpofdxvOpg/dv0Zrvi03Jg==
X-Received: by 2002:a2e:3012:: with SMTP id w18mr3136484ljw.217.1637658232863;
        Tue, 23 Nov 2021 01:03:52 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id e29sm1226060lfb.111.2021.11.23.01.03.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Nov 2021 01:03:52 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: use non-deprecated USB 2.0 PHY binding
Date:   Tue, 23 Nov 2021 10:03:33 +0100
Message-Id: <20211123090333.11597-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

The new binding covers a single reg and uses syscon to reference shared
register.

References: 55b9b741712d ("dt-bindings: phy: brcm,ns-usb2-phy: bind just a PHY block")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm5301x.dtsi | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
index e1cffef4935a..588e57db6859 100644
--- a/arch/arm/boot/dts/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/bcm5301x.dtsi
@@ -148,15 +148,6 @@ periph_clk: periph_clk {
 		};
 	};
 
-	usb2_phy: usb2-phy@1800c000 {
-		compatible = "brcm,ns-usb2-phy";
-		reg = <0x1800c000 0x1000>;
-		reg-names = "dmu";
-		#phy-cells = <0>;
-		clocks = <&genpll BCM_NSP_GENPLL_USB_PHY_REF_CLK>;
-		clock-names = "phy-ref-clk";
-	};
-
 	axi@18000000 {
 		compatible = "brcm,bus-axi";
 		reg = <0x18000000 0x1000>;
@@ -448,7 +439,16 @@ genpll: clock-controller@140 {
 						     "sata1", "sata2";
 			};
 
-			syscon@180 {
+			usb2_phy: phy@164 {
+				compatible = "brcm,ns-usb2-phy";
+				reg = <0x164 0x4>;
+				brcm,syscon-clkset = <&cru_clkset>;
+				clocks = <&genpll BCM_NSP_GENPLL_USB_PHY_REF_CLK>;
+				clock-names = "phy-ref-clk";
+				#phy-cells = <0>;
+			};
+
+			cru_clkset: syscon@180 {
 				compatible = "brcm,cru-clkset", "syscon";
 				reg = <0x180 0x4>;
 			};
-- 
2.31.1

