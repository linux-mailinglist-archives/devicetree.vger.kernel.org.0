Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA987709797
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 14:53:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229965AbjESMxH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 08:53:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229546AbjESMxF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 08:53:05 -0400
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE3AC106
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 05:53:03 -0700 (PDT)
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-54f46f67c02so290148eaf.1
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 05:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684500783; x=1687092783;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HE42Y898PfJmi2OUhLKkegR7WZMs/IG0gIS/4y2gjGY=;
        b=HQBwW08SzUhLvJc2HYLj1dQesFwbkIOc9VKqFcLqKYgZhqhNJfcMaXgD5js6ygP7FG
         LabndHvM5scb52FdR1Kb3Tc9x9W29yKFshqfhjQHhl+bu62BgkYoXhxlij83szS040bD
         T3zaMOASwyzfLy826kU3tWXkLEDFgYevYmx9NZcq3ibTgj6eun6MQO2Tm4YMc027ol3D
         JgakOMuebyxR7vOlFZh9vPeN7KkcR8jdg7clPP+sJ6TCoDVMUfiTqJwKrgiWGRHhLRDu
         JIaltd3p/HbY/VWTcGcCmq/HwU1GdaCiBi9fwolYrM8+3qGZe8pcHrmDvEEpN1tX+nSP
         RRNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684500783; x=1687092783;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HE42Y898PfJmi2OUhLKkegR7WZMs/IG0gIS/4y2gjGY=;
        b=aTs6ZDYgmcyMsb9BxucVO76G5Nqg7Imr1Jiej3zKB0SQqhYV6zoDV+GjkahqOOs6Yv
         KXDWpzH2d2fmi7/nm8XzpuodneKTQVlHeUjbc64utELjXYMs4x+RTcTrtcWViRbDAaW5
         NtQq+P5pBzLxKNOSi5b8bf5OMm4XtVcvwLmXLy4Y7/L6hmk3imlKoMyLXIwk4G7B7fAY
         hwwEKWVQjC+93W9y8R31GnskkD3gIGBIUDh+SR54OX002w9pmLOLu69Zq++PYpEcMAct
         uabWIQgf+xTi7WaK2MBVELoygk0/1ezWI9IqA3+UvHMRt9oWuFnj97JJgNepDempmzUp
         zQng==
X-Gm-Message-State: AC+VfDwk/XU9ZSgI6cl5E0vRZNeQlnb5sRXGGH9dsXoDdoxZ8ctNx+ip
        P/qYrFfz3g6WMFH0+i8spAg=
X-Google-Smtp-Source: ACHHUZ63/0P/DU3ch1b0EYxaI8mCXAHd17MxlKwgdY/MV87i/iRytrk6PQhU9RfVFsBTfKWKlqpl3g==
X-Received: by 2002:a4a:d750:0:b0:547:50b4:9236 with SMTP id h16-20020a4ad750000000b0054750b49236mr841150oot.0.1684500782980;
        Fri, 19 May 2023 05:53:02 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:3a54:c40b:8f0c:b968])
        by smtp.gmail.com with ESMTPSA id i19-20020a4ad093000000b0055278f297f8sm1375321oor.33.2023.05.19.05.52.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 May 2023 05:53:01 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v4 2/4] dt-bindings: soc: Add i.MX6SX General Purpose Register
Date:   Fri, 19 May 2023 09:52:34 -0300
Message-Id: <20230519125236.352050-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230519125236.352050-1-festevam@gmail.com>
References: <20230519125236.352050-1-festevam@gmail.com>
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
Changes since v3:
- Fixed error reported by Rob's bot.

 .../bindings/soc/imx/fsl,imx6sx-gpr.yaml      | 84 +++++++++++++++++++
 1 file changed, 84 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml
new file mode 100644
index 000000000000..22777ecfb56b
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml
@@ -0,0 +1,84 @@
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
+      - const: fsl,imx6sx-iomuxc-gpr
+      - const: fsl,imx6q-iomuxc-gpr
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

