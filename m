Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2F032AF42D
	for <lists+devicetree@lfdr.de>; Wed, 11 Nov 2020 15:56:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726710AbgKKO4F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Nov 2020 09:56:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726553AbgKKO4F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Nov 2020 09:56:05 -0500
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAB73C0613D1
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 06:56:04 -0800 (PST)
Received: by mail-lf1-x141.google.com with SMTP id r9so3483356lfn.11
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 06:56:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5mo666YSBU5ovvFTTsNPIpPYC5sRmMhnaZB4uuHdSS0=;
        b=Xr2YJpy4Uaw7TgCUqQ3bj8T6W/I+1yPO5MtAU/Ear4liQsfLC05gI/CLc4FI1331Il
         uny9sz87U/06nNloZNX84Aq85cLvv/MhuLHTctgNejgvRxTT5v9eiojypfbVuD0/WSLN
         Ft856KeTIx9uW4DhqpVR1QR3pdleAHN32razppJ/W9D3hg3DwgxgBgzXwkos/VMdDDoD
         CYs01j14ShRJl/+uSvA/c356VRi1Fk2t9X/01xa5i6ABGhyuF1TSs60uBNedjfnQOLhA
         HsEki3cGAPU2eN7h8/Td8cDMELrEgvJF8fPfvwrOcMNg5ImLJnn4P0nproDB5Pb4H0or
         Pgvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5mo666YSBU5ovvFTTsNPIpPYC5sRmMhnaZB4uuHdSS0=;
        b=NBNiOunNnMiSKc0xb9QsWacOYYSqSqgiwxy69uH8wrjuyLG5sx3Gf24dH2ddaJeUPo
         7s7DMv7BD1Mndta+DishyKmDJWr4nQ7lZWpf/I4Tb1K+8Z03Tk5C5Nnt8BeCsuGufD3K
         poBByulXwLNOrhQDO+5OW1Pk8XJtUTG3cuPJyjDkSBXDJj8FzZhRajw8FompdBWzpoWs
         SPlQkGqlZ1AFZ5wOP8SzF7sw2TMV7+3LwpbNjJWCleN26jvEiuD+Im8ijVEfs9b7TFIF
         4C7/HDaxH7qamAceku/Gw3nSv/btAzx5FgQc7HB8Ixf57QcW3g79MCb/vtIFjq+cUt2j
         5Dsw==
X-Gm-Message-State: AOAM533ntfglqNjka5RO92m817es39ANPEmbJcrR6C26qf/Dn5u6w/Jm
        P6C60Cj1xMVfvptpJULJeLe/OVypZDo=
X-Google-Smtp-Source: ABdhPJwZMdGWKZAEUmpD6+YKaLzchahBAr5WlUGwgb+/iYfX06vnbH5plPm1daITIxFD+KgZcuh33g==
X-Received: by 2002:a19:4843:: with SMTP id v64mr3116456lfa.273.1605106563425;
        Wed, 11 Nov 2020 06:56:03 -0800 (PST)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id z5sm257435ljk.136.2020.11.11.06.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2020 06:56:02 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: Move CRU devices to the CRU node
Date:   Wed, 11 Nov 2020 15:55:38 +0100
Message-Id: <20201111145538.14893-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Clocks and thermal blocks are part of the CRU ("Clock and Reset Unit" or
"Central Resource Unit").

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm5301x.dtsi | 51 +++++++++++++++++----------------
 1 file changed, 26 insertions(+), 25 deletions(-)

diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
index 3e55ff4fb550..8b8699f9ea4f 100644
--- a/arch/arm/boot/dts/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/bcm5301x.dtsi
@@ -428,6 +428,26 @@ cru@100 {
 			#address-cells = <1>;
 			#size-cells = <1>;
 
+			lcpll0: lcpll0@100 {
+				#clock-cells = <1>;
+				compatible = "brcm,nsp-lcpll0";
+				reg = <0x100 0x14>;
+				clocks = <&osc>;
+				clock-output-names = "lcpll0", "pcie_phy",
+						     "sdio", "ddr_phy";
+			};
+
+			genpll: genpll@140 {
+				#clock-cells = <1>;
+				compatible = "brcm,nsp-genpll";
+				reg = <0x140 0x24>;
+				clocks = <&osc>;
+				clock-output-names = "genpll", "phy",
+						     "ethernetclk",
+						     "usbclk", "iprocfast",
+						     "sata1", "sata2";
+			};
+
 			pin-controller@1c0 {
 				compatible = "brcm,bcm4708-pinmux";
 				reg = <0x1c0 0x24>;
@@ -454,32 +474,13 @@ pinmux_uart1: uart1 {
 					function = "uart1";
 				};
 			};
-		};
-	};
-
-	lcpll0: lcpll0@1800c100 {
-		#clock-cells = <1>;
-		compatible = "brcm,nsp-lcpll0";
-		reg = <0x1800c100 0x14>;
-		clocks = <&osc>;
-		clock-output-names = "lcpll0", "pcie_phy", "sdio",
-				     "ddr_phy";
-	};
 
-	genpll: genpll@1800c140 {
-		#clock-cells = <1>;
-		compatible = "brcm,nsp-genpll";
-		reg = <0x1800c140 0x24>;
-		clocks = <&osc>;
-		clock-output-names = "genpll", "phy", "ethernetclk",
-				     "usbclk", "iprocfast", "sata1",
-				     "sata2";
-	};
-
-	thermal: thermal@1800c2c0 {
-		compatible = "brcm,ns-thermal";
-		reg = <0x1800c2c0 0x10>;
-		#thermal-sensor-cells = <0>;
+			thermal: thermal@2c0 {
+				compatible = "brcm,ns-thermal";
+				reg = <0x2c0 0x10>;
+				#thermal-sensor-cells = <0>;
+			};
+		};
 	};
 
 	srab: srab@18007000 {
-- 
2.27.0

