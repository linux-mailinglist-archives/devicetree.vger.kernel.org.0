Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7D0D5B049C
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 15:03:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229657AbiIGNDo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 09:03:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229966AbiIGNDi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 09:03:38 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5860D74E13
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 06:03:33 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id fg1so8098488ejc.2
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 06:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=XKH4BzMgDzrWHlzYeBaOGmh1hYA825wk6UyMQwxMx4g=;
        b=aBK+owoCFpX8bOw+gtcRZgFlu0tCtfhCtGWwMOSBVtJ/Ut2TPhN6jg/zX1LIn7/ow4
         +qPTajBWtAQPkwd715cK9RzENltMLpxbacFe7rJtR9Hmilf/1Qk0dqEcJggxtquiIAjv
         xdMspGpBLfuy9XdO6Xi9274DJhgFLH14t/y/M/crO40w/VAKl4J4KFushvEtLoinD+EY
         KpFDGAOHP5oZ2zfZlfz+XMCAf6T0oU5u0KEpqZdxPoY4P75Ae+D+2M2Rbs+MhLZKfe0Z
         gFn7oHYsEE62K+hRjhMpZFthunxZzvfIOscYe8KIw8yVJAOMLl0h12A/R7qPZj4Q3g51
         4g9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=XKH4BzMgDzrWHlzYeBaOGmh1hYA825wk6UyMQwxMx4g=;
        b=iI4squ+m24Bp5QKr7/5pNXXRhYoqjpRKcpLdZc9oaMQxIiB0PYAP4UcP+b9QNVMF9b
         77EapWORynYoyAql0VNjnsfyUrbBlKtBoBxrYMtF9dV8cZcfckpb99qBM6wYLux8iK/w
         ZzvmyxBk9D3yRL4FXCeYXFvE3QgXn34jYImiOQNsITHkB0ExE8G6yPt8hnPfBv0G5zfR
         vTHjNI1Y6HJ2Bkk1YQ53RGMd8Pra0obr7GCOJXTi/nid+uw+tub16IPYhPEbLnruX5Qj
         wsKzEFhkJ2JWDJ9bp1T0Ot1o9UerNFVXeLDMgqje+5y+1nOVcw5huYA707iyZfG/kLy+
         N6rQ==
X-Gm-Message-State: ACgBeo1jdMGGBN/W7hsaWsZyJBzJW18dHBEez8flQugDfExFnmLBd+uv
        UvpUDp1a+ZNKM3u9Htl5lp1zYg==
X-Google-Smtp-Source: AA6agR6JR/7fVagkoq3KJizGT/MQnt1AMVbj+PqVxz9uRF7s3BoksV7s1D2VHODhaxykE0DQ5qLEOA==
X-Received: by 2002:a17:907:75ed:b0:770:7bb8:da3 with SMTP id jz13-20020a17090775ed00b007707bb80da3mr2156797ejc.213.1662555811840;
        Wed, 07 Sep 2022 06:03:31 -0700 (PDT)
Received: from localhost.localdomain (32.31.102.84.rev.sfr.net. [84.102.31.32])
        by smtp.gmail.com with ESMTPSA id r16-20020a50c010000000b00447bd64d4f6sm10785000edb.73.2022.09.07.06.03.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 06:03:31 -0700 (PDT)
From:   Julien Panis <jpanis@baylibre.com>
To:     william.gray@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, mranostay@ti.com
Subject: [PATCH v6 1/3] dt-bindings: counter: add ti,am62-ecap-capture.yaml
Date:   Wed,  7 Sep 2022 15:03:25 +0200
Message-Id: <20220907130327.139757-2-jpanis@baylibre.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220907130327.139757-1-jpanis@baylibre.com>
References: <20220907130327.139757-1-jpanis@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This commit adds a YAML binding for TI ECAP used in capture operating mode.

Signed-off-by: Julien Panis <jpanis@baylibre.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../counter/ti,am62-ecap-capture.yaml         | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/counter/ti,am62-ecap-capture.yaml

diff --git a/Documentation/devicetree/bindings/counter/ti,am62-ecap-capture.yaml b/Documentation/devicetree/bindings/counter/ti,am62-ecap-capture.yaml
new file mode 100644
index 000000000000..4e0b2d2b303e
--- /dev/null
+++ b/Documentation/devicetree/bindings/counter/ti,am62-ecap-capture.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/counter/ti,am62-ecap-capture.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments Enhanced Capture (eCAP) Module
+
+maintainers:
+  - Julien Panis <jpanis@baylibre.com>
+
+description: |
+  The eCAP module resources can be used to capture timestamps
+  on input signal events (falling/rising edges).
+
+properties:
+  compatible:
+    const: ti,am62-ecap-capture
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: fck
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/soc/ti,sci_pm_domain.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        capture@23100000 { /* eCAP in capture mode on am62x */
+            compatible = "ti,am62-ecap-capture";
+            reg = <0x00 0x23100000 0x00 0x100>;
+            interrupts = <GIC_SPI 113 IRQ_TYPE_EDGE_RISING>;
+            power-domains = <&k3_pds 51 TI_SCI_PD_EXCLUSIVE>;
+            clocks = <&k3_clks 51 0>;
+            clock-names = "fck";
+        };
+    };
-- 
2.37.3

