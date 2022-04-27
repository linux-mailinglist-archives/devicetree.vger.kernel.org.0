Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 590F8511D7F
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 20:35:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244514AbiD0SDL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 14:03:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244516AbiD0SDK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 14:03:10 -0400
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE02234B2F1;
        Wed, 27 Apr 2022 10:59:58 -0700 (PDT)
Received: by mail-oi1-f178.google.com with SMTP id r8so2809181oib.5;
        Wed, 27 Apr 2022 10:59:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yDi6ABvZiU8Kxkyro+rKr5Qwo38cPfR39KHCN/U9640=;
        b=i6Zl5rN2gq6N545nvrJmaYFXFz8YqNFpJ0JASIT7w2bNOt0/sa5uRayqTIhZxwXPKX
         j3ujuXKfVvEErSl9n6juVf0Kuf8QuHAQJ/O/x+wVnNqv8tzuZRPZN9dgR47u6uTgDlqJ
         KYDo0Bin/acKlr+zE63Ea3iw0udH1bQToIwOQtpOCF8VGs63AF3aZhT0F0YqTaHFyLOe
         wWsuy/ZbjIGY3ffAPwKIAq4DU10vkARMhQJ44hO8QayBaQNS2pJa8TOVRAeOlX3fv5ee
         lvUPijcTPIfa172vkG9fj8FsSnBXcjUsAyVN1IFsLMKooY3EjDK2BtuWMCGbvYvvcido
         kvxA==
X-Gm-Message-State: AOAM531lOe8eZATykCZlIrNmz70D5Wtg94jc2MprkHP32QPUQDmBEgSs
        cW3UEzySOTUGRl1s6/hu2bWOE/nblw==
X-Google-Smtp-Source: ABdhPJxEzO0ZiRrBhfQQNkjfbprrgm0xpxUddKC9dHAFMCG5+WDg+0DbWWMkLdw+5dYpC9UJHXMB4A==
X-Received: by 2002:a05:6808:238d:b0:324:fa65:e8b1 with SMTP id bp13-20020a056808238d00b00324fa65e8b1mr12063634oib.203.1651082397784;
        Wed, 27 Apr 2022 10:59:57 -0700 (PDT)
