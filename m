Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 720E5412345
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 20:21:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378082AbhITSWq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 14:22:46 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:46786
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1351814AbhITSUp (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 14:20:45 -0400
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id ECAB73F30E
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 18:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632161957;
        bh=IpPIuwvUbTgzHyTe+fBxia//tw9/orKJf90Kejz8OkM=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=GW4ocxlpBr4hgAR2XmIYTOUC/utA2wi/UHqsJ2eMjb4l6G1PscbdHq0N2U+A/GYcV
         Pg2m5JLPSi6Du2LgJa1gr9vQRlnXrDx0+7G75QSXgrISvJvyb/M6idK8fM5aoFe1dQ
         MWwljLqcisb68HFECGIbMQstK86g7XAOLQClQ1R2gUL/MT2hig6tVptuB8/V2ag31T
         hBq83o6UaiVs0pj99DZBqEzp9WzNdXjCYs3KmwY/nF9F5NKKMzPD06DV2oKRzEB39+
         454GyOptQhjboNMe/5hqKVBU+I6ZiI3SDgkTTb+6hUSammhyrHrvOT3jG7u7dVKllS
         aMPjWSUVTRoNg==
Received: by mail-wr1-f72.google.com with SMTP id h5-20020a5d6885000000b0015e21e37523so6791686wru.10
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 11:19:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IpPIuwvUbTgzHyTe+fBxia//tw9/orKJf90Kejz8OkM=;
        b=3yJOcXkUj0IpAv6aNGswB9NN7/eegAR13xjEMeX5t7uytP9VGoqVW4Kyrblp3ij94R
         QDkg8FfVRulg9DVJTUDN/E2UqjBYPfUbSH73pCkTJHDIxUcqe3J8MWjt0ZyKIlW+YN2U
         f/n1xtaJO3agA7bH7lXRLtN/fiReD2GQjdlcF5THrqEw8+xqbMPsLYWy8fn6CvMG3hHC
         H3h+rHs9ApVPDx23LCUWj80TVLIHv+zhxtnojc1jAXVjh7NVvJk2AdrJHEcPQWvY70L7
         VxWy9aKUXA3MNQvgyXbaEYHWv6PJ4dkHxbqBHojmLJwXPovCU9taAE+mzUWPxcBig+2Q
         Rszw==
X-Gm-Message-State: AOAM532Ln0C0kZBmv4x64vTIEPqY3vOX6H9C8hg/KbL/KuY4HnBVOuA1
        ZEfRVPMUI51bLTBsVtAPD66uarBie5aTpjNowYHQ8ovNlBHyiQNDx3jYlO/bvlX+mqmFW5AtVHt
        0JPJCcmwoD15okZaT3GkEqEijViV7o/vH0i3eyJ8=
X-Received: by 2002:a1c:a942:: with SMTP id s63mr415421wme.45.1632161957597;
        Mon, 20 Sep 2021 11:19:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzk3ndi0x9YmEkaswh9wkxZ0jfLmzGnCgJTsvCobsHFor57aOQOFUNbyDw0BoCKMIAZZuiWTg==
X-Received: by 2002:a1c:a942:: with SMTP id s63mr415406wme.45.1632161957432;
        Mon, 20 Sep 2021 11:19:17 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id i27sm253134wmb.40.2021.09.20.11.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 11:19:17 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH v2 1/2] dt-bindings: hwmon: lm90: convert to dtschema
Date:   Mon, 20 Sep 2021 20:19:12 +0200
Message-Id: <20210920181913.338772-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the National LM90 hwmon sensor bindings to DT schema format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Changes since v1:
1. Drop adi,adt7461 from trivial-devices.
---
 .../devicetree/bindings/hwmon/lm90.txt        | 51 ------------
 .../bindings/hwmon/national,lm90.yaml         | 79 +++++++++++++++++++
 .../devicetree/bindings/trivial-devices.yaml  |  4 -
 MAINTAINERS                                   |  2 +-
 4 files changed, 80 insertions(+), 56 deletions(-)
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
diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 1e4b3464d734..1eb4ce7dcdfd 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -41,10 +41,6 @@ properties:
           - adi,adp5585-02
             # Analog Devices ADP5589 Keypad Decoder and I/O Expansion
           - adi,adp5589
-            # +/-1C TDM Extended Temp Range I.C
-          - adi,adt7461
-            # +/-1C TDM Extended Temp Range I.C
-          - adt7461
             # AMS iAQ-Core VOC Sensor
           - ams,iaq-core
             # i2c serial eeprom  (24cxx)
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

