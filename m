Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C00DD50C348
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 01:10:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233954AbiDVW56 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 18:57:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234234AbiDVW5m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 18:57:42 -0400
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AE501AF658
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 15:21:58 -0700 (PDT)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-e5c42b6e31so10031331fac.12
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 15:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zbrQJFqn/WJzFyNhh4+ufy40OrWo2hrMWxpSlAkPQWY=;
        b=sRUYTmbk06KsFnSSqgjMEjZLe/nW8hlf6MtX6VtMuQT4zBTl86+ruLHJuAEZv6OBMU
         vkdLDekFqfBxRCgm0nuOub8bHmQvKhek5rp802gDBOYLPdMnFlPJ5zuLJAwGmfjU88qp
         s5W/kH8rNbT7RwW9fTZHNZiYKdA7mLEkQ914U0CFsCBV699zopXiCUM20cNbg4g2q/ju
         kHcPxtahw+cJVwYWcI3VFzXPQ9upUcUhqhvl7OTeZZA8kaSmHFcCFSlZYJ3qajDVDV+K
         07iqwrDFjYwgoYpDUByoBX9a9aiOYadiN7GSfIOw69U8VKSE4Z4qdYO1OY06yD/PFgle
         iMsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zbrQJFqn/WJzFyNhh4+ufy40OrWo2hrMWxpSlAkPQWY=;
        b=YvowJpxPGfJnZVEZHVuNWz3+SGH5Th7NTJeXYdzMuB0l7Vqbr/ggrv6a6IkJG5omIx
         8b2lCbBXIPER6j/gIjS/H3QMMwDtgmxxIOf0DKzCm/HkFji872t84HNYoWuJ8RTO48Mv
         UJLtBc8furYarpIuSclVotU24Zkxoypq/SZinIgWjRrNd6497fvz/joV797/0j//F9UO
         NHjHawwZ4KuzH39JFHNRpbPpFQP1jmzB8eFlzlQqRg7Kfn74H6OCkzsCC4d0+Bj4TFUW
         LOieOlVgYONF01NgySPVzpSB5meCc3zox4y0DI/X0gQv93m5zulFxo+DsBmcQYWvHdOi
         SyIQ==
X-Gm-Message-State: AOAM530kI+uh8PdkGHCNQ6aHU1QO1z9D8pGfAHY4P/kWLeqwmtAExx1r
        clYri8cFa/lkJ3EQq7Pk9pV0J3KGigu5D69z
X-Google-Smtp-Source: ABdhPJwNrtkIBqCrhCqv28M2QWXDvRl/sQAPj3p6KYeo/awaC3wDWg5F9wMuMSThxywFlqVOUFlklg==
X-Received: by 2002:a05:6870:d0ce:b0:de:79e2:7ec7 with SMTP id k14-20020a056870d0ce00b000de79e27ec7mr2814583oaa.245.1650666117162;
        Fri, 22 Apr 2022 15:21:57 -0700 (PDT)
Received: from ripper.. ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id js4-20020a056870bac400b000e687cdf5adsm1049224oab.55.2022.04.22.15.21.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 15:21:56 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Daniel Scally <djrscally@gmail.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Hans de Goede <hdegoede@redhat.com>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v5 6/7] dt-bindings: usb: Add binding for fcs,fsa4480
Date:   Fri, 22 Apr 2022 15:23:50 -0700
Message-Id: <20220422222351.1297276-7-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422222351.1297276-1-bjorn.andersson@linaro.org>
References: <20220422222351.1297276-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Fairchild/ON Semiconductor FSA4480 Analog Audio switch is used in
USB Type-C configurations for muxing analog audio onto the USB
connector, and as such used to control the SBU signals for altmodes such
as DisplayPort.

Add a binding for this hardware block.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v4:
- None

 .../devicetree/bindings/usb/fcs,fsa4480.yaml  | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml

diff --git a/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml b/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
new file mode 100644
index 000000000000..9473f26b0621
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/usb/fcs,fsa4480.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: ON Semiconductor Analog Audio Switch
+
+maintainers:
+  - Bjorn Andersson <bjorn.andersson@linaro.org>
+
+properties:
+  compatible:
+    enum:
+      - fcs,fsa4480
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  vcc-supply:
+    description: power supply (2.7V-5.5V)
+
+  mode-switch:
+    description: Flag the port as possible handle of altmode switching
+    type: boolean
+
+  orientation-switch:
+    description: Flag the port as possible handler of orientation switching
+    type: boolean
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description:
+      A port node to link the FSA4480 to a TypeC controller for the purpose of
+      handling altmode muxing and orientation switching.
+
+required:
+  - compatible
+  - reg
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c13 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        fsa4480@42 {
+          compatible = "fcs,fsa4480";
+          reg = <0x42>;
+
+          interrupts-extended = <&tlmm 2 IRQ_TYPE_LEVEL_LOW>;
+
+          vcc-supply = <&vreg_bob>;
+
+          mode-switch;
+          orientation-switch;
+
+          port {
+            fsa4480_ept: endpoint {
+              remote-endpoint = <&typec_controller>;
+            };
+          };
+        };
+    };
+...
-- 
2.35.1

