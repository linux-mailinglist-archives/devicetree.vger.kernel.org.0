Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAD9A53C874
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 12:17:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243552AbiFCKQT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 06:16:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233907AbiFCKQR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 06:16:17 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7318E3B28A
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 03:16:15 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id s6so3449585eja.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jun 2022 03:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yZFAC5hWrGSMWW4pyqq2o7yeNquu3KMJXhoGaGFmlr0=;
        b=oX8X9YLS/Jsx0u1jbFF0uduCaT9bKzIBMyGUILwxem9MnPfIqcoOlbcE8c9an3Ff7t
         rRQkrGFai/k/rZNByLDvlyU1tApFj52T3xGEs1p5Sz8XkfGQtUj9ebnNzhcytNoksfAD
         5c4zScx+BY0VQe8PO5wfpBP/8loe8OdBgLY6S5XYfyyU8BxmYpRMw0lC9Vk+mbjtUAzF
         6DP4lM5C3hOdp6au9AyouUGJvKRJMTu0T3ujI1o5ReU4K6Hyd24nKnfMeNO4trnxT8f0
         ObqguMLm3NTauna3b89FttwbfD31jFdU7o6Cq2nf5kcwgVzLzD8cskNkjuFqOHzcsbaB
         M+ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yZFAC5hWrGSMWW4pyqq2o7yeNquu3KMJXhoGaGFmlr0=;
        b=5LL2Bu3R5rWP0hi+2c9AogozTI6Smlljnl3ek8Um784Efez4x5n6k2KEGPl/7JfJg5
         1G+liGTygG8Tgp5rncFAX9EQx1yDrJmha1Fep08gsEEcKvTR3uqMDun3lau9kmtGY/Eo
         LfSazSCc2dLzVsBBf0VrskgT7K+irb3mwnE8rC8bS4gWAuDs/Qo5t6pCacKJORh1vSRA
         RI5vG52Nd2LUkkgP3gN6gt9wO70Hp8ESiJympOCBPTfErBk0hwl/vOaQ4hXXMQS7rD5o
         d9DXoclmru9RsF4BKwcIYmQ5E7CbSyPMLeLBBCdpNQxklnF1OIUoA4sfPXWtEgUx5etv
         xj1Q==
X-Gm-Message-State: AOAM533WS2RQW+jOYQMQv8O7CQlzVRTk31MA9P2J1avCg5uRdnVRWRze
        bkmiXJISKnc0QK45NZ/WNQ3zF1l4Xug2Bw==
X-Google-Smtp-Source: ABdhPJzp3SSeCaMMjbAPo11wRHCtnnrqatEN2YtC/HIc7nwolyhx+QdBGvzLybUmkBdIleL2VJq1IQ==
X-Received: by 2002:a17:907:1686:b0:70e:d428:f8ab with SMTP id hc6-20020a170907168600b0070ed428f8abmr1441372ejc.433.1654251373983;
        Fri, 03 Jun 2022 03:16:13 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id j15-20020a170906430f00b006f3ef214dc7sm2779008ejm.45.2022.06.03.03.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 03:16:13 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Stefan Hansson <newbie13xd@gmail.com>,
        Andreas Kemnade <andreas@kemnade.info>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RFC PATCH 1/2] dt-bindings: input: gpio-keys: enforce node names to match all properties
Date:   Fri,  3 Jun 2022 12:16:00 +0200
Message-Id: <20220603101601.542054-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220603101601.542054-1-krzysztof.kozlowski@linaro.org>
References: <20220603101601.542054-1-krzysztof.kozlowski@linaro.org>
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

The gpio-keys DT schema matches all properties with a wide pattern and
applies specific schema to children.  This has drawback - all regular
properties are also matched and are silently ignored, even if they are
not described in schema.  Basically this allows any non-object property
to be present.

Enforce specific naming pattern for children (keys) to narrow the
pattern thus do not match other properties.  This will require all
children to be named with 'key-' prefix or '-key' suffix.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/input/gpio-keys.yaml  | 169 +++++++++---------
 1 file changed, 83 insertions(+), 86 deletions(-)

diff --git a/Documentation/devicetree/bindings/input/gpio-keys.yaml b/Documentation/devicetree/bindings/input/gpio-keys.yaml
index 93f601c58984..49d388dc8d78 100644
--- a/Documentation/devicetree/bindings/input/gpio-keys.yaml
+++ b/Documentation/devicetree/bindings/input/gpio-keys.yaml
@@ -16,92 +16,89 @@ properties:
       - gpio-keys-polled
 
 patternProperties:
