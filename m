Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1BBC044C904
	for <lists+devicetree@lfdr.de>; Wed, 10 Nov 2021 20:35:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232902AbhKJTiN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Nov 2021 14:38:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232725AbhKJTiM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Nov 2021 14:38:12 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B593C061766
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 11:35:24 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id 133so3218300wme.0
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 11:35:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BDkwgvrUDY3WNqv5c3OEWcmTwIG6Y5n1NIoE/HHargo=;
        b=WTEPfSkKl1x1pcFcsX0dahL/fokN11844m9pMKwfpY5EKNfTL0T9qPkarOB/O1pipb
         sR7UtCTsLUe4jWufYwekcni7SPUgKlCSbZHPOtlm1wkKDM/+45p1pZEANOcrwHI4BbsA
         3SuQ+H0quIMLdOCUOTHS/v78uRLlwm2CcYhKiGTwM58YidI4za3XTdt8pjo30I0c5set
         LVSbsEkoVM0iSAvJdt4vAkj3L2kaq6OXbQqB66+RfGfM2SZfEUB/Xod0m7IZb73C6TdJ
         Z/lyz7MSWy86/gecrInJilbffZCfm2jmZhUhsD9/gYpCju26Pyp7P0he5XEUTI6+miyG
         72jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BDkwgvrUDY3WNqv5c3OEWcmTwIG6Y5n1NIoE/HHargo=;
        b=cJDpBRrZz+okbs4J658+Vxb0vG4fLWSM85YQnO0iGzaIeTY06wQdtw0QU2LWGx6lFT
         QT4gGITq6OygWQmjy8yeYAq7n3/LsttVNMPt3LiKG6+99Dykv/0BpoULtN0+dbpbdqjQ
         6a5RLiA7W/NR7ybimKPNr36N+6DOhmNI4iwoAdictVTR5TZyOZAaAi15ZxAtDgRsy2sc
         mz/1nXiZkMeHDsDvkqdjPM6oIbPvo8JDspPos4NEm5HkRI//pjKZnzuyFWG04LZlYnDR
         q/lt4d97ZoyfNT4jQypqmpDnHSpa/a9e2z4TsKI9Or/aL6JY2keYycfXQzc/HKGsxFdY
         lR/g==
X-Gm-Message-State: AOAM531IZ+EQABEHTXMvGhghnJ9oqWd/crhZRGJf8uaktAsOzg97eHgX
        cJyatmXToXoY5hAE8HK5TgLgvA==
X-Google-Smtp-Source: ABdhPJxLSkiQVKdK5iWX3YgkQimNkBMhi7q2SK4uMMDbAIzThyqRP8tMQWTVa/C9vFzbwSeDZeuWLQ==
X-Received: by 2002:a1c:7910:: with SMTP id l16mr19521732wme.36.1636572923181;
        Wed, 10 Nov 2021 11:35:23 -0800 (PST)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id c5sm791324wrd.13.2021.11.10.11.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Nov 2021 11:35:22 -0800 (PST)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Fabien Parent <fparent@baylibre.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH RESEND] arm64: dts: mediatek: mt8516: remove 2 invalid i2c clocks
Date:   Wed, 10 Nov 2021 20:35:20 +0100
Message-Id: <20211110193520.488-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The two clocks "main-source" and "main-sel" are not present in the
driver and not defined in the binding documentation. Remove them
as they are not used and not described in the documentation.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8516.dtsi | 27 ++++++------------------
 1 file changed, 6 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8516.dtsi b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
index bbe5a1419eff..d1b67c82d761 100644
--- a/arch/arm64/boot/dts/mediatek/mt8516.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
@@ -345,14 +345,9 @@ i2c0: i2c@11009000 {
 			reg = <0 0x11009000 0 0x90>,
 			      <0 0x11000180 0 0x80>;
 			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_LOW>;
-			clocks = <&topckgen CLK_TOP_AHB_INFRA_D2>,
-				 <&infracfg CLK_IFR_I2C0_SEL>,
-				 <&topckgen CLK_TOP_I2C0>,
+			clocks = <&topckgen CLK_TOP_I2C0>,
 				 <&topckgen CLK_TOP_APDMA>;
-			clock-names = "main-source",
-				      "main-sel",
-				      "main",
-				      "dma";
+			clock-names = "main", "dma";
 			#address-cells = <1>;
 			#size-cells = <0>;
 			status = "disabled";
@@ -364,14 +359,9 @@ i2c1: i2c@1100a000 {
 			reg = <0 0x1100a000 0 0x90>,
 			      <0 0x11000200 0 0x80>;
 			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_LOW>;
-			clocks = <&topckgen CLK_TOP_AHB_INFRA_D2>,
-				 <&infracfg CLK_IFR_I2C1_SEL>,
-				 <&topckgen CLK_TOP_I2C1>,
+			clocks = <&topckgen CLK_TOP_I2C1>,
 				 <&topckgen CLK_TOP_APDMA>;
-			clock-names = "main-source",
-				      "main-sel",
-				      "main",
-				      "dma";
+			clock-names = "main", "dma";
 			#address-cells = <1>;
 			#size-cells = <0>;
 			status = "disabled";
@@ -383,14 +373,9 @@ i2c2: i2c@1100b000 {
 			reg = <0 0x1100b000 0 0x90>,
 			      <0 0x11000280 0 0x80>;
 			interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_LOW>;
-			clocks = <&topckgen CLK_TOP_AHB_INFRA_D2>,
-				 <&infracfg CLK_IFR_I2C2_SEL>,
-				 <&topckgen CLK_TOP_I2C2>,
+			clocks = <&topckgen CLK_TOP_I2C2>,
 				 <&topckgen CLK_TOP_APDMA>;
-			clock-names = "main-source",
-				      "main-sel",
-				      "main",
-				      "dma";
+			clock-names = "main", "dma";
 			#address-cells = <1>;
 			#size-cells = <0>;
 			status = "disabled";
-- 
2.33.1

