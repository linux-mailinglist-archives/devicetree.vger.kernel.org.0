Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E06CD426AEC
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 14:36:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241495AbhJHMiZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Oct 2021 08:38:25 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:49914
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241460AbhJHMiX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Oct 2021 08:38:23 -0400
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id EEDCF3FFEC
        for <devicetree@vger.kernel.org>; Fri,  8 Oct 2021 12:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633696587;
        bh=5Qf7r7jiKlFTH9sR0ied5SI89iTznG53NcdzFd6hrUg=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=nAUp5anLobEAsZuTycCHOAqzH1jCQpFg3GEr1Fg47CJPRhRnRFiZ4UZXq6kcs+qJw
         CbMtr50ZJ5T3oDzCzCzQeG8XXmQF26smh6Nl/FC8BUqNDsVLGyqFKsK8aGBD0W+mAL
         T76Y68NCuDAhDqzkveOxCFyR2ACHpUcYQ575u8OJabcLxiSSfTEvIc8KYKF30c09Zb
         LJ3txv0XJkvYWZJxdEUFqhvjxAl60HMMZH/X+5ECLZBcA0D9Qe9ugSJAg2kAvvp2JY
         e+I64uZBgBsrzy1Jmqo1bjbPp1DSkELPMYhz8HkbTQdenN7Cc8d8LpTcBBrL8+liHD
         7Ttxu+wdFejZw==
Received: by mail-ed1-f70.google.com with SMTP id p13-20020a056402044d00b003db3256e4f2so9126895edw.3
        for <devicetree@vger.kernel.org>; Fri, 08 Oct 2021 05:36:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5Qf7r7jiKlFTH9sR0ied5SI89iTznG53NcdzFd6hrUg=;
        b=t4B8lBdto1TN2CxHQMMimeW9aKp+d4EE9wB2P0QnWkzsARXPzh6dustm0BT7+8f5lp
         I60WpqbowTRsAKDES5lYhRUK8AbeeJ+HKYob6326jRK3lFzvABtreN/dvkQhkHNTxqt8
         cHOd2r9AqR8yTc//M+Bt9dbngRh9MWf9N27v543lgibIMnvRaTFhoVF9KUon/Hb17qAI
         q+rHXCribVDRG1OtWWvRLFQkVvCJ+v0am2ly/Tt1+PTdj2YMeQWldeklr7nE8DBpvEGD
         Ta9e1Hf44iqTogyHiswOafU3NhTvtIJbTK3Jt1gsaxGFZCXntohyoKXTXQ3lwYbQ/dPs
         EMJA==
X-Gm-Message-State: AOAM532a8/Fzpy8zl43t001wGZ/o+LJ2MT+Lfb+C2GxhJOT1ec6k4KKi
        +5pUiXzdkABMofIqpMJ4c4HPPSzAQg0VQ7jM4w90RpwDf3ZM0Iejxl9siQWla0NsqZaA8ROj/IJ
        RmcgUSQgD1nk/yve2Ji6+Gp5DRek7ZC4JL/HHTAE=
X-Received: by 2002:a50:cf41:: with SMTP id d1mr14426077edk.219.1633696587577;
        Fri, 08 Oct 2021 05:36:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzZwMZviGbcfcVItgbRXN7YIICnfuozPdRhUwxu75JdVmxarvQN48UOL8j8/pFnaiRayBikFw==
X-Received: by 2002:a50:cf41:: with SMTP id d1mr14426043edk.219.1633696587326;
        Fri, 08 Oct 2021 05:36:27 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-186-13.adslplus.ch. [188.155.186.13])
        by smtp.gmail.com with ESMTPSA id f25sm860239ejb.34.2021.10.08.05.36.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Oct 2021 05:36:26 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] regulator: dt-bindings: maxim,max77686: convert to dtschema
Date:   Fri,  8 Oct 2021 14:35:51 +0200
Message-Id: <20211008123552.191384-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211008123552.191384-1-krzysztof.kozlowski@canonical.com>
References: <20211008123552.191384-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the regulators of Maxim MAX77686 PMIC to DT schema format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Acked-by: Mark Brown <broonie@kernel.org>

---

Changes since v1:
1. Split regulator nodes pattern on those supporting ena-gpios and those
   don't.
2. Drop regulator-name from properties.
3. Add tag.
---
 .../bindings/regulator/max77686.txt           | 71 ----------------
 .../bindings/regulator/maxim,max77686.yaml    | 83 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 3 files changed, 84 insertions(+), 71 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/regulator/max77686.txt
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77686.yaml

