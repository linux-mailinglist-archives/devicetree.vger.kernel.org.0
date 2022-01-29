Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E53334A319E
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 20:37:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353108AbiA2ThT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 14:37:19 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:60286
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1353119AbiA2ThN (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Jan 2022 14:37:13 -0500
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 8B73640050
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 19:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643485022;
        bh=aWs9MFAf4+mGeKyXFFmmho+fwz/+ZD3RFsWsucBweiU=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=fWazipQ6I6hJ49Q1422WrUaO/rlVjgciZVEA2kZEsKvGg5VBCf8zwGH5pF9xFvV7d
         pZfIZ/ec+4rGNptqIHCiyA0LDYMe1eA+oA4/TyT/cxRADRvrvxPW3/ElpCYyGBohay
         kQf/o5q26Uzp4mnSPujKh/LLJk5NruLp15lK/IicYIzdNvG8K+kQfcuEbxfOtu024n
         5LTB642aaGekEyiPjCT1VbQ4iI03ckP5MSYOWQAVzQpK3e8sSIQhbLEauQWHRNrvvu
         k+QD1FD1OfJrPw2o/nTqm0hOKlFr5bD+fsC/CeG+rm+buef6hxNvFjoU5ltTZmuBbP
         zWLu7nVhH1mlA==
Received: by mail-ed1-f71.google.com with SMTP id w15-20020a056402268f00b00408234dc1dfso4773390edd.16
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 11:37:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aWs9MFAf4+mGeKyXFFmmho+fwz/+ZD3RFsWsucBweiU=;
        b=Pr49LdCkoVdylX3ABbw6BwOum/OFluh8dCy/r3TjtsEaSqcmPCSh38aGJYyXPjKnk4
         2FZKhB4+2zr3X6PIWiW+UJPQEo9uRmfUn6Xg/6yrRbeN0v7H6EaM3jgT4W59eaqjJ0Ak
         KfIihMqC2pySq0A7Ncfdyhh55TLPolvkuTwPWwZO4lMThVmyjJkHjLU2qinSo+nIvff0
         JPiy0cO0CGbFYvfCqpBHlHsttuRcECNlrAOzSQjMHDNmawNsDbCQ6Ktp41Lk5cIl6JsU
         d6njcaF/MGbfkG18IEDJ5JOhvoTPs+5iZFcJzIz8EtG8cxhz+9TEuhPnn3yCTjAPmZ6x
         y4SQ==
X-Gm-Message-State: AOAM532yoUP/2NF1n5uhSn0j3jQHSzABcEGarw7Y0+qeRkmjKSuOGok4
        AL+xNNoRMa8VAtZXs4+OMaRJdGJ9cznQ0mzOzLmKTKWtVLDIhCAPu5JqlYEne8q5TT41FdU036G
        af0dnvh+rdeVdIKE2weUv1kKltpduEKuUo0ZfwSQ=
X-Received: by 2002:a17:906:58d4:: with SMTP id e20mr11497472ejs.769.1643485012500;
        Sat, 29 Jan 2022 11:36:52 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyK4GEK3O3dtaeIo1993o51uYQOxqNVlu9jOjRfve+nnNRq3R7aTnPPnhTn/1e2TTrcGT1/Uw==
X-Received: by 2002:a17:906:58d4:: with SMTP id e20mr11497455ejs.769.1643485012324;
        Sat, 29 Jan 2022 11:36:52 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id bf21sm14968026edb.2.2022.01.29.11.36.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jan 2022 11:36:51 -0800 (PST)
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
Subject: [PATCH 3/8] dt-bindings: phy: samsung,mipi-video-phy: convert to dtschema
Date:   Sat, 29 Jan 2022 20:36:41 +0100
Message-Id: <20220129193646.372481-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
References: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the Samsung SoC MIPI CSIS/DSIM DPHY bindings to DT schema
format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/phy/samsung,mipi-video-phy.yaml  | 113 ++++++++++++++++++
 .../devicetree/bindings/phy/samsung-phy.txt   |  29 -----
 2 files changed, 113 insertions(+), 29 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/samsung,mipi-video-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/samsung,mipi-video-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,mipi-video-phy.yaml
new file mode 100644
index 000000000000..54aa056b224d
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/samsung,mipi-video-phy.yaml
@@ -0,0 +1,113 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/samsung,mipi-video-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung S5P/Exynos SoC MIPI CSIS/DSIM DPHY
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+  - Marek Szyprowski <m.szyprowski@samsung.com>
+  - Sylwester Nawrocki <s.nawrocki@samsung.com>
+
+description: |
+  For samsung,s5pv210-mipi-video-phy compatible PHYs the second cell in the
+  PHY specifier identifies the PHY and its meaning is as follows::
+    0 - MIPI CSIS 0,
+    1 - MIPI DSIM 0,
+    2 - MIPI CSIS 1,
+    3 - MIPI DSIM 1.
+
+  samsung,exynos5420-mipi-video-phy and samsung,exynos5433-mipi-video-phy
+  support additional fifth PHY::
+    4 - MIPI CSIS 2.
+
+properties:
+  compatible:
+    enum:
+      - samsung,s5pv210-mipi-video-phy
+      - samsung,exynos5420-mipi-video-phy
+      - samsung,exynos5433-mipi-video-phy
+
+  "#phy-cells":
+    const: 1
+
+  syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to PMU system controller interface, valid only for
+      samsung,s5pv210-mipi-video-phy and samsung,exynos5420-mipi-video-phy.
+
+  samsung,pmu-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to PMU system controller interface, valid for
+      samsung,exynos5433-mipi-video-phy.
+
+  samsung,disp-sysreg:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to DISP system controller interface, valid for
+      samsung,exynos5433-mipi-video-phy.
+
+  samsung,cam0-sysreg:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to CAM0 system controller interface, valid for
+      samsung,exynos5433-mipi-video-phy.
+
+  samsung,cam1-sysreg:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to CAM1 system controller interface, valid for
+      samsung,exynos5433-mipi-video-phy.
+
+required:
+  - compatible
+  - "#phy-cells"
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,s5pv210-mipi-video-phy
+              - samsung,exynos5420-mipi-video-phy
+    then:
+      properties:
+        samsung,pmu-syscon: false
+        samsung,disp-sysreg: false
+        samsung,cam0-sysreg: false
+        samsung,cam1-sysreg: false
+      required:
+        - syscon
+    else:
+      properties:
+        syscon: false
+      required:
+        - samsung,pmu-syscon
+        - samsung,disp-sysreg
+        - samsung,cam0-sysreg
+        - samsung,cam1-sysreg
+
+additionalProperties: false
+
+examples:
+  - |
+    phy {
+        compatible = "samsung,exynos5433-mipi-video-phy";
+        #phy-cells = <1>;
+        samsung,pmu-syscon = <&pmu_system_controller>;
+        samsung,cam0-sysreg = <&syscon_cam0>;
+        samsung,cam1-sysreg = <&syscon_cam1>;
+        samsung,disp-sysreg = <&syscon_disp>;
+    };
+
+  - |
+    phy {
+        compatible = "samsung,s5pv210-mipi-video-phy";
+        syscon = <&pmu_system_controller>;
+        #phy-cells = <1>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/samsung-phy.txt b/Documentation/devicetree/bindings/phy/samsung-phy.txt
index 390065f49b62..6ab16734eb65 100644
--- a/Documentation/devicetree/bindings/phy/samsung-phy.txt
+++ b/Documentation/devicetree/bindings/phy/samsung-phy.txt
@@ -1,32 +1,3 @@
-Samsung S5P/Exynos SoC series MIPI CSIS/DSIM DPHY
--------------------------------------------------
-
-Required properties:
-- compatible : should be one of the listed compatibles:
-	- "samsung,s5pv210-mipi-video-phy"
-	- "samsung,exynos5420-mipi-video-phy"
-	- "samsung,exynos5433-mipi-video-phy"
-- #phy-cells : from the generic phy bindings, must be 1;
-
-In case of s5pv210 and exynos5420 compatible PHYs:
-- syscon - phandle to the PMU system controller
-
-In case of exynos5433 compatible PHY:
- - samsung,pmu-syscon - phandle to the PMU system controller
- - samsung,disp-sysreg - phandle to the DISP system registers controller
- - samsung,cam0-sysreg - phandle to the CAM0 system registers controller
- - samsung,cam1-sysreg - phandle to the CAM1 system registers controller
-
-For "samsung,s5pv210-mipi-video-phy" compatible PHYs the second cell in
-the PHY specifier identifies the PHY and its meaning is as follows:
-  0 - MIPI CSIS 0,
-  1 - MIPI DSIM 0,
-  2 - MIPI CSIS 1,
-  3 - MIPI DSIM 1.
-"samsung,exynos5420-mipi-video-phy" and "samsung,exynos5433-mipi-video-phy"
-supports additional fifth PHY:
-  4 - MIPI CSIS 2.
-
 Samsung Exynos SoC series Display Port PHY
 -------------------------------------------------
 
-- 
2.32.0

