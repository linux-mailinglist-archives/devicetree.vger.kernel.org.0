Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C9D75EAE2A
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 19:27:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230401AbiIZR1W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 13:27:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229664AbiIZR0y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 13:26:54 -0400
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43AED1879F0
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 09:44:10 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id n124so8923211oih.7
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 09:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=zWjMfUGwN+UyYliLqiF6ZvmjC5LhzbeAt3IvP9nKcyw=;
        b=N2wWdAYa/hEHt753vSWYqeEk/Wt6l5HREj9ic07JDQJAOwTCDEp0p4teWxa8mxhkNa
         G/9GFLPECy73C5qzQOG3jL8a9ht/5nHwHi5m6N+nPtOWZtbtz5cuewPpUssWLugNyejb
         1UyV3bM4VRWGIj4KcOAafxe0MuCktsBOgw9FvlnflRnXwwKmnFPUkUWoJAu3j2qKgrlq
         kOnwUvuqhg/wCXPNBq/HBkvLMrAEt192G04gjYEtZLCPHVzsB9yXaTN0z4JdZYD97G54
         DGZ1A0Ht3Fhe9HUWqKCN03bl6nzn3DDdaVkGpFL+K1TgBaHk9arGpXaLCTObkvqpyX25
         gDSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=zWjMfUGwN+UyYliLqiF6ZvmjC5LhzbeAt3IvP9nKcyw=;
        b=DI5hzniL4vlawDxqocLour9VGCl49seRHiIfcRS5gTR4hovN7Oe4dy4ZdMO+eSNL+q
         kJndMOdoSGIz8Ri57JbFEjS9zDZTY7MU6CR6s9ipj9opOjGWtmyKaRvX0mJUcu9sURrw
         CItde2pxyDcEyh1uxhxgOJcar9KxD3WZhtS8cpAnT8z81CNhvcUIgV7o8NyBwHz1m8d3
         QgL6RVms3x5HWZjb71wJ+lNmWmpFGSpRQx5iH5gpUC1kl2qrVluapdIcedld2NDYvXTI
         vy5uuQpDwcTPj/+EwMLbItLeOMFkGJtKV/Z6UN8osLvhX9OcNZJRik+YOUs8DOJfdIOm
         96Mg==
X-Gm-Message-State: ACrzQf1gKmo9/JTSHxEbxcM6LWyIYsHK/e4Oua7BqlCnL9Ecl17nJsFy
        ubEPXkb1+Re80lOxvcLl+Ln8dTLPkA8=
X-Google-Smtp-Source: AMsMyM7dxihtRTuooVdSg4E4AEqE6oc3eYoWSd3CfDMo29yfVtNnS9FjMtIhq3K1p2kNtiQgby2egA==
X-Received: by 2002:aca:6004:0:b0:34f:bab2:e513 with SMTP id u4-20020aca6004000000b0034fbab2e513mr14904726oib.63.1664210618677;
        Mon, 26 Sep 2022 09:43:38 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id o83-20020acaf056000000b0034f684ca159sm7318798oih.29.2022.09.26.09.43.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 09:43:38 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: [PATCH V3 1/2] dt-bindings: display: panel: Add Samsung AMS495QA01  bindings
Date:   Mon, 26 Sep 2022 11:43:32 -0500
Message-Id: <20220926164333.7485-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220926164333.7485-1-macroalpha82@gmail.com>
References: <20220926164333.7485-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add documentation for the Samsung AMS495QA01 panel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../display/panel/samsung,ams495qa01.yaml     | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
new file mode 100644
index 000000000000..d736a536b919
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/samsung,ams495qa01.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung AMS495QA01 4.95in 960x544 DSI/SPI panel
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: samsung,ams495qa01
+
+  reg: true
+  reset-gpios: true
+  elvdd-supply:
+    description: regulator that supplies voltage to the panel display
+  enable-gpios: true
+  port: true
+  vdd-supply:
+    description: regulator that supplies voltage to panel logic
+
+required:
+  - compatible
+  - reg
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "samsung,ams495qa01";
+            reg = <0>;
+            enable-gpios = <&gpio4 15 GPIO_ACTIVE_HIGH>;
+            reset-gpios = <&gpio4 0 GPIO_ACTIVE_LOW>;
+            vdd-supply = <&vcc3v3_lcd0_n>;
+
+            port {
+                mipi_in_panel: endpoint {
+                  remote-endpoint = <&mipi_out_panel>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.25.1

