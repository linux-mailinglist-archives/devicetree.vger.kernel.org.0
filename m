Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00B13745011
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 20:53:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230240AbjGBSx4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 14:53:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230306AbjGBSxz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 14:53:55 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6A5DC3
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 11:53:32 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-991fe70f21bso432838566b.3
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 11:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688324000; x=1690916000;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o6J379r4ZgHmnS9hq2+grMJwH8uo9iW53zCSjGxkjz0=;
        b=fLhx/OdyY/KyjPL1Q1b2g3gV3ZgUwaSNLhTTto/vzCDBu0OMf8lkYYBLWSTwXZE+en
         jyqonrThKE9augPVt0zgtTbq86clTiTOyendIJkgLrfiBwyZRS8WMe4m3dmOgB9Jd+pK
         9EpB/JzNn8RkSdVlLEAIQ+RGj8uLLt/CTdFy70Kd4rynDIN/i8kZjw/UroES7Wlj4M7N
         gmRp/xt2S6teWBqq+VmUl+RDyYJIQItP2bD9ciyR14lPmi3VBod0fL5yKaMImYkYaEeZ
         EJ1uO8lYfpLjmx2wDeSfbHaRNW4Y9zKTo7ZeDH+cVXrwCBHIIUaM5ouiwoS97NVPNGcX
         MyzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688324000; x=1690916000;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o6J379r4ZgHmnS9hq2+grMJwH8uo9iW53zCSjGxkjz0=;
        b=SJOiddI4NCreoEk4fPXqaGZYG4luNMj1o+Sc+qG2i8b3hCTWymY2hr1lBcsshBFlMt
         Mt0P20bwSAMbgU+D4yL9swC/+CvqgGfRB5u+hlspk2RWuaCKWFmUwJ6JL+Gyv2Uxe1lb
         B8odlrcyU0/uoXdd60JBW809KAzjsUALwbdOibw4WYA4XMVmOHQ9+hu+FVy4qYhr6i5O
         hIZ74gGNq5G+CPN8zZ3TXyMJFqdSlyVMoBDHWN9srUaBXaYsdLR5p2bJbL9ZwXlwvYHh
         Q537YyNaTGC59et+X3fz/9cYHCBb5CM8wY8OHS+jL0vMus59JCnMJIHbfMIOtusorLpO
         LFFw==
X-Gm-Message-State: ABy/qLYODHfvM+x5eXnd0geF4tWJWYUngmUPaGmS1VkzTJVePWL3Q/Bg
        5CQl2WwIhl14QpEumqQjkWAJFQ==
X-Google-Smtp-Source: APBJJlFQv6ndL3AzCdP29XAS/FbLN02CQBM4Uu8SEHizIB1fim6gMrbGH4mXns9pgy7MTu0MdSd5ZA==
X-Received: by 2002:a17:906:3c4:b0:991:de8e:4f99 with SMTP id c4-20020a17090603c400b00991de8e4f99mr6507043eja.70.1688323999918;
        Sun, 02 Jul 2023 11:53:19 -0700 (PDT)
Received: from krzk-bin.. ([217.169.179.6])
        by smtp.gmail.com with ESMTPSA id z9-20020a17090655c900b00992d0de8762sm3927359ejp.216.2023.07.02.11.53.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 11:53:19 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: arm: minor whitespace cleanup around '='
Date:   Sun,  2 Jul 2023 20:53:15 +0200
Message-Id: <20230702185315.44584-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DTS code coding style expects exactly one space before and after '='
sign.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/arm/corstone1000.dtsi     | 20 ++++++++-----------
 .../boot/dts/arm/foundation-v8-gicv3.dtsi     | 10 +++++-----
 2 files changed, 13 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/corstone1000.dtsi b/arch/arm64/boot/dts/arm/corstone1000.dtsi
index 21f1f952e985..34bc336ba8d1 100644
--- a/arch/arm64/boot/dts/arm/corstone1000.dtsi
+++ b/arch/arm64/boot/dts/arm/corstone1000.dtsi
@@ -43,10 +43,10 @@ gic: interrupt-controller@1c000000 {
 		#interrupt-cells = <3>;
 		#address-cells = <0>;
 		interrupt-controller;
-		reg =	<0x1c010000 0x1000>,
-			<0x1c02f000 0x2000>,
-			<0x1c04f000 0x1000>,
-			<0x1c06f000 0x2000>;
+		reg = <0x1c010000 0x1000>,
+		      <0x1c02f000 0x2000>,
+		      <0x1c04f000 0x1000>,
+		      <0x1c06f000 0x2000>;
 		interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(1) |
 			      IRQ_TYPE_LEVEL_LOW)>;
 	};
@@ -77,14 +77,10 @@ smbclk: refclk24mhzx2 {
 
 	timer {
 		compatible = "arm,armv8-timer";
-		interrupts =	<GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(1) |
-				 IRQ_TYPE_LEVEL_LOW)>,
-				<GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(1) |
-				 IRQ_TYPE_LEVEL_LOW)>,
-				<GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(1) |
-				 IRQ_TYPE_LEVEL_LOW)>,
-				<GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(1) |
-				 IRQ_TYPE_LEVEL_LOW)>;
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>;
 	};
 
 	uartclk: uartclk {
diff --git a/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi b/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi
index e4a3c7dbcc20..17fba3bc99cd 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi
@@ -12,11 +12,11 @@ gic: interrupt-controller@2f000000 {
 		#size-cells = <1>;
 		ranges = <0x0 0x0 0x2f000000 0x100000>;
 		interrupt-controller;
-		reg =	<0x0 0x2f000000 0x0 0x10000>,
-			<0x0 0x2f100000 0x0 0x200000>,
-			<0x0 0x2c000000 0x0 0x2000>,
-			<0x0 0x2c010000 0x0 0x2000>,
-			<0x0 0x2c02f000 0x0 0x2000>;
+		reg = <0x0 0x2f000000 0x0 0x10000>,
+		      <0x0 0x2f100000 0x0 0x200000>,
+		      <0x0 0x2c000000 0x0 0x2000>,
+		      <0x0 0x2c010000 0x0 0x2000>,
+		      <0x0 0x2c02f000 0x0 0x2000>;
 		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 
 		its: msi-controller@2f020000 {
-- 
2.34.1

