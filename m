Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C691411642
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 16:05:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234639AbhITOG5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 10:06:57 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:40766
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234804AbhITOG5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 10:06:57 -0400
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 468E240261
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 14:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632146729;
        bh=fdpLjVmvKsg2Nwtt/QkPoL85cbsz/uoLku3sZOIHSi0=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=GQow02UBv8Z/yUZgGHlqDtC55AoKHmo32Nt++s0EJw7GUV+lhhBSUS/DiF67AWKkB
         fkucDN9X72SNopPlb5f3hMdApWcvp599bG5ONqCbIk5qrTmj1THmXr95TxwwXAfOrO
         wYX6Dnxwzd8zvo13FH3jjiCgWHZLUbP4EPlk2CQQ/XBTCa4dt/v4eiTjzNH7N6kMmT
         oDrfIXaYL8vZLdbovJklcNFpv8JHyvogqvD58ToYmPPT8t+8sQpYoJyz+ISxgI4pAy
         Jz3SN1k7clT4DO4Cvm43Z0f1b147KIoxD/M+pcxdmahDU+YIkrNrH0zCNn1WIr9bw7
         mQMdKrWXfd7dA==
Received: by mail-wr1-f69.google.com with SMTP id r5-20020adfb1c5000000b0015cddb7216fso6179332wra.3
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 07:05:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fdpLjVmvKsg2Nwtt/QkPoL85cbsz/uoLku3sZOIHSi0=;
        b=lCxpLslrC6HEfYOhjiqBQVmqG6agRTil2cBLJX+Wt1x9rqPGoFyl1qdTq1nKP5+Qpt
         4FnBxnkkFzTZIqoVreqMFRguAjkBojEHykNcEYnQBAVnQZOAzrsyemwnYamgr0j5U3xO
         sQH1LZgzksjKjuOAB86QprjBzZpcNS6mAxmBybCCLT7IwEvmcsJxxTB835zpkdMFDezZ
         gAwmbopcrLTRMtgVx/cHSOxVTsBasLo/FIKyX0EznZWGZF//v0+lXd5a27Ycb4XJ6IJy
         fza8DC7lrXFSIUjis/KgjeZRP9DPFvAz0KdnR2xqYhYLl4KqH6FkEBKqk98PLRhNWLAY
         1pKQ==
X-Gm-Message-State: AOAM5319REUcDQ27rzX8tZpmukeKD2WikFmuoUSqjEdSv/JW/Z6dux6g
        BnmGGUHI9vz6zYSe6fAKw8ISN5oPTD4MfNgmBBWuvTD2xQ0nClMx3L2YVB5gii3EkQa6iVC9DeK
        oW5VRA76+wVZMDjqbqHc0SV2q+CBpWiEKUb9yHEQ=
X-Received: by 2002:a1c:e915:: with SMTP id q21mr30136865wmc.180.1632146728540;
        Mon, 20 Sep 2021 07:05:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyIDtc3RXnWuKWsXmWL/7mB7dq58VPcwOfG7BYj9OFQfEk3j1DGfBpNzneREBKQdY5+2+1+uw==
X-Received: by 2002:a1c:e915:: with SMTP id q21mr30136843wmc.180.1632146728373;
        Mon, 20 Sep 2021 07:05:28 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id w5sm16179092wra.87.2021.09.20.07.05.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 07:05:27 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>, linux-hwmon@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH] dt-bindings: hwmon: lm90: convert to dtschema
Date:   Mon, 20 Sep 2021 16:05:25 +0200
Message-Id: <20210920140525.157013-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the National LM90 hwmon sensor bindings to DT schema format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/hwmon/lm90.txt        | 51 ------------
 .../bindings/hwmon/national,lm90.yaml         | 79 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 3 files changed, 80 insertions(+), 52 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/hwmon/lm90.txt
 create mode 100644 Documentation/devicetree/bindings/hwmon/national,lm90.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/lm90.txt b/Documentation/devicetree/bindings/hwmon/lm90.txt