diff --git a/Documentation/devicetree/bindings/regulator/max77686.txt b/Documentation/devicetree/bindings/regulator/max77686.txt
deleted file mode 100644
index e9f7578ca09a..000000000000
--- a/Documentation/devicetree/bindings/regulator/max77686.txt
+++ /dev/null
@@ -1,71 +0,0 @@
-Binding for Maxim MAX77686 regulators
-
-This is a part of the device tree bindings of MAX77686 multi-function device.
-More information can be found in ../mfd/max77686.txt file.
-
-The MAX77686 PMIC has 9 high-efficiency Buck and 26 Low-DropOut (LDO)
-regulators that can be controlled over I2C.
-
-Following properties should be present in main device node of the MFD chip.
-
-Optional node:
-- voltage-regulators : The regulators of max77686 have to be instantiated
-  under subnode named "voltage-regulators" using the following format.
-
-	regulator_name {
-		regulator-compatible = LDOn/BUCKn
-		standard regulator constraints....
-	};
-	refer Documentation/devicetree/bindings/regulator/regulator.txt
-
-  The regulator node's name should be initialized with a string
-to get matched with their hardware counterparts as follow:
-
-	-LDOn 	:	for LDOs, where n can lie in range 1 to 26.
-			example: LDO1, LDO2, LDO26.
-	-BUCKn 	:	for BUCKs, where n can lie in range 1 to 9.
-			example: BUCK1, BUCK5, BUCK9.
-
-  Regulators which can be turned off during system suspend:
-	-LDOn	:	2, 6-8, 10-12, 14-16,
-	-BUCKn	:	1-4.
-  Use standard regulator bindings for it ('regulator-off-in-suspend').
-
-  LDO20, LDO21, LDO22, BUCK8 and BUCK9 can be configured to GPIO enable
-  control. To turn this feature on this property must be added to the regulator
-  sub-node:
-	- maxim,ena-gpios :	one GPIO specifier enable control (the gpio
-				flags are actually ignored and always
-				ACTIVE_HIGH is used)
-
-Example:
-
-	max77686: pmic@9 {
-		compatible = "maxim,max77686";
-		interrupt-parent = <&wakeup_eint>;
-		interrupts = <26 IRQ_TYPE_NONE>;
-		reg = <0x09>;
-
-		voltage-regulators {
-			ldo11_reg: LDO11 {
-				regulator-name = "vdd_ldo11";
-				regulator-min-microvolt = <1900000>;
-				regulator-max-microvolt = <1900000>;
-				regulator-always-on;
-			};
-
-			buck1_reg: BUCK1 {
-				regulator-name = "vdd_mif";
-				regulator-min-microvolt = <950000>;
-				regulator-max-microvolt = <1300000>;
-				regulator-always-on;
-				regulator-boot-on;
-			};
-
-			buck9_reg: BUCK9 {
-				regulator-name = "CAM_ISP_CORE_1.2V";
-				regulator-min-microvolt = <1000000>;
-				regulator-max-microvolt = <1200000>;
-				maxim,ena-gpios = <&gpm0 3 GPIO_ACTIVE_HIGH>;
-			};
-	};
diff --git a/Documentation/devicetree/bindings/regulator/maxim,max77686.yaml b/Documentation/devicetree/bindings/regulator/maxim,max77686.yaml
new file mode 100644
index 000000000000..bb64b679f765
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/maxim,max77686.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/maxim,max77686.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim MAX77686 Power Management IC regulators
+
+maintainers:
+  - Chanwoo Choi <cw00.choi@samsung.com>
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+
+description: |
+  This is a part of device tree bindings for Maxim MAX77686 Power Management
+  Integrated Circuit (PMIC).
+
+  The Maxim MAX77686 provides high-efficiency Buck and 26 Low-DropOut (LDO)
+  regulators.
+
+  See also Documentation/devicetree/bindings/mfd/maxim,max77686.yaml for
+  additional information and example.
+
+patternProperties:
+  # 26 LDOs
+  "^LDO([1-9]|1[0-9]|2[3-6])$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+    description: |
+      Properties for single LDO regulator.
+      Regulators which can be turned off during system suspend:
+        LDO2, LDO6-8, LDO10-12, LDO14-16
+
+    required:
+      - regulator-name
+
+  # LDO20-LDO22 with maxim,ena-gpios
+  "^LDO2[0-2]$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+    description: |
+      Properties for single LDO regulator.
+
+    properties:
+      maxim,ena-gpios:
+        maxItems: 1
+        description: |
+          GPIO specifier to enable the GPIO control (on/off) for regulator.
+
+    required:
+      - regulator-name
+
+  # 9 bucks
+  "^BUCK[1-7]$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+    description: |
+      Properties for single BUCK regulator.
+      Regulators which can be turned off during system suspend:
+      BUCK[1-4]
+
+    required:
+      - regulator-name
+
+  "^BUCK[89]$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+    description: |
+      Properties for single BUCK regulator.
+
+    properties:
+      maxim,ena-gpios:
+        maxItems: 1
+        description: |
+          GPIO specifier to enable the GPIO control (on/off) for regulator.
+
+    required:
+      - regulator-name
+
+additionalProperties: false
diff --git a/MAINTAINERS b/MAINTAINERS
index e6e276790034..00e47346a680 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11499,6 +11499,7 @@ M:	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
 L:	linux-kernel@vger.kernel.org
 S:	Supported
 F:	Documentation/devicetree/bindings/*/max77686.txt
+F:	Documentation/devicetree/bindings/*/maxim,max77686.yaml
 F:	Documentation/devicetree/bindings/clock/maxim,max77686.txt
 F:	Documentation/devicetree/bindings/mfd/max14577.txt
 F:	Documentation/devicetree/bindings/mfd/max77693.txt
-- 
2.30.2

