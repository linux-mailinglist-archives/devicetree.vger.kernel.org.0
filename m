Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40F212D0663
	for <lists+devicetree@lfdr.de>; Sun,  6 Dec 2020 18:44:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726731AbgLFRnu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Dec 2020 12:43:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726370AbgLFRnu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Dec 2020 12:43:50 -0500
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D47D5C0613D0
        for <devicetree@vger.kernel.org>; Sun,  6 Dec 2020 09:43:08 -0800 (PST)
Received: by mail-wm1-x344.google.com with SMTP id w206so8093574wma.0
        for <devicetree@vger.kernel.org>; Sun, 06 Dec 2020 09:43:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nMO0IDfBMezgCFNl0cMbHFmkU3B3NDqDVzGBQbZj38c=;
        b=A3p02JZGCUuCkxWkRFfLnUFgETyBUkxeBubEfJ2fTxcN3sMFdCL8RiQ4qadi8G6N4C
         Tc8TeV8BlZReic0irutaE9wUJuLtv5o0F8p982cM7eITHT9NXxpiyVkdgBg1jXFoXzp4
         sQL9dtzPwq8cUsOraX2k+ZFME8SCZISwGcIeG61+40s/+nK9uCnHVSJ5Zhj+w0sCLGCs
         LuwJ6udLclRpqmQH5Z9F8Wq26rOKeGM83ttVE/m5GyCuELN8LkGcBR4XOp8X31Lkocy5
         bU78lvr8Zgg0A0+ybur1bHIw8IOirJUgmFGrlZu6cQJST+bbc8RVfi/2L5cH8Fy/CYQW
         hrtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nMO0IDfBMezgCFNl0cMbHFmkU3B3NDqDVzGBQbZj38c=;
        b=bS1asEQ2MFEWQl+RfezXZrmDDsQZOFe4ApqlOn2CB039jRp+zw2THs0VJPeDgtIZWk
         JwfKtyjChZDzOoEz0bZrhPhvD72VKPw5EkWlgvDXgJRRjrWni41DefBLhSdDyafFPXJV
         9n05KS44B0BY3krG1yBh4yCfXDeoBDUHJUWxlq1mMp3nfgkt83Y1Sx7NkhtxQFZaddkD
         X6mhwL8sbsBhq6yB19hDMWyi/0vH36Hw940QCATEMUbB4VGToY8jO1pG0WwPL9E/vBNM
         66UdjSngKywEOePmvZ9nZu9umDOKwUmvUAvdXsJ3p6O0u+X5MtTSRFyRetLNStmqDgCu
         QdhQ==
X-Gm-Message-State: AOAM533GM3bh0Q1yYN9TRg+oyY9Bnuc7D53tFrNqQc0UELm8S29OKg2N
        Lvjrtjzd8q+zqS2AMBLr8aI=
X-Google-Smtp-Source: ABdhPJw0suTQqjlRBAsWbuskMbJWQIA2ay3pI9ExV1QyljCzKTnNvb7NBxH8eIsSToy3wr6e/LR1Fw==
X-Received: by 2002:a1c:7318:: with SMTP id d24mr14805316wmb.39.1607276587430;
        Sun, 06 Dec 2020 09:43:07 -0800 (PST)
Received: from adgra-XPS-15-9570.home (lfbn-idf1-1-1007-144.w86-238.abo.wanadoo.fr. [86.238.83.144])
        by smtp.gmail.com with ESMTPSA id c9sm11805441wrp.73.2020.12.06.09.43.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Dec 2020 09:43:06 -0800 (PST)
From:   Adrien Grassein <adrien.grassein@gmail.com>
Cc:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org,
        Adrien Grassein <adrien.grassein@gmail.com>
Subject: [PATCH] arm64: dts imx8mm: Add power domains
Date:   Sun,  6 Dec 2020 18:43:04 +0100
Message-Id: <20201206174304.28106-1-adrien.grassein@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Power domains were not defined for imx8mm
but, according to spec, they are the same as on
the imx8mq SoC.

Tested on a Boundary Nitrogen 8M Mini board.


Signed-off-by: Adrien Grassein <adrien.grassein@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 76 +++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 05ee062548e4..72f69a6da5c3 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/power/imx8mq-power.h>
 
 #include "imx8mm-pinfunc.h"
 
@@ -549,6 +550,81 @@
 			};
 		};
 
+		gpc: gpc@303a0000 {
+			compatible = "fsl,imx8mq-gpc";
+			reg = <0x303a0000 0x10000>;
+			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&gic>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+
+			pgc {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				pgc_mipi: power-domain@0 {
+					#power-domain-cells = <0>;
+					reg = <IMX8M_POWER_DOMAIN_MIPI>;
+				};
+
+				/*
+				 * As per comment in ATF source code:
+				 *
+				 * PCIE1 and PCIE2 share the
+				 * same reset signal, if we
+				 * power down PCIE2, PCIE1
+				 * will be held in reset too.
+				 *
+				 * So instead of creating two
+				 * separate power domains for
+				 * PCIE1 and PCIE2 we create a
+				 * link between both and use
+				 * it as a shared PCIE power
+				 * domain.
+				 */
+				pgc_pcie: power-domain@1 {
+					#power-domain-cells = <0>;
+					reg = <IMX8M_POWER_DOMAIN_PCIE1>;
+					power-domains = <&pgc_pcie2>;
+				};
+
+				pgc_otg1: power-domain@2 {
+					#power-domain-cells = <0>;
+					reg = <IMX8M_POWER_DOMAIN_USB_OTG1>;
+				};
+
+				pgc_otg2: power-domain@3 {
+					#power-domain-cells = <0>;
+					reg = <IMX8M_POWER_DOMAIN_USB_OTG2>;
+				};
+
+				pgc_ddr1: power-domain@4 {
+					#power-domain-cells = <0>;
+					reg = <IMX8M_POWER_DOMAIN_DDR1>;
+				};
+
+				pgc_disp: power-domain@7 {
+					#power-domain-cells = <0>;
+					reg = <IMX8M_POWER_DOMAIN_DISP>;
+				};
+
+				pgc_mipi_csi1: power-domain@8 {
+					#power-domain-cells = <0>;
+					reg = <IMX8M_POWER_DOMAIN_MIPI_CSI1>;
+				};
+
+				pgc_mipi_csi2: power-domain@9 {
+					#power-domain-cells = <0>;
+					reg = <IMX8M_POWER_DOMAIN_MIPI_CSI2>;
+				};
+
+				pgc_pcie2: power-domain@a {
+					#power-domain-cells = <0>;
+					reg = <IMX8M_POWER_DOMAIN_PCIE2>;
+				};
+			};
+		};
+
 		aips2: bus@30400000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			reg = <0x30400000 0x400000>;
-- 
2.20.1