-  ".*":
-    if:
-      type: object
-    then:
-      $ref: input.yaml#
-
-      properties:
-        gpios:
-          maxItems: 1
-
-        interrupts:
-          maxItems: 1
-
-        label:
-          description: Descriptive name of the key.
-
-        linux,code:
-          description: Key / Axis code to emit.
-          $ref: /schemas/types.yaml#/definitions/uint32
-
-        linux,input-type:
-          description:
-            Specify event type this button/key generates. If not specified defaults to
-            <1> == EV_KEY.
-          $ref: /schemas/types.yaml#/definitions/uint32
-
-          default: 1
-
-        linux,input-value:
-          description: |
-            If linux,input-type is EV_ABS or EV_REL then this
-            value is sent for events this button generates when pressed.
-            EV_ABS/EV_REL axis will generate an event with a value of 0
-            when all buttons with linux,input-type == type and
-            linux,code == axis are released. This value is interpreted
-            as a signed 32 bit value, e.g. to make a button generate a
-            value of -1 use:
-
-            linux,input-value = <0xffffffff>; /* -1 */
-
-          $ref: /schemas/types.yaml#/definitions/uint32
-
-        debounce-interval:
-          description:
-            Debouncing interval time in milliseconds. If not specified defaults to 5.
-          $ref: /schemas/types.yaml#/definitions/uint32
-
-          default: 5
-
-        wakeup-source:
-          description: Button can wake-up the system.
-
-        wakeup-event-action:
-          description: |
-            Specifies whether the key should wake the system when asserted, when
-            deasserted, or both. This property is only valid for keys that wake up the
-            system (e.g., when the "wakeup-source" property is also provided).
-
-            Supported values are defined in linux-event-codes.h:
-
-              EV_ACT_ANY        - both asserted and deasserted
-              EV_ACT_ASSERTED   - asserted
-              EV_ACT_DEASSERTED - deasserted
-          $ref: /schemas/types.yaml#/definitions/uint32
-          enum: [0, 1, 2]
-
-        linux,can-disable:
-          description:
-            Indicates that button is connected to dedicated (not shared) interrupt
-            which can be disabled to suppress events from the button.
-          type: boolean
-
-      required:
-        - linux,code
-
-      anyOf:
-        - required:
-            - interrupts
-        - required:
-            - gpios
-
-      dependencies:
-        wakeup-event-action: [ wakeup-source ]
-        linux,input-value: [ gpios ]
-
-      unevaluatedProperties: false
+  "^(key|key-[a-z0-9-]+|[a-z0-9-]+-key)$":
+    $ref: input.yaml#
+
+    properties:
+      gpios:
+        maxItems: 1
+
+      interrupts:
+        maxItems: 1
+
+      label:
+        description: Descriptive name of the key.
+
+      linux,code:
+        description: Key / Axis code to emit.
+        $ref: /schemas/types.yaml#/definitions/uint32
+
+      linux,input-type:
+        description:
+          Specify event type this button/key generates. If not specified defaults to
+          <1> == EV_KEY.
+        $ref: /schemas/types.yaml#/definitions/uint32
+
+        default: 1
+
+      linux,input-value:
+        description: |
+          If linux,input-type is EV_ABS or EV_REL then this
+          value is sent for events this button generates when pressed.
+          EV_ABS/EV_REL axis will generate an event with a value of 0
+          when all buttons with linux,input-type == type and
+          linux,code == axis are released. This value is interpreted
+          as a signed 32 bit value, e.g. to make a button generate a
+          value of -1 use:
+
+          linux,input-value = <0xffffffff>; /* -1 */
+
+        $ref: /schemas/types.yaml#/definitions/uint32
+
+      debounce-interval:
+        description:
+          Debouncing interval time in milliseconds. If not specified defaults to 5.
+        $ref: /schemas/types.yaml#/definitions/uint32
+
+        default: 5
+
+      wakeup-source:
+        description: Button can wake-up the system.
+
+      wakeup-event-action:
+        description: |
+          Specifies whether the key should wake the system when asserted, when
+          deasserted, or both. This property is only valid for keys that wake up the
+          system (e.g., when the "wakeup-source" property is also provided).
+
+          Supported values are defined in linux-event-codes.h:
+
+            EV_ACT_ANY        - both asserted and deasserted
+            EV_ACT_ASSERTED   - asserted
+            EV_ACT_DEASSERTED - deasserted
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1, 2]
+
+      linux,can-disable:
+        description:
+          Indicates that button is connected to dedicated (not shared) interrupt
+          which can be disabled to suppress events from the button.
+        type: boolean
+
+    required:
+      - linux,code
+
+    anyOf:
+      - required:
+          - interrupts
+      - required:
+          - gpios
+
+    dependencies:
+      wakeup-event-action: [ wakeup-source ]
+      linux,input-value: [ gpios ]
+
+    unevaluatedProperties: false
 
 if:
   properties:
-- 
2.34.1

