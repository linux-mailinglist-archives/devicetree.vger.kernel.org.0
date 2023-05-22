Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F53A70BEBD
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 14:51:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231321AbjEVMvv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 08:51:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230237AbjEVMvu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 08:51:50 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F079A9
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 05:51:49 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-397f4260599so10461b6e.0
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 05:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684759909; x=1687351909;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ldbLYPQ53l6QgDs6DrVrdEzbe69RU8gpDYBK6hgXs3k=;
        b=oRJPgoM8QkAxtHMxJTf4Va1Qv1a3q5p2Z6vUWboUokxKnM7WTAzHy0Tlbr3WZHa4Rx
         gIZ1ImjlaWpikSg90Ey1WjXDvIa58Q1pRLXxdqaNUVY2Ps+/OFZMv7+QxD9agE/XTY5p
         1Cln1NkmxotX1Lxx1Mll4bBqCYq0b7pVXkF7h8hbUQU7O5VGGSPSWBGyIHKOO4MfPEJF
         +EijCR1B+OUw2iVwZshFje50IeKPXNGYORhk3xmY6ldPnVlNnpDW4PTEMeLHtadaS4DI
         ToUOK3FXdKTWQDZKBXLW1xm2t4d5J25h9VkVeOaP+zwOjnfd3Hbk2BL7RxPygYy8vfzR
         BQlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684759909; x=1687351909;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ldbLYPQ53l6QgDs6DrVrdEzbe69RU8gpDYBK6hgXs3k=;
        b=GpTE+nZgOQ5Az9+5W8j8SPDeTWpqsbO4rR74GYrnUjeWKJUG/obgWh10B6OfKnyBTN
         +SLxpxXJKcckp5UeyMHaQaaZei8aL9z//VwkYIAuoZn9HGb7RzSVPpM5gme9953uy35O
         nCCloOEHgnHWz5PIpipCvSg4dAMnvkl4sq/8bM7XYx9W4AFvETdEbi8NO9zrpg98ds1H
         mMqqXa6gaR1er0rlK41HfClVQcF4rDgXdKii0jH/8hAeJ2gMhz8XVV9+M041U51wAS+T
         BqKYW1TUgOThu76dHr9C0HqXbVBGtmWlmdvPkRTEfinaJ5F/whCzQO3koG4VYCj+YAC1
         kN3w==
X-Gm-Message-State: AC+VfDwJ4zi5AspUwHOmbED4ZJ8JAxY2USt3PRSufBE6GCcaCVYmCpWP
        lM0JjkxC6wE3LRHiUXeuyPj0JO91s9g=
X-Google-Smtp-Source: ACHHUZ4l6gNDOOQmZ8bZcZiyzAQ501+BiyTSMXo9nYYPL52U/ye2U8OHvGynCRMCduUqVCajOGbivQ==
X-Received: by 2002:aca:a949:0:b0:397:f428:c2c6 with SMTP id s70-20020acaa949000000b00397f428c2c6mr2084932oie.0.1684759908859;
        Mon, 22 May 2023 05:51:48 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:b71d:e403:4337:204f])
        by smtp.gmail.com with ESMTPSA id r126-20020acada84000000b003943e08ee03sm2676408oig.16.2023.05.22.05.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 May 2023 05:51:48 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v5 2/4] dt-bindings: soc: Add i.MX6SX General Purpose Register
Date:   Mon, 22 May 2023 09:51:27 -0300
Message-Id: <20230522125129.526604-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230522125129.526604-1-festevam@gmail.com>
References: <20230522125129.526604-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
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
Changes since v4:
- Renamed to syscon@20e4000 (Conor).

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
+    syscon@20e4000 {
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

