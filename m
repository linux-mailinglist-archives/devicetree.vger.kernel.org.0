Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 003DB35460E
	for <lists+devicetree@lfdr.de>; Mon,  5 Apr 2021 19:30:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238574AbhDERaS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Apr 2021 13:30:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238530AbhDERaR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Apr 2021 13:30:17 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4805C061788
        for <devicetree@vger.kernel.org>; Mon,  5 Apr 2021 10:30:10 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id g18-20020a7bc4d20000b0290116042cfdd8so2815388wmk.4
        for <devicetree@vger.kernel.org>; Mon, 05 Apr 2021 10:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KtPIiHPfOqnzwnxwCorCCqGP8b4aS/KPLx0LhcOzbDk=;
        b=CEHT7kyoNucSMYVF+Tm63gNFX+ECthdy242sgJJH1EUKmoxoBzn8jWRQo1e0mdNJq/
         yTqwidOWMTPnxMAUzHUpBp5X6WhoiXZlSwxktIf1qQgkHpHg8opJsMa6Fc3xuO1JktHK
         YZzyOibiE868TykALkQGMK97g9UQ4AFupyHZupdd/avIaUEHMHnrILCx6YsovNWxV5CP
         VNKWWm022YrSzO1uzVrrbMtXo32b+LUnNTgOt2ysN+/2BxTrRKhnVsB0CMAlXDddlAXJ
         0B+bI5uRRL09dPgzQWsxsxPbah8xrUzvlAPoJyjmeOryha8DNPJP/uM82ggESOTu76R/
         GS4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KtPIiHPfOqnzwnxwCorCCqGP8b4aS/KPLx0LhcOzbDk=;
        b=WTisqv6NKq7qhKFPuocCR9MTspYlBWlZwWNSc4zFBTmlSgfkgCEwJDvod+JWJyXI5N
         Z1jiCbq+MdqDP9UYEl30NtL6+WxcDY9xviiDmZc1WL92U+rQB9vWfLnMaXrxsPF8K73h
         LMWwZoQqbMe39hw2jGM0lCgXbFe2mYEo8ik26m9IMvwTYNOapRL22O1GUudpYWH+afkA
         ZxNM/8vpipt2JE+9/cZ5EwTbG0qTsSiGH3LNq05Obo2z5O3uOMylYLfWNMGh/Nflwf/b
         +2yVz6gWVbTt44HflnQEC8+6e2lMKutruhtnRityoX+U5BvqCnxcyT1a/knkfhvPRyML
         npyA==
X-Gm-Message-State: AOAM530YoUKajy3A44SJwnjch6nC2id9HBPYx3dNaAx4FdRbwXV7Jzsy
        7A707yzrU6OYtapi1V7+ygh9tw==
X-Google-Smtp-Source: ABdhPJxbVGjcsfXPFYQNi8ot6IoFkpqWTXWV8DfubPZJDVL9awlPz5ZK5P6T+ddDYSUIFjURm1u81w==
X-Received: by 2002:a05:600c:284:: with SMTP id 4mr215318wmk.24.1617643809661;
        Mon, 05 Apr 2021 10:30:09 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id x11sm211900wmi.3.2021.04.05.10.30.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 10:30:09 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     mkorpershoek@baylibre.com, Fabien Parent <fparent@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: mediatek: mt8167: add power domains
Date:   Mon,  5 Apr 2021 19:28:36 +0200
Message-Id: <20210405172836.2038526-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the MT8167 power domains.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8167.dtsi | 68 ++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8167.dtsi b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
index 1c5639ead622..156fbdad01fb 100644
--- a/arch/arm64/boot/dts/mediatek/mt8167.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
@@ -7,6 +7,7 @@
 
 #include <dt-bindings/clock/mt8167-clk.h>
 #include <dt-bindings/memory/mt8167-larb-port.h>
+#include <dt-bindings/power/mt8167-power.h>
 
 #include "mt8167-pinfunc.h"
 
@@ -34,6 +35,73 @@ apmixedsys: apmixedsys@10018000 {
 			#clock-cells = <1>;
 		};
 
+		scpsys: syscon@10006000 {
+			compatible = "syscon", "simple-mfd";
+			reg = <0 0x10006000 0 0x1000>;
+			#power-domain-cells = <1>;
+
+			spm: power-controller {
+				compatible = "mediatek,mt8167-power-controller";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				#power-domain-cells = <1>;
+
+				/* power domains of the SoC */
+				power-domain@MT8167_POWER_DOMAIN_MM {
+					reg = <MT8167_POWER_DOMAIN_MM>;
+					clocks = <&topckgen CLK_TOP_SMI_MM>;
+					clock-names = "mm";
+					#power-domain-cells = <0>;
+					mediatek,infracfg = <&infracfg>;
+				};
+
+				power-domain@MT8167_POWER_DOMAIN_VDEC {
+					reg = <MT8167_POWER_DOMAIN_VDEC>;
+					clocks = <&topckgen CLK_TOP_SMI_MM>,
+						 <&topckgen CLK_TOP_RG_VDEC>;
+					clock-names = "mm", "vdec";
+					#power-domain-cells = <0>;
+				};
+
+				power-domain@MT8167_POWER_DOMAIN_ISP {
+					reg = <MT8167_POWER_DOMAIN_ISP>;
+					clocks = <&topckgen CLK_TOP_SMI_MM>;
+					clock-names = "mm";
+					#power-domain-cells = <0>;
+				};
+
+				power-domain@MT8167_POWER_DOMAIN_MFG_ASYNC {
+					reg = <MT8167_POWER_DOMAIN_MFG_ASYNC>;
+					clocks = <&topckgen CLK_TOP_RG_AXI_MFG>,
+						 <&topckgen CLK_TOP_RG_SLOW_MFG>;
+					clock-names = "axi_mfg", "mfg";
+					#address-cells = <1>;
+					#size-cells = <0>;
+					#power-domain-cells = <1>;
+					mediatek,infracfg = <&infracfg>;
+
+					power-domain@MT8167_POWER_DOMAIN_MFG_2D {
+						reg = <MT8167_POWER_DOMAIN_MFG_2D>;
+						#address-cells = <1>;
+						#size-cells = <0>;
+						#power-domain-cells = <1>;
+
+						power-domain@MT8167_POWER_DOMAIN_MFG {
+							reg = <MT8167_POWER_DOMAIN_MFG>;
+							#power-domain-cells = <0>;
+							mediatek,infracfg = <&infracfg>;
+						};
+					};
+				};
+
+				power-domain@MT8167_POWER_DOMAIN_CONN {
+					reg = <MT8167_POWER_DOMAIN_CONN>;
+					#power-domain-cells = <0>;
+					mediatek,infracfg = <&infracfg>;
+				};
+			};
+		};
+
 		imgsys: syscon@15000000 {
 			compatible = "mediatek,mt8167-imgsys", "syscon";
 			reg = <0 0x15000000 0 0x1000>;
-- 
2.31.0

