Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CE837315E4
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 12:58:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343692AbjFOK6l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 06:58:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343697AbjFOK6k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 06:58:40 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66F07272E
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 03:58:36 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4f8467e39cfso398640e87.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 03:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1686826714; x=1689418714;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/O5ajNJ8bhgs1nhXgvSUBPUBne+CmT1+jmqUtcvu2LU=;
        b=ErbZPPZXvUKlQoXhYWpKMzUgIlmgtXFL8h1xF9US85iurYsE0eidYdhkKCulFoGDNC
         yaZXHMQdvSNUb5rErJvZNzwcMQY1Chend81fZFofkkfCs+UOz0PSM2uzq+iR+qPci9am
         OenACAI9pG5a12e5V3H8qwYx0Ab61FVdbUbiE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686826714; x=1689418714;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/O5ajNJ8bhgs1nhXgvSUBPUBne+CmT1+jmqUtcvu2LU=;
        b=fKe7bvzz0Jmv0wNDeesh+KBdovvsmeNcq5K/kzmAbWu/RvW9X3ydhsRDoGoyqWVOvp
         4k2zJRza/P4QjA+wgBB2rJPLeoNCThUNPtsHHQoilbf/h7K9rcewJXZ3zWJQyeX2MlCv
         4ICUMYrAGfWQjDXt+sJIirhrC+har8KmbVDsu4jebj1iQ15tcmM4Pc8jcM9fnLN0lLv8
         /ckWxrSW4TIp91FFi3IFSn/qtGVZMrOwk4b6baG0vSOICAuXghyfIfOm29gC0k0WI9vk
         hJiv5ViWDUUxzLwjOtl+OpXOWUGI6VR6BFsWGFDKgn7UaOjw1HagEoQ0zkgkFSSb933W
         Au/A==
X-Gm-Message-State: AC+VfDwtrAnHFX8YB/hfs/cGzgV6mqXOJuq0KvUEABDK4z0rezMYOX3Y
        H2RUfGRDyMwyhNvKudHBbia+Ug==
X-Google-Smtp-Source: ACHHUZ67E82lkWq68LWSYGH0WEyZLC4mCttbXHLuYdkqTEasoP0CoqOEBdlvhoaiKO/uXnrlxYM/lA==
X-Received: by 2002:a19:9212:0:b0:4f6:2ce6:124 with SMTP id u18-20020a199212000000b004f62ce60124mr8184297lfd.39.1686826714625;
        Thu, 15 Jun 2023 03:58:34 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id h7-20020ac25967000000b004f13f4ec267sm165364lfp.186.2023.06.15.03.58.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 03:58:33 -0700 (PDT)
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
To:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-rtc@vger.kernel.org,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/8] dt-bindings: rtc: Move isil,isl12022 from trivial-rtc.yaml into own schema file
Date:   Thu, 15 Jun 2023 12:58:20 +0200
Message-Id: <20230615105826.411953-3-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230615105826.411953-1-linux@rasmusvillemoes.dk>
References: <20230612113059.247275-1-linux@rasmusvillemoes.dk>
 <20230615105826.411953-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move the isil,isl12022 RTC bindings from trivial-rtc.yaml into its own
intersil,isl12022.yaml file, in preparation for adding more bindings.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 .../bindings/rtc/intersil,isl12022.yaml       | 45 +++++++++++++++++++
 .../devicetree/bindings/rtc/trivial-rtc.yaml  |  2 -
 2 files changed, 45 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml

diff --git a/Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml b/Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml
new file mode 100644
index 000000000000..054d3fc649ba
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rtc/intersil,isl12022.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intersil ISL12022 Real-time Clock
+
+maintainers:
+  - Alexandre Belloni <alexandre.belloni@bootlin.com>
+
+properties:
+  compatible:
+    const: isil,isl12022
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+allOf:
+  - $ref: rtc.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        rtc@6f {
+            compatible = "isil,isl12022";
+            reg = <0x6f>;
+            interrupts-extended = <&gpio1 5 IRQ_TYPE_LEVEL_LOW>;
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml b/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml
index a3603e638c37..b062c64266a6 100644
--- a/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml
+++ b/Documentation/devicetree/bindings/rtc/trivial-rtc.yaml
@@ -45,8 +45,6 @@ properties:
       - isil,isl1208
       # Intersil ISL1218 Low Power RTC with Battery Backed SRAM
       - isil,isl1218
-      # Intersil ISL12022 Real-time Clock
-      - isil,isl12022
       # Loongson-2K Socs/LS7A bridge Real-time Clock
       - loongson,ls2x-rtc
       # Real Time Clock Module with I2C-Bus
-- 
2.37.2

