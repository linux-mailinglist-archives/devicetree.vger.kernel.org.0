Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41E7070CA8C
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 22:14:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230131AbjEVUOg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 16:14:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231966AbjEVUOf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 16:14:35 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D913CB6
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 13:14:31 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-39648122ce8so207016b6e.0
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 13:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684786471; x=1687378471;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KDL6epUgkKJx7rvu5gMZxlCPvG4of9UKWOBLjJQ86uk=;
        b=Y3RqbkU3/7pjyxqgAVuZrcGeY4msbKhPqiOayRvFU0guGL29/WkkkJBowsKnLmGo5O
         uFcAK0hUlsbPqhtM5fUWsj7NXH8vuBUf2XteC0qXl3Ir5MsHSDCF5uaRXulTVVRqEV6J
         VtXYw1N9ENKO42AIOMRMMU5flZWBpdndATC6i8EP8ZdaAB5a022DQdf0OOQGUfo3RtSy
         /Yx+EkVf4hTytshfFCqomdyXv8MhNBqyBSpZH8xRb+z4On7D0sVwQ93qj/o7RPAWAset
         xAwa0y2fP4acRpc0fUFr0QaM9mkT3S8XJM3ZQgYR5jtPR3YF9ZlaAYwFVp1TVMc3QE1w
         B15A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684786471; x=1687378471;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KDL6epUgkKJx7rvu5gMZxlCPvG4of9UKWOBLjJQ86uk=;
        b=NLRjsSev2K1BL5lsYqxCfTvYrCZ4APMZVF4SbT95/q20u7BgZHpd1TV7HuUcpX1fsV
         WmTFBOvmPhSfzP+1efwGOwm9/Zcg20AW0NssSq3x4RIeQaetELSF7tLJr6htBTQneVIG
         44Lkv6360EdyY+CiiHt0uuEQJXLlz3CmIZOLq5PYl3zyl7aphnwrd8R+Veu6PQ+vhEyj
         8uhtBhwcaQAzK0JeDDh1ywuKCqaAIHcTKrsGqgoXSY67qHUCGmHlIxB3AWeNeMDqzCV6
         2aTCMUKbDpOA6XzxysmNAFJw74RY7bpP7gBqe74utH3wOhV4/qwzGgh+O1JzqnxE923s
         uUDA==
X-Gm-Message-State: AC+VfDyH6Md4+CMPfWVRpSa+l7LBAjNB3hskK7gnrWCKAWrQ8L0AopB2
        QNRwNPT1qNQSZX1BtyYNsPyAAb3GHwQ=
X-Google-Smtp-Source: ACHHUZ7DuWubwFlqB94Sc3EVBs9sMXO2WLcGDIojdAdSs64uPgecVAN1z/5lpA+FoXjF6QJE53gTwQ==
X-Received: by 2002:a05:6830:6013:b0:6a5:e455:fa03 with SMTP id bx19-20020a056830601300b006a5e455fa03mr6500751otb.2.1684786471167;
        Mon, 22 May 2023 13:14:31 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:9a57:1c6:1c2e:4047])
        by smtp.gmail.com with ESMTPSA id q11-20020a056830018b00b006aaff32ac36sm2692857ota.66.2023.05.22.13.14.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 May 2023 13:14:30 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        bhelgaas@google.com, Fabio Estevam <festevam@denx.de>
Subject: [PATCH v6 3/5] dt-bindings: soc: Add i.MX6SX General Purpose Register
Date:   Mon, 22 May 2023 17:14:02 -0300
Message-Id: <20230522201404.660242-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230522201404.660242-1-festevam@gmail.com>
References: <20230522201404.660242-1-festevam@gmail.com>
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
Changes since v5:
- Dropped "fsl,imx6q-iomuxc-gpr" and "reg-names" (Marek).

 .../bindings/soc/imx/fsl,imx6sx-gpr.yaml      | 82 +++++++++++++++++++
 1 file changed, 82 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml
new file mode 100644
index 000000000000..b9752b4c45ab
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml
@@ -0,0 +1,82 @@
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
+        compatible = "fsl,imx6sx-iomuxc-gpr", "syscon";
+        reg = <0x020e4000 0x4000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        bridge@18 {
+            compatible = "fsl,imx6sx-ldb";
+            reg = <0x18 0x4>;
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

