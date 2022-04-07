Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBAB34F81A3
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 16:31:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343952AbiDGOdM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 10:33:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343949AbiDGOdI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 10:33:08 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20DDA19316E
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 07:31:08 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id b24so6602650edu.10
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 07:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+MO1E0w+2/1EPzxlLgrrH8CqJaD5WV6dxLv2/TAv594=;
        b=GZX6tU8mAuua1dN18gxMF7fk9paFFuoMJVXaLcemMCH/JTsgYRCEUX8M/Dt3ceJLhI
         cUQrsGQlR+gTQ3jxJmX59NuS5AbqaQRA2rRfNHysgCS2A12KO4mFsOpVS7avpqNL4yaA
         c+W8zJfHfTtlpc6B7INw8B0LDlmGldGiPOxz+y+2fvaA9sOCbD2wJEaE5LGJXI/d1XHV
         LP+8eeQyNIGVeWFBNSWvuWKQs9qilEE/a9SIQvBjK5wVCbpXyG9G1xAgzsl0ViHiQRAo
         T4H920upvJ/iFL2JRpoN+5YkdkwAWcxa1+EDV6ELM3NauPVkjrfkbU4Q0AXRWwwtl5tx
         DSOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+MO1E0w+2/1EPzxlLgrrH8CqJaD5WV6dxLv2/TAv594=;
        b=XI2KC8S3E5RvGPu0O3HPwB7rE++QsmODVPab72/pABgivwdveDujledt6l3A/cf8QG
         upcp+/fpP1vPYOOB6y1zOocdSSJPZhgtCVVah+s2VKj6rABLPlqkeqF50SVQIGa9PNET
         p4rvE0X98LyFY6s+9lYUCcy/WWDVDWfu/Ib+N8Lx/nbiiPWHd39k94yNI8an0kPvya1o
         CCsP/dtB07YbN5lzk9hmacIbgCIC4tiThukzJZw8wF2bjN+vOZdmnUKuWQ/InpKSOHWh
         hGV+lZgNwa8oZ+f8wGCyd8TIDtpa+gLYABbAtot3jK4Ymz63lljHU38bDw8xFT849t2M
         j6fw==
X-Gm-Message-State: AOAM532D/MffejPeWFiZiKVq/Dp+pJjsNqUxCZRHtE5NSlJjzg2Fg4Lk
        ONhDsdgdBq5GEHD7m7EVdemeaHiClN9HPMbv
X-Google-Smtp-Source: ABdhPJwD7fIvY0MVYCLFR71cQB+h8zrNTAvyJz7TL2Xlw2Gkn4B7OIvI4xsJlx+naZ4FB1qC5oN9fw==
X-Received: by 2002:a05:6402:3593:b0:419:7a2d:4b0b with SMTP id y19-20020a056402359300b004197a2d4b0bmr14175923edc.39.1649341855537;
        Thu, 07 Apr 2022 07:30:55 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id hp11-20020a1709073e0b00b006dfd53a0e39sm7691029ejc.135.2022.04.07.07.30.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 07:30:55 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Dinh Nguyen <dinguyen@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: socfpga: align SPI NOR node name with dtschema
Date:   Thu,  7 Apr 2022 16:30:49 +0200
Message-Id: <20220407143049.294794-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The node names should be generic and SPI NOR dtschema expects "flash".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/socfpga_arria10_socdk_qspi.dts   | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_socdk.dts       | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_sodia.dts       | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts | 4 ++--
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/socfpga_arria10_socdk_qspi.dts b/arch/arm/boot/dts/socfpga_arria10_socdk_qspi.dts
index 2a745522404d..11ccdc6c2dc6 100644
--- a/arch/arm/boot/dts/socfpga_arria10_socdk_qspi.dts
+++ b/arch/arm/boot/dts/socfpga_arria10_socdk_qspi.dts
@@ -9,7 +9,7 @@
 &qspi {
 	status = "okay";
 
-	flash0: n25q00@0 {
+	flash0: flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "micron,mt25qu02g", "jedec,spi-nor";
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts b/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts
index 253ef139181d..b2241205c7a9 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts
@@ -121,7 +121,7 @@ &mmc0 {
 &qspi {
 	status = "okay";
 
-	flash0: n25q00@0 {
+	flash0: flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "micron,mt25qu02g", "jedec,spi-nor";
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_sodia.dts b/arch/arm/boot/dts/socfpga_cyclone5_sodia.dts
index b0003f350e65..2564671fc1c6 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_sodia.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_sodia.dts
@@ -113,7 +113,7 @@ &usb1 {
 &qspi {
 	status = "okay";
 
-	flash0: n25q512a@0 {
+	flash0: flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "micron,n25q512a", "jedec,spi-nor";
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts b/arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts
index 25874e1b9c82..f24f17c2f5ee 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts
@@ -221,7 +221,7 @@ at24@50 {
 &qspi {
 	status = "okay";
 
-	n25q128@0 {
+	flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "micron,n25q128", "jedec,spi-nor";
@@ -238,7 +238,7 @@ n25q128@0 {
 		cdns,tslch-ns = <4>;
 	};
 
-	n25q00@1 {
+	flash@1 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "micron,mt25qu02g", "jedec,spi-nor";
-- 
2.32.0

