Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 812B13E463E
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 15:11:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235350AbhHINLr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Aug 2021 09:11:47 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:48850
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235339AbhHINLr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Aug 2021 09:11:47 -0400
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id 0FBD43F347
        for <devicetree@vger.kernel.org>; Mon,  9 Aug 2021 13:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1628514686;
        bh=QT8SwdEZ0R6TNUIJP6/Ss9c7WD6R+hflCwKGvca5iIE=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=lLHfC7lQe5+ydflXn2NJdPOCwtSC/XH9yF2Tyx624v9f6hXKRQJD+OIagLmTREz0N
         hlx4iRISQsZu/JXWeISMooA/edpUDUjKLgrw7QXMBFZXJWaXQO2Pbai1iPMbltXLNb
         WDz4/3HyHu37JiqDfSqzUfqmxtEiMkcyxlI/RiCvAbmfOhQn63oxwmrnBC69LEpQPW
         7m60qEhd+GbZ8t/45RwtctW6KHreN0Zy+Jd4xUKND0J4b9ZvcHO7hVXSDtVapAjEkj
         KhvR3w17tHUFBhLg9/TCGb/Uw9k0z0/1F9eaOu4VfHXUiFJpJL18iDCBauP4M0lvCM
         WGNE730DBhpQA==
Received: by mail-ed1-f70.google.com with SMTP id ec47-20020a0564020d6fb02903be5e0a8cd2so2524275edb.0
        for <devicetree@vger.kernel.org>; Mon, 09 Aug 2021 06:11:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QT8SwdEZ0R6TNUIJP6/Ss9c7WD6R+hflCwKGvca5iIE=;
        b=cvgrycpUthf1o8e6jV9thg4LB6Pku42OL/2lCxTWDPbvo+rMd8z7rJn4QdPaQV5lSQ
         pRJrfFdEkFqKDh1VLOLJKPFv04at8HzavlkG4SICQWSXEgCdNXypV7ZfFcGwA/Wcbqnp
         QM2oUU9bJg9OD7ThYNG2xPs1BasbzwPrWPJKSMPjQoS35tir0QCiAchqvxQLWBOulf/a
         6+hKKI2y1zlngHMlEm6k5W9j/xW1PMac1TjPPCBL8vIcf//IWzi3w4brFo4RMIQrzx0l
         XAvRiATDHJVwMYR4eqh0GMqWR9GeOidWrOYiLlPpzfwSpXza/pUkuHokunQBUh+kbxO1
         v7fw==
X-Gm-Message-State: AOAM530JrcNs3oiUnDGTxuq8/ECXBMrRU8OxYuT9Mcnk0wuR7+dNv/iM
        lqO4Sar225r4kh6vPL3Cx4hEJcLVp8wtVF/JYvkNHEVzeemWuB6PESZ7HsKVkxrHWlmlKAP3wVh
        aaTsv3AtXs0PWlZM9xipxQvkJ3eC3Xr/ik8KOgrs=
X-Received: by 2002:a05:6402:1603:: with SMTP id f3mr29666974edv.274.1628514685565;
        Mon, 09 Aug 2021 06:11:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzsBn38E/01SuiowZudPrXAASccbbFYi5v/N0fNRNffxu2X4kYSHdNIQQP0mWfQ0n1EBaDBhw==
X-Received: by 2002:a05:6402:1603:: with SMTP id f3mr29666944edv.274.1628514685342;
        Mon, 09 Aug 2021 06:11:25 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id cf16sm8023425edb.92.2021.08.09.06.11.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Aug 2021 06:11:24 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: clock: samsung: convert Exynos3250 to dtschema
Date:   Mon,  9 Aug 2021 15:09:34 +0200
Message-Id: <20210809130935.80565-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210809130935.80565-1-krzysztof.kozlowski@canonical.com>
References: <20210809130935.80565-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Merge Exynos3250 clock controller bindings to existing DT schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/clock/exynos3250-clock.txt       | 57 -------------------
 .../bindings/clock/samsung,exynos-clock.yaml  |  3 +
 2 files changed, 3 insertions(+), 57 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/exynos3250-clock.txt

diff --git a/Documentation/devicetree/bindings/clock/exynos3250-clock.txt b/Documentation/devicetree/bindings/clock/exynos3250-clock.txt
deleted file mode 100644
index 7441ed519f02..000000000000
--- a/Documentation/devicetree/bindings/clock/exynos3250-clock.txt
+++ /dev/null
@@ -1,57 +0,0 @@
-* Samsung Exynos3250 Clock Controller
-
-The Exynos3250 clock controller generates and supplies clock to various
-controllers within the Exynos3250 SoC.
-
-Required Properties:
-
-- compatible: should be one of the following.
-  - "samsung,exynos3250-cmu" - controller compatible with Exynos3250 SoC.
-  - "samsung,exynos3250-cmu-dmc" - controller compatible with
-    Exynos3250 SoC for Dynamic Memory Controller domain.
-  - "samsung,exynos3250-cmu-isp" - ISP block clock controller compatible
-     with Exynos3250 SOC
-
-- reg: physical base address of the controller and length of memory mapped
-  region.
-
-- #clock-cells: should be 1.
-
-Each clock is assigned an identifier and client nodes can use this identifier
-to specify the clock which they consume.
-
-All available clocks are defined as preprocessor macros in
-dt-bindings/clock/exynos3250.h header and can be used in device
-tree sources.
-
-Example 1: Examples of clock controller nodes are listed below.
-
-	cmu: clock-controller@10030000 {
-		compatible = "samsung,exynos3250-cmu";
-		reg = <0x10030000 0x20000>;
-		#clock-cells = <1>;
-	};
-
-	cmu_dmc: clock-controller@105c0000 {
-		compatible = "samsung,exynos3250-cmu-dmc";
-		reg = <0x105C0000 0x2000>;
-		#clock-cells = <1>;
-	};
-
-	cmu_isp: clock-controller@10048000 {
-		compatible = "samsung,exynos3250-cmu-isp";
-		reg = <0x10048000 0x1000>;
-		#clock-cells = <1>;
-	};
-
-Example 2: UART controller node that consumes the clock generated by the clock
-	   controller. Refer to the standard clock bindings for information
-	   about 'clocks' and 'clock-names' property.
-
-	serial@13800000 {
-		compatible = "samsung,exynos4210-uart";
-		reg = <0x13800000 0x100>;
-		interrupts = <0 109 0>;
-		clocks = <&cmu CLK_UART0>, <&cmu CLK_SCLK_UART0>;
-		clock-names = "uart", "clk_uart_baud0";
-	};
diff --git a/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml
index b0f58a1cf6cb..c7b07fcd3fa1 100644
--- a/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml
@@ -20,6 +20,9 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - samsung,exynos3250-cmu
+          - samsung,exynos3250-cmu-dmc
+          - samsung,exynos3250-cmu-isp
           - samsung,exynos5250-clock
           - samsung,exynos5420-clock
           - samsung,exynos5800-clock
-- 
2.30.2

