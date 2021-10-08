Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64BCE426A03
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 13:43:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242553AbhJHLpV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Oct 2021 07:45:21 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:47492
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243302AbhJHLnl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Oct 2021 07:43:41 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id ED9E540007
        for <devicetree@vger.kernel.org>; Fri,  8 Oct 2021 11:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633693218;
        bh=ot49W0BLovtQBZiy0mCJysagJRdZUZ8sfEESkGMXTWw=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=EBsfQim4dP10pdw2TmCpbdhHLybsHBZVayqWxqH1otSlYqYlvmUlCTjJXuagHDr9k
         Z7d48wSb0LGEYDj0J9ug4+S5KeecYGSFrPeRfN7Ap26fp714tFICf5yaGQ5lFWnwwB
         FqSdlh+ar7mfaSWkVNn8zsfwtV2NwAonxAfSbSl/lN73j6Yo7nSPugYvEfkYPy3esX
         DXiffjAnJqaWpQBPU0KK2dILtEv1PNxrmC3wm95eeughGK2bFaGa3pvRdAF9QRz0sn
         +zChQlR/ewIXZh/MqzX4qbTjv68W5jBu/etcNMNw+rH8g/E5w0nmcqZMUvJcYe3YmM
         EKjKIIZ9TjG1Q==
Received: by mail-ed1-f71.google.com with SMTP id d11-20020a50cd4b000000b003da63711a8aso8875148edj.20
        for <devicetree@vger.kernel.org>; Fri, 08 Oct 2021 04:40:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ot49W0BLovtQBZiy0mCJysagJRdZUZ8sfEESkGMXTWw=;
        b=H9MSEpq9LMh2zvjj1jgMWN87lRtfGuVfscDyaIuCrH8QKCK8w8H7XfhH9pQ7yQsIcV
         ExsONPTmQZbZnVTqC3D8KYurKDuYQkaufHdET/aGnNQHP5wbyyEsteGZm+TOiQC4NXNm
         H5RbZg6CWbZ6GJUpA0Vtlf1/VH6thvEEL2I1ySzhPsftqATU5WxH7kFm0CrDomYQfySS
         UObTSei7MZUWJCOp6n2CW0Rt/wcumnmVRUtPyVAzmq25C9JUWhr7uDGlPz4+V5lkVjK9
         MvTFixXDMhKL4JpXf5FAgtBDQrxphIJdXPWJqaFXKMZ4ZBdlMDz4aaCzR1KBlNUMbZok
         LJfg==
X-Gm-Message-State: AOAM533/xNT+8boxNMVcrL4D1m7Hv1beX3Eci4mhRjHnvbqQFlBorrrA
        +2bmNFnkITrC03FEA3eLwSXNFPvL7VkmPouFS0ccNMJtn0H+7VTtzm5Qg8N3DD/dfsbxErSUmqv
        Kru0vsgAQ6uaeWqfzR5TCujC+E45jLgXBaq/l11Y=
X-Received: by 2002:a05:6402:485:: with SMTP id k5mr14153360edv.257.1633693218391;
        Fri, 08 Oct 2021 04:40:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy4QuirGm9nppb97oQk+JI8N+A0wj7clDGbcRopxUW7YNhpFXnCX8Vk/nDDFlgNN8xc/QtNFQ==
X-Received: by 2002:a05:6402:485:: with SMTP id k5mr14153335edv.257.1633693218246;
        Fri, 08 Oct 2021 04:40:18 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-186-13.adslplus.ch. [188.155.186.13])
        by smtp.gmail.com with ESMTPSA id c17sm901437edu.11.2021.10.08.04.40.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Oct 2021 04:40:17 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
Cc:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v4 08/10] dt-bindings: mfd: samsung,s2mpa01: convert to dtschema
Date:   Fri,  8 Oct 2021 13:39:30 +0200
Message-Id: <20211008113931.134847-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211008113723.134648-1-krzysztof.kozlowski@canonical.com>
References: <20211008113723.134648-1-krzysztof.kozlowski@canonical.com>
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

