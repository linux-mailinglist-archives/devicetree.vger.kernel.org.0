Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFE9A3F761D
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 15:41:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240300AbhHYNmf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 09:42:35 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:58636
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S240160AbhHYNma (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 25 Aug 2021 09:42:30 -0400
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 4A3684077E
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 13:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629898904;
        bh=ATY1ajxT356SKXhJgI3s+Y4sHiILqbtUWXmpsvvo0DA=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=DnKP+LN7IITcxpTflcArVcMTOdi01IfZyKyogx+qSqamnSUWfnn0Y3bi3fIotg+bu
         WegplaAxTlx956Ulm8F0bKyyk5vRlO9xgShe2bSRZYC2388uoYpSIxC6Yy42I1Uk17
         WK0B7pzqamXSgAq7hHw0aQDnHY30ecSJ2t76WtnBCbtTtJ3IaP7JBxNSbL/K0TrrAt
         YYF+5kvUlAAg0xSHXyfIp0pqjxrQ8MwSXPWrwCZcxHyggWba7iW+wyMGoI5jBOMg56
         08FiJ5g9nkGeguSGsjCbuVyWjPNcAr+i/KTfI4ZCEbXb1Ntgtf6DtdW89BR9V0ZeWh
         tah1HxGsXJ7og==
Received: by mail-wr1-f69.google.com with SMTP id p10-20020a5d68ca000000b001552bf8b9daso6627423wrw.22
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 06:41:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ATY1ajxT356SKXhJgI3s+Y4sHiILqbtUWXmpsvvo0DA=;
        b=kearhTovi2h5fguZ/nguC4GB/rUSvLsDK+Z9ECeH8MXNlt1AFZBzAffmJk2x3kBXyL
         qshc6L726UDcjn6wTV07zCbfpu9yIFr/r6cpYCpfyqq33UN8tnYdrfh/+IXZBCpp6wlA
         4SwfOZP5AFtLWoCQlwm52IjuO1cjMnBgq4JTab5yL4AIDdaDSui65xyIel5DumasinJT
         e1L8iMMzx/o2d52uCXD5WbIsJyvZIXHNb4EQKmCjQbBOL0jHWv+r8Fk0rvJte7OegniI
         i4FAT0eZ3c8QMcTuwxaGnIryXUgoLTI5K7XExnXEFMjbe+ILLdz/lbadq9ZGFTCleegA
         DBqQ==
X-Gm-Message-State: AOAM533NocMA+krrlqVh1U01vWb8Q173+gZwn+RvGDaYEVYJAYkD/a2H
        qwGYh7GaJ1ms2KGYAhtlxS9MBCeCo8XnPvXFWECDvNxohRGUS16j87uGfKMxnkBkpmd+5mTE+cb
        o4q1fRpgH7bWbUOSPwmZl3LEI8XOe4xrsl0BTyrQ=
X-Received: by 2002:a1c:7e12:: with SMTP id z18mr9267717wmc.60.1629898903931;
        Wed, 25 Aug 2021 06:41:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx8FtLRNzcvl+bXLg9MA8Ohdp7ZHuSFaykOWO39tpnyMtJQDY2sDuKYi23BMlHYhve5WmhsLg==
X-Received: by 2002:a1c:7e12:: with SMTP id z18mr9267687wmc.60.1629898903590;
        Wed, 25 Aug 2021 06:41:43 -0700 (PDT)
Received: from localhost.localdomain ([79.98.113.233])
        by smtp.gmail.com with ESMTPSA id g5sm7185861wrq.80.2021.08.25.06.41.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 06:41:43 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 4/8] dt-bindings: clock: samsung: convert Exynos3250 to dtschema
Date:   Wed, 25 Aug 2021 15:40:52 +0200
Message-Id: <20210825134056.219884-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210825134056.219884-1-krzysztof.kozlowski@canonical.com>
References: <20210825134056.219884-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Merge Exynos3250 clock controller bindings to existing DT schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
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
index b807ae79e3b7..9af77bdee12d 100644
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
       - items:
           - enum:
-- 
2.30.2

