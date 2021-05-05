Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56587373CDE
	for <lists+devicetree@lfdr.de>; Wed,  5 May 2021 16:01:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233641AbhEEOCx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 10:02:53 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:54816 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233639AbhEEOCx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 May 2021 10:02:53 -0400
Received: from mail-qk1-f199.google.com ([209.85.222.199])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1leI67-0008Pp-Gf
        for devicetree@vger.kernel.org; Wed, 05 May 2021 14:01:55 +0000
Received: by mail-qk1-f199.google.com with SMTP id d15-20020a05620a136fb02902e9e93c69c8so1161749qkl.23
        for <devicetree@vger.kernel.org>; Wed, 05 May 2021 07:01:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oHaAGMQCQ1pAj//qWoQI8DKNyR6P/lkpmRo6s3ewDIo=;
        b=XNO3cBMHgiQF8oiueuolJL9Svodf5rTFWo2qZ9Gu5cZWh792BSk5g8fSdJOMSyH8xq
         sCFOZDAhOLopVqOnJ2AqfNWPHu/i42lhoN8GszPVctuzXOejAsgEA/bgLjYR2Rk/yz+q
         uIh7ckniBligoXNDdLE2Ar8w/Hh8OayzEGov4sjWKummLeT2R7I2IhntNE7L6fyPEdw1
         ITqN5r0J7Vf2aWsHOk4Tke+fQXWYptzpYGNXFrE7n6qivK1SXstR5TBl7bxTb16hKB8U
         lYLXWA0tXG9Wn4YIb6l8WBjTpl3+D+fqRfmdEKVvUKY1PxBhTWvGhJRjlfiWGWrzd7Z/
         OCsA==
X-Gm-Message-State: AOAM531LURhG4MYYHFQsrIEtnreUtTKvbAxrR9npW6NYwrtYstc5g5D3
        KTPvXlytsltQUINSFIxokYlOybmq1Wb+1781Zp1k3uNafax4ZPzHrEjOH9Dbgbn38Ak1u8aR5ID
        BCVpIo8LXKqiST0ywbnx6n2t+Yl3ogt0sPkNZ1WA=
X-Received: by 2002:a37:a6c6:: with SMTP id p189mr22057992qke.161.1620223314629;
        Wed, 05 May 2021 07:01:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzU763cPQ1xdHbff6dt62YRnHTN6UDqkMUU+zw0J+G/5UkccrdKaat1ubNv8PZ2xanVeRFnkw==
X-Received: by 2002:a37:a6c6:: with SMTP id p189mr22057979qke.161.1620223314451;
        Wed, 05 May 2021 07:01:54 -0700 (PDT)
Received: from localhost.localdomain ([45.237.49.2])
        by smtp.gmail.com with ESMTPSA id 97sm5016632qte.20.2021.05.05.07.01.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 May 2021 07:01:53 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] ARM: dts: exynos: align Broadcom WiFi with dtschema
Date:   Wed,  5 May 2021 09:59:37 -0400
Message-Id: <20210505135941.59898-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Broadcom BCM4329 family dtschema expects devices to be compatible
also with brcm,bcm4329-fmac:

  arch/arm/boot/dts/exynos3250-rinato.dt.yaml: wifi@1: compatible: 'oneOf' conditional failed, one must be fixed:
    ['brcm,bcm4334-fmac'] is too short
    'brcm,bcm4329-fmac' was expected

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos3250-rinato.dts         | 2 +-
 arch/arm/boot/dts/exynos4210-i9100.dts          | 2 +-
 arch/arm/boot/dts/exynos4210-trats.dts          | 2 +-
 arch/arm/boot/dts/exynos4210-universal_c210.dts | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/exynos3250-rinato.dts b/arch/arm/boot/dts/exynos3250-rinato.dts
index c52b9cf4f74c..f6ba5e426040 100644
--- a/arch/arm/boot/dts/exynos3250-rinato.dts
+++ b/arch/arm/boot/dts/exynos3250-rinato.dts
@@ -653,7 +653,7 @@ &mshc_1 {
 	mmc-pwrseq = <&wlan_pwrseq>;
 
 	brcmf: wifi@1 {
-		compatible = "brcm,bcm4334-fmac";
+		compatible = "brcm,bcm4334-fmac", "brcm,bcm4329-fmac";
 		reg = <1>;
 
 		interrupt-parent = <&gpx1>;
diff --git a/arch/arm/boot/dts/exynos4210-i9100.dts b/arch/arm/boot/dts/exynos4210-i9100.dts
index 525ff3d2fac3..db70f62cc08f 100644
--- a/arch/arm/boot/dts/exynos4210-i9100.dts
+++ b/arch/arm/boot/dts/exynos4210-i9100.dts
@@ -806,7 +806,7 @@ &sdhci_3 {
 	pinctrl-0 = <&sd3_clk>, <&sd3_cmd>, <&sd3_bus4>;
 
 	brcmf: wifi@1 {
-		compatible = "brcm,bcm4330-fmac";
+		compatible = "brcm,bcm4330-fmac", "brcm,bcm4329-fmac";
 		reg = <1>;
 
 		interrupt-parent = <&gpx2>;
diff --git a/arch/arm/boot/dts/exynos4210-trats.dts b/arch/arm/boot/dts/exynos4210-trats.dts
index d2406c9146b8..3eb8df319246 100644
--- a/arch/arm/boot/dts/exynos4210-trats.dts
+++ b/arch/arm/boot/dts/exynos4210-trats.dts
@@ -521,7 +521,7 @@ &sdhci_3 {
 	pinctrl-0 = <&sd3_clk>, <&sd3_cmd>, <&sd3_bus4>;
 
 	brcmf: wifi@1 {
-		compatible = "brcm,bcm4330-fmac";
+		compatible = "brcm,bcm4330-fmac", "brcm,bcm4329-fmac";
 		reg = <1>;
 
 		interrupt-parent = <&gpx2>;
diff --git a/arch/arm/boot/dts/exynos4210-universal_c210.dts b/arch/arm/boot/dts/exynos4210-universal_c210.dts
index dd44ad2c6ad6..f052853244a4 100644
--- a/arch/arm/boot/dts/exynos4210-universal_c210.dts
+++ b/arch/arm/boot/dts/exynos4210-universal_c210.dts
@@ -614,7 +614,7 @@ &sdhci_3 {
 	pinctrl-0 = <&sd3_clk>, <&sd3_cmd>, <&sd3_bus4>;
 
 	brcmf: wifi@1 {
-		compatible = "brcm,bcm4330-fmac";
+		compatible = "brcm,bcm4330-fmac", "brcm,bcm4329-fmac";
 		reg = <1>;
 		interrupt-parent = <&gpx2>;
 		interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.25.1

