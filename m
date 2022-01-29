Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CFEB4A318F
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 20:37:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353086AbiA2ThE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 14:37:04 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:37288
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1353075AbiA2ThA (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Jan 2022 14:37:00 -0500
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 09CAB3FFDD
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 19:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643485014;
        bh=okF8bn5kqmciTynWklIDfopxJdHcfxeyGhxpgYWxZes=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Q4dwReDY0dOgzMKYy+jVC83SFp/llUPQsAjFXD81VJiRM93nBdLTHFGRa3t08LoAf
         r2AUIcaaDwaMJjyfHj1ZzwNiAGz20kAQj18b21z1aDWFo72wNeYugw/FUy7TNl8RCe
         q3xr36M/MzRTO2StugAMK+jD+6MEyZIB845PzqnQM8nduTPk++hmCBPs+a+fnCHkTX
         JAk12VFSiDOeJlW7yrOEUI5jGqasBTRFxQGG+MoIPA1fzCCKuBkabAxBhO4oV311oP
         Y6Ar116szHOxWc56XIyNmU30YqnZWhi6TH1pCj6v7VdtYwgZfAHLgIXftlzXLzM5dV
         eq6XxDH+vrbnA==
Received: by mail-ej1-f69.google.com with SMTP id rl11-20020a170907216b00b006b73a611c1aso3775303ejb.22
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 11:36:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=okF8bn5kqmciTynWklIDfopxJdHcfxeyGhxpgYWxZes=;
        b=jA0Zc9laVE5XSNQj7KKNt5FFl1STu+ihfXPoGD3x8dm69YJt35wHkdFrYnKFB8nOyL
         ObtKorCuilsUxOuugjc9Ru6wiiviT1XFhIXOb3mcXr1UAHlwamvxdvN3IHOgJV2xzLBE
         5ntdHfmvudyHHw6xFVELtgn+u2GxXBJMr/Hn7b4Bt698swH0XY5WWgew4Iywow3GbN2M
         3Mq7PC7turk8w/zVQQlkD5nGKaZyG3PCTzMXG3N7TQOyj9bTa7mrfUNUBkm2PRRhz1Og
         7DrSX9JJViWbM8AhxbS6L4t1Qancsm4PVwGbxicWShmz37UPEFT7FfxzYwjU3E0n4uag
         3cJw==
X-Gm-Message-State: AOAM531RvWBCLm1XFwoGrrx1xgb+pncIXmazEIhz5v1agoW4Gobe5FhC
        kEiBEh1PS4plcoBd9kGAXaQyJwGrcGhz0eugp9NL3xD+Gsh93F+AuagHx/tanGrtljIY5pWDOVY
        1GbUvBbXZr0o5pfaolS77G2MrNMSbEab/AGrx+VA=
X-Received: by 2002:a17:906:99c6:: with SMTP id s6mr12264116ejn.522.1643485013703;
        Sat, 29 Jan 2022 11:36:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy1xIjBHvse+WpQf8zil2xcWN1KmBQHJXw/Zj/fjql+p0Fm4NLryVA+s2m708rnsfFL8b/imw==
X-Received: by 2002:a17:906:99c6:: with SMTP id s6mr12264102ejn.522.1643485013529;
        Sat, 29 Jan 2022 11:36:53 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id bf21sm14968026edb.2.2022.01.29.11.36.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jan 2022 11:36:52 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH 4/8] dt-bindings: phy: samsung,dp-video-phy: convert to dtschema
Date:   Sat, 29 Jan 2022 20:36:42 +0100
Message-Id: <20220129193646.372481-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
References: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the Samsung SoC DisplayPort PHY bindings to DT schema format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/phy/samsung,dp-video-phy.yaml    | 41 +++++++++++++++++++
 .../devicetree/bindings/phy/samsung-phy.txt   | 11 -----
 2 files changed, 41 insertions(+), 11 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/samsung,dp-video-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/samsung,dp-video-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,dp-video-phy.yaml
new file mode 100644
index 000000000000..838c6d480ce6
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/samsung,dp-video-phy.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/samsung,dp-video-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos SoC DisplayPort PHY
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+  - Marek Szyprowski <m.szyprowski@samsung.com>
+  - Sylwester Nawrocki <s.nawrocki@samsung.com>
+
+properties:
+  compatible:
+    enum:
+      - samsung,exynos5250-dp-video-phy
+      - samsung,exynos5420-dp-video-phy
+
+  "#phy-cells":
+    const: 0
+
+  samsung,pmu-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to PMU system controller interface.
+
+required:
+  - compatible
+  - "#phy-cells"
+  - samsung,pmu-syscon
+
+additionalProperties: false
+
+examples:
+  - |
+    phy {
+        compatible = "samsung,exynos5420-dp-video-phy";
+        samsung,pmu-syscon = <&pmu_system_controller>;
+        #phy-cells = <0>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/samsung-phy.txt b/Documentation/devicetree/bindings/phy/samsung-phy.txt
index 6ab16734eb65..839ffe2a2d05 100644
--- a/Documentation/devicetree/bindings/phy/samsung-phy.txt
+++ b/Documentation/devicetree/bindings/phy/samsung-phy.txt
@@ -1,14 +1,3 @@
-Samsung Exynos SoC series Display Port PHY
--------------------------------------------------
-
-Required properties:
-- compatible : should be one of the following supported values:
-	 - "samsung,exynos5250-dp-video-phy"
-	 - "samsung,exynos5420-dp-video-phy"
-- samsung,pmu-syscon: phandle for PMU system controller interface, used to
-		      control pmu registers for power isolation.
-- #phy-cells : from the generic PHY bindings, must be 0;
-
 Samsung S5P/Exynos SoC series USB PHY
 -------------------------------------------------
 
-- 
2.32.0