deleted file mode 100644
index 398dcb965751..000000000000
--- a/Documentation/devicetree/bindings/hwmon/lm90.txt
+++ /dev/null
@@ -1,51 +0,0 @@
-* LM90 series thermometer.
-
-Required node properties:
-- compatible: manufacturer and chip name, one of
-		"adi,adm1032"
-		"adi,adt7461"
-		"adi,adt7461a"
-		"gmt,g781"
-		"national,lm90"
-		"national,lm86"
-		"national,lm89"
-		"national,lm99"
-		"dallas,max6646"
-		"dallas,max6647"
-		"dallas,max6649"
-		"dallas,max6657"
-		"dallas,max6658"
-		"dallas,max6659"
-		"dallas,max6680"
-		"dallas,max6681"
-		"dallas,max6695"
-		"dallas,max6696"
-		"onnn,nct1008"
-		"winbond,w83l771"
-		"nxp,sa56004"
-		"ti,tmp451"
-
-- reg: I2C bus address of the device
-
-- vcc-supply: vcc regulator for the supply voltage.
-
-Optional properties:
-- interrupts: Contains a single interrupt specifier which describes the
-              LM90 "-ALERT" pin output.
-              See interrupt-controller/interrupts.txt for the format.
-
-- #thermal-sensor-cells: should be set to 1. See thermal/thermal-sensor.yaml
-	      for details. See <include/dt-bindings/thermal/lm90.h> for the
-	      definition of the local, remote and 2nd remote sensor index
-	      constants.
-
-Example LM90 node:
-
-temp-sensor {
-	compatible = "onnn,nct1008";
-	reg = <0x4c>;
-	vcc-supply = <&palmas_ldo6_reg>;
-	interrupt-parent = <&gpio>;
-	interrupts = <TEGRA_GPIO(O, 4) IRQ_TYPE_LEVEL_LOW>;
-	#thermal-sensor-cells = <1>;
-}
diff --git a/Documentation/devicetree/bindings/hwmon/national,lm90.yaml b/Documentation/devicetree/bindings/hwmon/national,lm90.yaml
new file mode 100644
index 000000000000..e712117da3df
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/national,lm90.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/national,lm90.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LM90 series thermometer
+
+maintainers:
+  - Jean Delvare <jdelvare@suse.com>
+  - Guenter Roeck <linux@roeck-us.net>
+
+properties:
+  compatible:
+    enum:
+      - adi,adm1032
+      - adi,adt7461
+      - adi,adt7461a
+      - dallas,max6646
+      - dallas,max6647
+      - dallas,max6649
+      - dallas,max6657
+      - dallas,max6658
+      - dallas,max6659
+      - dallas,max6680
+      - dallas,max6681
+      - dallas,max6695
+      - dallas,max6696
+      - gmt,g781
+      - national,lm86
+      - national,lm89
+      - national,lm90
+      - national,lm99
+      - nxp,sa56004
+      - onnn,nct1008
+      - ti,tmp451
+      - winbond,w83l771
+
+
+  interrupts:
+    items:
+      - description: |
+          Single interrupt specifier which describes the LM90 "-ALERT" pin
+          output.
+
+  reg:
+    maxItems: 1
+
+  "#thermal-sensor-cells":
+    const: 1
+
+  vcc-supply:
+    description: phandle to the regulator that provides the +VCC supply
+
+required:
+  - compatible
+  - reg
+  - vcc-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/tegra-gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        sensor@4c {
+            compatible = "onnn,nct1008";
+            reg = <0x4c>;
+            vcc-supply = <&palmas_ldo6_reg>;
+            interrupt-parent = <&gpio>;
+            interrupts = <TEGRA_GPIO(O, 4) IRQ_TYPE_LEVEL_LOW>;
+            #thermal-sensor-cells = <1>;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 2b990794ec35..b07679009af2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10928,7 +10928,7 @@ LM90 HARDWARE MONITOR DRIVER
 M:	Jean Delvare <jdelvare@suse.com>
 L:	linux-hwmon@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/hwmon/lm90.txt
+F:	Documentation/devicetree/bindings/hwmon/national,lm90.yaml
 F:	Documentation/hwmon/lm90.rst
 F:	drivers/hwmon/lm90.c
 F:	include/dt-bindings/thermal/lm90.h
-- 
2.30.2