Received: from xps15.. (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.googlemail.com with ESMTPSA id u36-20020a05687004e400b000e932746d33sm935326oam.28.2022.04.27.10.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 10:59:57 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     devicetree@vger.kernel.org, devicetree-spec@vger.kernel.org
Cc:     Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Eugen Hristev <eugen.hristev@microchip.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
        Jon Hunter <jonathanh@nvidia.com>,
        Alain Volmat <alain.volmat@foss.st.com>,
        Matt Johnston <matt@codeconstruct.com.au>
Subject: [dtschema PATCH] schemas: i2c: Add missing properties and descriptions
Date:   Wed, 27 Apr 2022 12:59:56 -0500
Message-Id: <20220427175956.362987-1-robh@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add remaining properties and descriptions from i2c.txt binding in Linux
kernel tree. The Cc list are the authors of i2c.txt.

Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Eugen Hristev <eugen.hristev@microchip.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Cc: Jon Hunter <jonathanh@nvidia.com>
Cc: Alain Volmat <alain.volmat@foss.st.com>
Cc: Matt Johnston <matt@codeconstruct.com.au>
Signed-off-by: Rob Herring <robh@kernel.org>
---
Cc list, 

I need your or your company's permission to relicense i2c.txt contents 
(used in 'description') to BSD-2-Clause. Please ack and provide a 
copyright if desired.

 dtschema/schemas/i2c/i2c-controller.yaml | 143 +++++++++++++++++++++++
 1 file changed, 143 insertions(+)

diff --git a/dtschema/schemas/i2c/i2c-controller.yaml b/dtschema/schemas/i2c/i2c-controller.yaml
index 91eac62a6bc8..c2e803ebcc3f 100644
--- a/dtschema/schemas/i2c/i2c-controller.yaml
+++ b/dtschema/schemas/i2c/i2c-controller.yaml
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: BSD-2-Clause
 # Copyright 2018 Linaro Ltd.
+# Copyright 2022 Arm Ltd.
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/i2c/i2c-controller.yaml#
@@ -28,6 +29,91 @@ properties:
     minimum: 1000
     maximum: 3000000
 
+  i2c-scl-falling-time-ns:
+    description:
+      Number of nanoseconds the SCL signal takes to fall; t(f) in the I2C
+      specification.
+
+  i2c-scl-internal-delay-ns:
+    description:
+      Number of nanoseconds the IP core additionally needs to setup SCL.
+
+  i2c-scl-rising-time-ns:
+    description:
+      Number of nanoseconds the SCL signal takes to rise; t(r) in the I2C
+      specification.
+
+  i2c-sda-falling-time-ns:
+    description:
+      Number of nanoseconds the SDA signal takes to fall; t(f) in the I2C
+      specification.
+
+  i2c-analog-filter:
+    type: boolean
+    description:
+      Enable analog filter for i2c lines.
+
+  i2c-digital-filter:
+    type: boolean
+    description:
+      Enable digital filter for i2c lines.
+
+  i2c-digital-filter-width-ns:
+    description:
+      Width of spikes which can be filtered by digital filter
+      (i2c-digital-filter). This width is specified in nanoseconds.
+
+  i2c-analog-filter-cutoff-frequency:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Frequency that the analog filter (i2c-analog-filter) uses to distinguish
+      which signal to filter. Signal with higher frequency than specified will
+      be filtered out. Only lower frequency will pass (this is applicable to a
+      low-pass analog filter). Typical value should be above the normal i2c bus
+      clock frequency (clock-frequency). Specified in Hz.
+
+  mctp-controller:
+    type: boolean
+    description:
+      Indicates that the system is accessible via this bus as an endpoint for
+      MCTP over I2C transport.
+
+  multi-master:
+    type: boolean
+    description:
+      States that there is another master active on this bus. The OS can use
+      this information to adapt power management to keep the arbitration awake
+      all the time, for example. Can not be combined with 'single-master'.
+
+  scl-gpios:
+    maxItems: 1
+    description:
+      Specifies the GPIO related to SCL pin. Used for GPIO bus recovery.
+
+  sda-gpios:
+    maxItems: 1
+    description:
+      Specifies the GPIO related to SDA pin. Optional for GPIO bus recovery.
+
+  single-master:
+    type: boolean
+    description:
+      States that there is no other master active on this bus. The OS can use
+      this information to detect a stalled bus more reliably, for example. Can
+      not be combined with 'multi-master'.
+
+  smbus:
+    type: boolean
+    description:
+      States that additional SMBus restrictions and features apply to this bus.
+      An example of feature is SMBusHostNotify. Examples of restrictions are
+      more reserved addresses and timeout definitions.
+
+  smbus-alert:
+    type: boolean
+    description:
+      states that the optional SMBus-Alert feature apply to this bus.
+
   no-detect:
     type: boolean
     description:
@@ -38,4 +124,61 @@ patternProperties:
   '@[0-9a-f]+$':
     type: object
 
+    properties:
+      reg:
+        items:
+          items:
+            - oneOf:
+                - maximum: 0x7f
+                - minimum: 0x40000000
+                  maximum: 0x4000007f
+                - minimum: 0x80000000
+                  maximum: 0x800003ff
+                - minimum: 0xc0000000
+                  maximum: 0xc00003ff
+        description: |
+          One or many I2C slave addresses. These are usually a 7 bit addresses.
+          However, flags can be attached to an address. I2C_TEN_BIT_ADDRESS is
+          used to mark a 10 bit address. It is needed to avoid the ambiguity
+          between e.g. a 7 bit address of 0x50 and a 10 bit address of 0x050
+          which, in theory, can be on the same bus.
+          Another flag is I2C_OWN_SLAVE_ADDRESS to mark addresses on which we
+          listen to be devices ourselves.
+
+      host-notify:
+        description:
+          Device uses SMBus host notify protocol instead of interrupt line.
+          Requires being connected to an adapter that supports this feature.
+
+      interrupts:
+        description:
+          I2C core will treat "irq" interrupt (or the very first interrupt if
+          not using interrupt names) as primary interrupt for the slave.
+
+      interrupt-names:
+        anyOf:
+          - {} # Any name is allowed.
+          - items:
+              enum:
+                - irq
+                - wakeup
+                - smbus_alert
+            description:
+              Names which are recognized by I2C core,	other names are	left to
+              individual bindings.
+
+      wakeup-source:
+        description:
+          Device can be used as a wakeup source. The device should also have
+          "wakeup" interrupt for the device. If "wakeup" interrupt name is not
+          present in the binding, then primary interrupt will be used as wakeup
+          interrupt.
+
+    required:
+      - reg
+
+dependentRequired:
+  i2c-analog-filter-cutoff-frequency: [ i2c-analog-filter ]
+  i2c-digital-filter-width-ns: [ i2c-digital-filter ]
+
 additionalProperties: true
-- 
2.34.1

