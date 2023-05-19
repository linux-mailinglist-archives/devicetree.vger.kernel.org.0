Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9943709689
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 13:29:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231587AbjESL3a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 07:29:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229929AbjESL33 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 07:29:29 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43173132
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 04:29:28 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-6af440f3243so190979a34.1
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 04:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684495767; x=1687087767;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q5VCh3splQllakU0zsuqaptJDBVLQ8dXVBWCNrZtq0Y=;
        b=BPgfGHDEgQjFTtmkUwx711buzWEoIcVtbUNPWP8/wShtX8zNlYgEURTD8X/k6bD+hb
         qznIWvga3Y8ntQ3udYs2hanYT681Hp40zKroaVghp2ya1aPv8STV6CT18EfDRp0QjCyd
         Epy0gbLdSJr1WagYfU3gX7IAe5d/KznUuxDE4+7///JPGWyn1qhBtsR5PBTPlzhLvlmB
         S1C8pNrekQfISGsUjDbt5HM5LqtOEInq4G0fSToS4p8wGU285GJY2SD9c7ftdgBqDjXc
         5T5nPqNmi0p+p/fnJzEQNsOMHWyH8VYYmOvjlrXuMPP+UM8XsdwRZ+CY3ZHqHAmTuiva
         oCcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684495767; x=1687087767;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q5VCh3splQllakU0zsuqaptJDBVLQ8dXVBWCNrZtq0Y=;
        b=cvGZqd9beE2TI/AimsXe02MPiSaPZGI97v7VjED/Qml2YsWN7/K7iM9iBzvoW5ESoI
         Tnc/tTmUCERiQsP1TZwk76CJKtAWYOvg8b3N6CNhAQKIzMv3GAPxgpNKrajlgr+Bf+rp
         RUXoKmdKoiYvsOzqnDmtqAB8EqHUD/ajyYOGmZ3Cz9aNPWAovkcOlNrKYiht+gJRgsHk
         daydtH9HH9sr2oE71g6IJSKtxXbaCEArOP/gx+zm+akMc6p4+PChfRHvVgcwDqk7Z2PO
         1eb0a39MOKhLfK6vetlJu8YNXRxG1090pcwhYHgb13Qjee/kEoj/r/uv0t/7DsE9QT4k
         WAwA==
X-Gm-Message-State: AC+VfDxzYxug2s+u6aCv7Zpk953z5JNf2tbzXR4WVPSbYlJCl3ateYWH
        DiD3cFPnXhTRxG5jGzyjaDk=
X-Google-Smtp-Source: ACHHUZ4xTLFMlmsGu66HllebCh5EENHjSQnBB8Nl0EXeTenRz8HpRK+uqbF7FFnaWnygi8fo0D8f9A==
X-Received: by 2002:aca:c1d4:0:b0:38d:ce1e:30a3 with SMTP id r203-20020acac1d4000000b0038dce1e30a3mr718983oif.1.1684495767526;
        Fri, 19 May 2023 04:29:27 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:3a54:c40b:8f0c:b968])
        by smtp.gmail.com with ESMTPSA id u1-20020a4ae681000000b00549f4d87eecsm1327679oot.30.2023.05.19.04.29.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 May 2023 04:29:27 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v3 2/4] dt-bindings: soc: Add i.MX6SX General Purpose Register
Date:   Fri, 19 May 2023 08:29:12 -0300
Message-Id: <20230519112914.309669-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230519112914.309669-1-festevam@gmail.com>
References: <20230519112914.309669-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

The i.MX6SX General Purpose Registers is a set of register that serves
various different purposes and in particular, IOMUXC_GPR_GPR6, at
offset 0x18, can be used to configure the LDB block.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v2:
- Newly introduced.

 .../bindings/soc/imx/fsl,imx6sx-gpr.yaml      | 83 +++++++++++++++++++
 1 file changed, 83 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml
new file mode 100644
index 000000000000..9336e87cc976
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/imx/fsl,imx6sx-gpr.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP i.MX6SX General Purpose Register
+
+maintainers:
+  - Fabio Estevam <festevam@denx.de>
+
+description:
+  The i.MX6SX General Purpose Registers is a set of register that serves
+  for various purposes and in particular, IOMUXC_GPR_GPR6, at offset 0x18,
+  can be used to configure the LDB block.
+
+properties:
+  compatible:
+    items:
+      - const: fsl,imx6sx-gpr
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 1
+
+  bridge@18:
+    type: object
+    $ref: /schemas/display/bridge/fsl,ldb.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - '#address-cells'
+  - '#size-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx6sx-clock.h>
+
+    iomuxc-gpr@20e4000 {
+        compatible = "fsl,imx6sx-iomuxc-gpr", "fsl,imx6q-iomuxc-gpr", "syscon";
+        reg = <0x020e4000 0x4000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        bridge@18 {
+            compatible = "fsl,imx6sx-ldb";
+            reg = <0x18 0x4>;
+            reg-names = "ldb";
+            clocks = <&clks IMX6SX_CLK_LDB_DI0>;
+            clock-names = "ldb";
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    ldb_from_lcdif1: endpoint {
+                        remote-endpoint = <&lcdif1_to_ldb>;
+                    };
+                };
+
+               port@1 {
+                   reg = <1>;
+
+                   ldb_lvds_ch0: endpoint {
+                   };
+               };
+            };
+        };
+    };
+...
-- 
2.34.1

