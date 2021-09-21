Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65DAF413188
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 12:29:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231989AbhIUKar (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 06:30:47 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:42858
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231949AbhIUKap (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 Sep 2021 06:30:45 -0400
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E3CB2402D0
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 10:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632220156;
        bh=JOXzjGlmPlXzv176OGMdy7msusTrGyBdhYwvlOul8IE=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=l9iRyvWO+BUUUD5R5mk6lBtILzHNoDOaMLy0nonDWlzyFk6sSjdej2bgp63F2M6Bw
         UiK0YP33PvdSrDwd/TgDnLd5RWhzWYY67UgMVORqt6txHb8pUDdTuVhnvGwGs9UOY0
         +BXRUshVtNa+NC/kCjVVwQWlJS5o6nc5B1Y4801jqnLx4TNJRrJINdBDQ7lYo4Q3Xw
         5bPq/mVyOmT+qhF/ZOgrUA9ZcsCU4Eg6Wig1ERzeFbX8VUpZh452DMh4m2aexuveWK
         /Jb1umdZVqQqHpCIxhZwCw6vxfA/VWYvw9KUnvPfo7x0fn0LJP/y1/pSSz7MbNXYDM
         cvrBdVv6w/IAA==
Received: by mail-wr1-f70.google.com with SMTP id f7-20020a5d50c7000000b0015e288741a4so8420227wrt.9
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 03:29:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JOXzjGlmPlXzv176OGMdy7msusTrGyBdhYwvlOul8IE=;
        b=vL76ovAzrzoJe6e4ioYsb4WY52nopYRMGgUCEtDaEmRjK/tZEb2FLWFuOYSo7VBzlm
         uxPkAwjhe5JKgK51JuWc2q1ml56Jr4PDmAI5c9SiW4FRQV2FfyE5WIVhO2e3OQqjEtfw
         QLoTvZyzhl4cztEmGLRcOC1zBJk8Lqcd7CDgvQmuga9kQR0aZ+t3gACET6R4WJxq837n
         FeRsUUZbhtebZMrDsViS6hF3bd86PIPN3EZ7NUn2qwo7NkZo0HptmcS/xAUbvEMd7Ro9
         AKLWprgLMZxLQUIXYQy3covb23A8O+59iF87eGCKnMLXkQmuTMJq9Fds8gotGDMX1N76
         x95Q==
X-Gm-Message-State: AOAM530+iP8UpF9mX+jZMqr3lq5feZQYd3ixwIkmcLT+GwsP4PFVBIsg
        s+39N1niw/oL+JFbthTxjLmowbwcV3LwQS7FGF+cWVytwnJDllF3vfckS2iS1MMSivKH2SVBxaN
        x35in4hAipvXOTG021/SC1LA1OotiP6G/Tg/QhS0=
X-Received: by 2002:adf:d216:: with SMTP id j22mr34546927wrh.295.1632220156546;
        Tue, 21 Sep 2021 03:29:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwKogt/K6fEvl4nqJryVGtR+Bgt5oZ44S6BpR4v8fZ6A8tSIu6NyHYuSz70bv4PYE6GoKy/oQ==
X-Received: by 2002:adf:d216:: with SMTP id j22mr34546915wrh.295.1632220156416;
        Tue, 21 Sep 2021 03:29:16 -0700 (PDT)
Received: from localhost.localdomain (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id m29sm20072380wrb.89.2021.09.21.03.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 03:29:16 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Jiri Kosina <trivial@kernel.org>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 5/6] dt-bindings: hwmon: microchip,mcp3021: convert to dtschema
Date:   Tue, 21 Sep 2021 12:28:31 +0200
Message-Id: <20210921102832.143352-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210921102832.143352-1-krzysztof.kozlowski@canonical.com>
References: <20210921102832.143352-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the Microchip MCP3021 ADC bindings to DT schema format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/hwmon/mcp3021.txt     | 21 ---------
 .../bindings/hwmon/microchip,mcp3021.yaml     | 43 +++++++++++++++++++
 2 files changed, 43 insertions(+), 21 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/hwmon/mcp3021.txt
 create mode 100644 Documentation/devicetree/bindings/hwmon/microchip,mcp3021.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/mcp3021.txt b/Documentation/devicetree/bindings/hwmon/mcp3021.txt
deleted file mode 100644
index 294318ba6914..000000000000
--- a/Documentation/devicetree/bindings/hwmon/mcp3021.txt
+++ /dev/null
@@ -1,21 +0,0 @@
-mcp3021 properties
-
-Required properties:
-- compatible: Must be one of the following:
-	- "microchip,mcp3021" for mcp3021
-	- "microchip,mcp3221" for mcp3221
-- reg: I2C address
-
-Optional properties:
-
-- reference-voltage-microvolt
-	Reference voltage in microvolt (uV)
-
-Example:
-
-mcp3021@4d {
-	compatible = "microchip,mcp3021";
-	reg = <0x4d>;
-
-	reference-voltage-microvolt = <4500000>; /* 4.5 V */
-};
diff --git a/Documentation/devicetree/bindings/hwmon/microchip,mcp3021.yaml b/Documentation/devicetree/bindings/hwmon/microchip,mcp3021.yaml
new file mode 100644
index 000000000000..c42051f8a191
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/microchip,mcp3021.yaml
@@ -0,0 +1,43 @@
+# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/microchip,mcp3021.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip MCP3021 A/D converter
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+
+properties:
+  compatible:
+    enum:
+      - microchip,mcp3021
+      - microchip,mcp3221
+
+  reg:
+    maxItems: 1
+
+  reference-voltage-microvolt:
+    description:
+      VDD supply power and reference voltage
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        adc@4d {
+            compatible = "microchip,mcp3021";
+            reg = <0x4d>;
+
+            reference-voltage-microvolt = <4500000>; /* 4.5 V */
+        };
+    };
-- 
2.30.2

