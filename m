Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 290623B531F
	for <lists+devicetree@lfdr.de>; Sun, 27 Jun 2021 13:46:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230253AbhF0LtD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Jun 2021 07:49:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230174AbhF0LtC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Jun 2021 07:49:02 -0400
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E7ECC061767
        for <devicetree@vger.kernel.org>; Sun, 27 Jun 2021 04:46:39 -0700 (PDT)
Received: by mail-pg1-x52f.google.com with SMTP id e33so12802967pgm.3
        for <devicetree@vger.kernel.org>; Sun, 27 Jun 2021 04:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=u6hU3l+WPFPeSH4wQjhvp1YpUcglpCldBoZsu5dQtpI=;
        b=b8R2AneZnbX8PPDDPXYkgJUlXUDwvJNT42bL6aQ7hKUX41FQFDU+YANBjuhmVlW80w
         RjGb41Qzsw/uKqkPzW+gA0XpYc0WAXLZoqsZFlDMYvdJWf0FYczUlaV87mbL7DEz8N/y
         apgQ19hKZ1hGMNg9c2iB25Ds9KQ0RXevfgUD2H5T41Yembik3jekQ0olXFKxjnNAHPqS
         dZVaplG2bpVjHoTyjfVVH2x6zF0chajkTZ9vLKDR+BCEoVeJtb3S4PiWAK9ndR4BJvnQ
         TUWDpXAtU8wQ+3hY+67LpD2pso3C0UkPtyR3QiwowxwS+32K3L10jVHW8gb7sBmVBvAT
         7ryw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=u6hU3l+WPFPeSH4wQjhvp1YpUcglpCldBoZsu5dQtpI=;
        b=CkOtfuAXS/hUaSeEiYegwPh+QeXGw4nrugr4U2xx1Op7f27odiFQZ3XCHg3911geRi
         53OyyuFQRkzP62u32FNM5/bcA7cP1CDvH76N01zhfaVx+s5x4lYWLm+4EIE/M+Lcd3aH
         IfdXTo90HF+3zEb+y4Oz7SHGnkgTtJwfFskCpBj19mMXmlWXj++rkKmQIah5TWQLkINh
         UWvCIJYBiiJECimmnvBqn5lOFlHetgNoevX0U+K7Iz2gy06M6Y36QoEm1OPsqiVBPVmT
         E0LRylg3xgBrBE6FCukomNQdUZuhxAnPNkCoCLfYFfn+an/rsjholIEJ7wuDjmJYnS1T
         GqQg==
X-Gm-Message-State: AOAM530BqwYJFVxyTZeApNtPhoLWya4v80Z+X51zmf37FDzrMgjuIF+l
        WgaG+ihkKWqjFDXc09UslIzK8Q==
X-Google-Smtp-Source: ABdhPJweancR/JKUhPGwBLPnVawpEDgcVCTXNT0G4vB5BxLchTtKtYBUFo49gOxNJOMooase+aRSDg==
X-Received: by 2002:a63:25c5:: with SMTP id l188mr18457025pgl.283.1624794398588;
        Sun, 27 Jun 2021 04:46:38 -0700 (PDT)
Received: from localhost.localdomain.name ([182.69.217.12])
        by smtp.gmail.com with ESMTPSA id x21sm10768762pfu.211.2021.06.27.04.46.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Jun 2021 04:46:38 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        balbi@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org, agross@kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH v2 1/3] arm64: dts: qcom: Use correct naming for dwc3 usb nodes in dts files
Date:   Sun, 27 Jun 2021 17:16:14 +0530
Message-Id: <20210627114616.717101-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210627114616.717101-1-bhupesh.sharma@linaro.org>
References: <20210627114616.717101-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The dwc3 usb nodes in several arm64 qcom dts are currently named
differently, somewhere as 'usb@<addr>' and somewhere as 'dwc3@<addr>',
leading to some confusion when one sees the entries in sysfs or
dmesg:
[    1.943482] dwc3 a600000.usb: Adding to iommu group 1
[    2.266127] dwc3 a800000.dwc3: Adding to iommu group 2

Name the usb nodes as 'usb@<addr>' for consistency, which is
the correct convention as per the 'snps,dwc3' dt-binding as
well (see [1]).

[1]. Documentation/devicetree/bindings/usb/snps,dwc3.yaml

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8994.dtsi | 2 +-
 arch/arm64/boot/dts/qcom/sm8150.dtsi  | 2 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi  | 4 ++--
 arch/arm64/boot/dts/qcom/sm8350.dtsi  | 4 ++--
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8994.dtsi b/arch/arm64/boot/dts/qcom/msm8994.dtsi
index f9f0b5aa6a26..662f2f246b9b 100644
--- a/arch/arm64/boot/dts/qcom/msm8994.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8994.dtsi
@@ -430,7 +430,7 @@ usb3: usb@f92f8800 {
 			power-domains = <&gcc USB30_GDSC>;
 			qcom,select-utmi-as-pipe-clk;
 
-			dwc3@f9200000 {
+			usb@f9200000 {
 				compatible = "snps,dwc3";
 				reg = <0xf9200000 0xcc00>;
 				interrupts = <0 131 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 612dda0fef43..9c931beeb614 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -2389,7 +2389,7 @@ usb_2: usb@a8f8800 {
 
 			resets = <&gcc GCC_USB30_SEC_BCR>;
 
-			usb_2_dwc3: dwc3@a800000 {
+			usb_2_dwc3: usb@a800000 {
 				compatible = "snps,dwc3";
 				reg = <0 0x0a800000 0 0xcd00>;
 				interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 4798368b02ef..9c1462cc9dad 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2321,7 +2321,7 @@ usb_1: usb@a6f8800 {
 
 			resets = <&gcc GCC_USB30_PRIM_BCR>;
 
-			usb_1_dwc3: dwc3@a600000 {
+			usb_1_dwc3: usb@a600000 {
 				compatible = "snps,dwc3";
 				reg = <0 0x0a600000 0 0xcd00>;
 				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
@@ -2372,7 +2372,7 @@ usb_2: usb@a8f8800 {
 
 			resets = <&gcc GCC_USB30_SEC_BCR>;
 
-			usb_2_dwc3: dwc3@a800000 {
+			usb_2_dwc3: usb@a800000 {
 				compatible = "snps,dwc3";
 				reg = <0 0x0a800000 0 0xcd00>;
 				interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 0d16392bb976..a631d58166b1 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -1273,7 +1273,7 @@ usb_1: usb@a6f8800 {
 
 			resets = <&gcc GCC_USB30_PRIM_BCR>;
 
-			usb_1_dwc3: dwc3@a600000 {
+			usb_1_dwc3: usb@a600000 {
 				compatible = "snps,dwc3";
 				reg = <0 0x0a600000 0 0xcd00>;
 				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
@@ -1317,7 +1317,7 @@ usb_2: usb@a8f8800 {
 
 			resets = <&gcc GCC_USB30_SEC_BCR>;
 
-			usb_2_dwc3: dwc3@a800000 {
+			usb_2_dwc3: usb@a800000 {
 				compatible = "snps,dwc3";
 				reg = <0 0x0a800000 0 0xcd00>;
 				interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.31.1

