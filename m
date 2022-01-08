Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DD9F488572
	for <lists+devicetree@lfdr.de>; Sat,  8 Jan 2022 19:59:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234920AbiAHS7F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 Jan 2022 13:59:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232429AbiAHS7C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 Jan 2022 13:59:02 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7261C061746
        for <devicetree@vger.kernel.org>; Sat,  8 Jan 2022 10:59:01 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id x18-20020a7bc212000000b00347cc83ec07so2503592wmi.4
        for <devicetree@vger.kernel.org>; Sat, 08 Jan 2022 10:59:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=i/XnX4LvOKf03NVrK2E1YM4blzOEve5FKIYcO5OhaUw=;
        b=NKY0+8dkPQ38m8wGW/yFygAhWzgh7bkcFRk18qwBUIYxeiONcvGdboj/huloC933bn
         wYVOtyX4tb62H0YAPzwPyKuBqXnzDGTXWbhVRlHim00lk7f3DiSP22KpBAUV0gQ0Mt+d
         e3hTQ2eg10alEpGPcUi6BUuXfYKMUvgtj/5ILrMq+d0UeHNaxvaBfc2XY05Eha8MXC9C
         pjfHv87dYaimzO+KZ1qzK04vWZuZhZoym1v++fCcmgCEdz43/kPRbstiQV2a5myVFGWV
         81ynvDQoweLtkWHVcELZhC6d2bKxEB12/EOqRbtHdppflz0bxcz0ZyOjDIuy/Zn+otsU
         016A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=i/XnX4LvOKf03NVrK2E1YM4blzOEve5FKIYcO5OhaUw=;
        b=M568eYCT1ArbDSzSzUlslzD92c547+G14hnjH8/19CpsD7qhGSFf0hH+TQVuIPId9e
         lFFxsbaVqOUrzOxFmtsTd2oWMG07qjFTpaqiC3lQd+LRnXjZX3hYXKl0T5nRXV7F8D/p
         WG1IkKvz+E2FHPOUlyywX/yokz8QlSoyI44oewEMqosd6gDlI3FE3afOm8tZ0BfyQ2tA
         RMJMG8rtJiJVx/UZ9nSY0CqPgSDlMYDe6Suc63rAWs1QeKv3BTdx2kU2GnQQy4YqqgFV
         CzKMWZUdjcYpzk2U3yL8k4Vn25aiberqKSn3xqSKyqt9r7rli3v2YuP9FYm6yhorwUUN
         Inlg==
X-Gm-Message-State: AOAM533FMvVTgBxpGx1fjFEeyNFAvtLxJawUKMQOBdO9pk6735pJ+p0k
        XWzpqnz6mGRyKxMBqe6bsKCaQw==
X-Google-Smtp-Source: ABdhPJwG3QwqAwlKdmrV9zXjoZmsbMsSSNDRLxL69JPLAtemTOWGQcSh+L10PD0AZrH4z5a+/8g6hA==
X-Received: by 2002:a05:600c:4f91:: with SMTP id n17mr15748298wmq.195.1641668339713;
        Sat, 08 Jan 2022 10:58:59 -0800 (PST)
Received: from fedora.sec.9e.network (ip-88-153-139-166.hsi04.unitymediagroup.de. [88.153.139.166])
        by smtp.gmail.com with ESMTPSA id bg12sm2886209wmb.5.2022.01.08.10.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Jan 2022 10:58:59 -0800 (PST)
From:   Patrick Rudolph <patrick.rudolph@9elements.com>
To:     Peter Rosin <peda@axentia.se>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Patrick Rudolph <patrick.rudolph@9elements.com>,
        Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: i2c: Add Maxim MAX735x/MAX736x variants
Date:   Sat,  8 Jan 2022 19:57:55 +0100
Message-Id: <20220108185759.2086347-2-patrick.rudolph@9elements.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220108185759.2086347-1-patrick.rudolph@9elements.com>
References: <20220108185759.2086347-1-patrick.rudolph@9elements.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the Maxim MAX735x/MAX736x as supported chip and give an example
how to use it. The functionality will be provided by the exisintg
pca954x driver.

Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
---
 .../bindings/i2c/i2c-mux-max735x.yaml         | 101 ++++++++++++++++++
 1 file changed, 101 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i2c/i2c-mux-max735x.yaml

diff --git a/Documentation/devicetree/bindings/i2c/i2c-mux-max735x.yaml b/Documentation/devicetree/bindings/i2c/i2c-mux-max735x.yaml
new file mode 100644
index 000000000000..dc924ec934ca
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/i2c-mux-max735x.yaml
@@ -0,0 +1,101 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/i2c-mux-max735x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim MAX735x/MAX736x I2C bus switch
+
+maintainers:
+  - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
+
+description:
+  The binding supports Maxim MAX735x and MAX736x I2C mux/switch devices.
+
+allOf:
+  - $ref: /schemas/i2c/i2c-mux.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - maxim,max7367
+              - maxim,max7369
+    then:
+      properties:
+        interrupts: true
+
+        "#interrupt-cells":
+          const: 2
+
+        interrupt-controller: true
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - maxim,max7356
+          - maxim,max7357
+          - maxim,max7358
+          - maxim,max7367
+          - maxim,max7368
+          - maxim,max7369
+
+  reg:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+
+  i2c-mux-idle-disconnect:
+    type: boolean
+    description: Forces mux to disconnect all children in idle state. This is
+      necessary for example, if there are several multiplexers on the bus and
+      the devices behind them use same I2C addresses.
+
+  idle-state:
+    description: if present, overrides i2c-mux-idle-disconnect
+    $ref: /schemas/mux/mux-controller.yaml#/properties/idle-state
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        i2c-mux@74 {
+            compatible = "maxim,max7357";
+            #address-cells = <1>;
+            #size-cells = <0>;
+            reg = <0x74>;
+
+            i2c@1 {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                reg = <1>;
+
+                eeprom@54 {
+                    compatible = "atmel,24c08";
+                    reg = <0x54>;
+                };
+            };
+
+            i2c@7 {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                reg = <7>;
+
+                rtc@51 {
+                    compatible = "nxp,pcf8563";
+                    reg = <0x51>;
+                };
+            };
+        };
+    };
+...
-- 
2.33.1

