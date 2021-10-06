Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EA79423ECF
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 15:24:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238983AbhJFN0s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 09:26:48 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:38142
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238727AbhJFN0W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 09:26:22 -0400
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id CC30A40001
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 13:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633526651;
        bh=ot49W0BLovtQBZiy0mCJysagJRdZUZ8sfEESkGMXTWw=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=cFhBn7f8Zc5RheouS0w9GCrGxIY7zdUSAhsn6twZbVnxXSphO42tE9S61H/y6S8Qt
         CYInvLghXYy34oWZfElvLPlLwIO0S8Yo9YsdruTvu2Ao0qVKjy5DhGb/lPPFkVn2QJ
         X3AALXzM9t9hpA6JjDcSwgaWh5nxLxUkkZAYjFe7ZMIVKo+WEsvJfj4COsQbl58mII
         JCaH5P07vsVgvKcMJEin+0BvokieXcF1DB1IS/+XqBXY85uwB2OKnxUkap5cbFwKJq
         GCaGckxut0JB24WKxI5BmITe4xfRU1p+OWtjtwt3gI1kPYMIdMT+dF0evcO/pJnB1T
         jH9B2nkd7U2Sg==
Received: by mail-lf1-f69.google.com with SMTP id j16-20020a056512399000b003fd4bec03beso186389lfu.17
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 06:24:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ot49W0BLovtQBZiy0mCJysagJRdZUZ8sfEESkGMXTWw=;
        b=erOrpEyyVFWcVyVeVpqt5Sf+TIDzayrsrtMW8V3gn7HpPFa+4khVY58wTYg5n0LmR6
         8goYCDugyGIaXDI9ZUFI/TN7mgGNDxtRFAtPcHWkMPB4+MMelSyuG8RKvlVBT3t/PP8e
         2Dfz88xk7g1qS3l7oaGBEiLZ2aEXwurQkEGYhfN+jx5mo2hzicIfPvcj02lHPNVjna1t
         pqV3VlRmXjqTNwAIQ4iNm+wgh2YXoGCyKMjfPpqG8PQM9hGgTgo+F9T2X3M1EnauaF2+
         u+UXV+DQykG9zZvBoKEbBFThmnMc88SvnxvGabLw+Cw6wLF3SSlu0tG5rI5n5VOnerWh
         Ebww==
X-Gm-Message-State: AOAM531mppf+x9jZQlzvEorncVbL3mMVMOsHezgaShYIi99qcjcVywJA
        XeO2N73GOqUyokP0tmVVbrv2mXoBBZaM8oASOGHbp7grtmiLQt0Q/n708uH+NvBUGN2uK8Sy8BV
        bjUzxluByKFCFo14hvj+Qtxp2AYY1eqJtOJEKSoQ=
X-Received: by 2002:ac2:4e6b:: with SMTP id y11mr10008311lfs.439.1633526650529;
        Wed, 06 Oct 2021 06:24:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxRxWfeaApDlIsaaR/SPlEtiRdyXJSqfeqYb5MncOtQ/2qAc4kIZjgn5flRv4cH2XjMqUQOKw==
X-Received: by 2002:ac2:4e6b:: with SMTP id y11mr10008289lfs.439.1633526650353;
        Wed, 06 Oct 2021 06:24:10 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id y12sm2002819lfg.115.2021.10.06.06.24.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Oct 2021 06:24:09 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>
Subject: [PATCH v3 08/10] dt-bindings: mfd: samsung,s2mpa01: convert to dtschema
Date:   Wed,  6 Oct 2021 15:23:22 +0200
Message-Id: <20211006132324.76008-9-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211006132324.76008-1-krzysztof.kozlowski@canonical.com>
References: <20211006132324.76008-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the MFD part of Samsung S2MPA01 PMIC to DT schema format.
Previously the bindings were mostly in mfd/samsung,sec-core.txt.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/mfd/samsung,s2mpa01.yaml         | 91 +++++++++++++++++++
 1 file changed, 91 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/samsung,s2mpa01.yaml

diff --git a/Documentation/devicetree/bindings/mfd/samsung,s2mpa01.yaml b/Documentation/devicetree/bindings/mfd/samsung,s2mpa01.yaml
new file mode 100644
index 000000000000..017befdf8adb
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/samsung,s2mpa01.yaml
@@ -0,0 +1,91 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/samsung,s2mpa01.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung S2MPA01 Power Management IC
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+
+description: |
+  This is a part of device tree bindings for S2M and S5M family of Power
+  Management IC (PMIC).
+
+  The Samsung S2MPA01 is a Power Management IC which includes voltage
+  and current regulators, RTC, clock outputs and other sub-blocks.
+
+properties:
+  compatible:
+    const: samsung,s2mpa01-pmic
+
+  interrupts:
+    maxItems: 1
+
+  reg:
+    maxItems: 1
+
+  regulators:
+    $ref: ../regulator/samsung,s2mpa01.yaml
+    description:
+      List of child nodes that specify the regulators.
+
+  wakeup-source: true
+
+required:
+  - compatible
+  - reg
+  - regulators
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pmic@66 {
+            compatible = "samsung,s2mpa01-pmic";
+            reg = <0x66>;
+
+            regulators {
+                ldo1_reg: LDO1 {
+                    regulator-name = "VDD_ALIVE";
+                    regulator-min-microvolt = <1000000>;
+                    regulator-max-microvolt = <1000000>;
+                };
+
+                ldo2_reg: LDO2 {
+                    regulator-name = "VDDQ_MMC2";
+                    regulator-min-microvolt = <2800000>;
+                    regulator-max-microvolt = <2800000>;
+                    regulator-always-on;
+                };
+
+                // ...
+
+                buck1_reg: BUCK1 {
+                    regulator-name = "vdd_mif";
+                    regulator-min-microvolt = <950000>;
+                    regulator-max-microvolt = <1350000>;
+                    regulator-always-on;
+                    regulator-boot-on;
+                };
+
+                buck2_reg: BUCK2 {
+                    regulator-name = "vdd_arm";
+                    regulator-min-microvolt = <950000>;
+                    regulator-max-microvolt = <1350000>;
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-ramp-delay = <50000>;
+                };
+
+                // ...
+            };
+        };
+    };
-- 
2.30.2

