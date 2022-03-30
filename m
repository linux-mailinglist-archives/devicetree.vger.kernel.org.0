Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 604384EC54A
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 15:11:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345151AbiC3NMr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 09:12:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343959AbiC3NMq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 09:12:46 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FF25215919
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 06:11:01 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id j18so29205802wrd.6
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 06:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NTk71lcApIDnaufqXkt4JJ2niYkXc5EJQfG/xzmJ8kk=;
        b=LV/g4YBOj5uH8TvsgSi9k2a41r56x7PMGj8CzZc3xB+VLsS5dvoFBanFPoRR55Zbnr
         zYFeSMkh5psxxNzH6WKrq0yWw2IjHWDYlvkOg8mdzgnRdElO78hELBhQyamvH3j/BDbU
         gXAJayjzd3z7S2nlfUX6iYJaLNOwARhW4reNjoS34TB75NryC5v0pnEdvMhFVhPgWccc
         Lp+ncJ8W41kmfV815AHiDphuFjjP8roAW7DOM1POeHnL9CQ+hQGakrVEgs66F8isPbKD
         emM4pcJC+xZ0K/lZvGBsujNwPZYLWp4XB+6i0jshN6u3EGshF6dVDmUbD7Pmlz66S+/X
         4NTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NTk71lcApIDnaufqXkt4JJ2niYkXc5EJQfG/xzmJ8kk=;
        b=1wPEGb6w/q82vWLau4YNnPdMwyI1VodPtZIfKaxDHKjJXYfojp6iCvR1H7Z16Tzh1m
         IKIIhoB7t/AYCOLIbRPj4XT8RxZ91+V7KGFSci7psVrV3I6RvOs9sRGAiPVI9HQnCvsT
         3YYO+cvRBU58A2oo2Y/eyesEvqRUFT6PfVKZeAP18pW5P7Mpsk2hn1jhjZHphq+VBlST
         ZTSnnA/saml7YvEBhntBHqKlKjEGK02aKbW/uJ9BJJn28zC5uzfTm+21DpTgMmesOiRh
         +nOGdHZ96/uw9FDwb/qnhZM4AzDmIPt30hAiqAexYKBsGtwTmD7hiei5Y1bNle5f/RyD
         FUmg==
X-Gm-Message-State: AOAM530U2uKTeYSM1Ko4f+ttH+Ci8k3DvTs6k4uF0NqkT2LgJOmHvh9n
        4kxVJnXvLYojbwtdEv2tsKt/Mw==
X-Google-Smtp-Source: ABdhPJybYPkSmHa3hoJODm4smsv/SBYDOMSHBk4wrDbD7CDFUDRlUQZsDz31RLq75M1AiZJCMtCa0w==
X-Received: by 2002:a05:6000:2a8:b0:205:a7be:c330 with SMTP id l8-20020a05600002a800b00205a7bec330mr29030032wry.290.1648645859558;
        Wed, 30 Mar 2022 06:10:59 -0700 (PDT)
Received: from arch-thunder.local (a109-49-33-111.cpe.netcabo.pt. [109.49.33.111])
        by smtp.gmail.com with ESMTPSA id u7-20020a5d6da7000000b00203d9d1875bsm20134479wrs.73.2022.03.30.06.10.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Mar 2022 06:10:59 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH v3 1/3] dt-bindings: net: smsc,lan91c111 convert to schema
Date:   Wed, 30 Mar 2022 14:10:51 +0100
Message-Id: <20220330131053.1122502-2-rui.silva@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220330131053.1122502-1-rui.silva@linaro.org>
References: <20220330131053.1122502-1-rui.silva@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the smsc lan91c9x and lan91c1xx controller device tree
bindings documentation to json-schema.

Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
---
 .../bindings/net/smsc,lan91c111.yaml          | 61 +++++++++++++++++++
 .../bindings/net/smsc-lan91c111.txt           | 17 ------
 2 files changed, 61 insertions(+), 17 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/smsc-lan91c111.txt

diff --git a/Documentation/devicetree/bindings/net/smsc,lan91c111.yaml b/Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
new file mode 100644
index 000000000000..1730284430bc
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/smsc,lan91c111.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Smart Mixed-Signal Connectivity (SMSC) LAN91C9x/91C1xx Controller
+
+maintainers:
+  - Nicolas Pitre <nico@fluxnic.net>
+
+allOf:
+  - $ref: ethernet-controller.yaml#
+
+properties:
+  compatible:
+    const: smsc,lan91c111
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  reg-shift: true
+
+  reg-io-width:
+    enum: [ 1, 2, 4 ]
+    default: 4
+
+  reset-gpios:
+    description: GPIO connected to control RESET pin
+    maxItems: 1
+
+  power-gpios:
+    description: GPIO connect to control PWRDEWN pin
+    maxItems: 1
+
+  pxa-u16-align4:
+    description: put in place the workaround the force all u16 writes to be
+      32 bits aligned
+    type: boolean
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    ethernet@4010000 {
+          compatible = "smsc,lan91c111";
+          reg = <0x40100000 0x10000>;
+          phy-mode = "mii";
+          interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
+          reg-io-width = <2>;
+    };
diff --git a/Documentation/devicetree/bindings/net/smsc-lan91c111.txt b/Documentation/devicetree/bindings/net/smsc-lan91c111.txt
deleted file mode 100644
index 309e37eb7c7c..000000000000
--- a/Documentation/devicetree/bindings/net/smsc-lan91c111.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-SMSC LAN91c111 Ethernet mac
-
-Required properties:
-- compatible = "smsc,lan91c111";
-- reg : physical address and size of registers
-- interrupts : interrupt connection
-
-Optional properties:
-- phy-device : see ethernet.txt file in the same directory
-- reg-io-width : Mask of sizes (in bytes) of the IO accesses that
-  are supported on the device.  Valid value for SMSC LAN91c111 are
-  1, 2 or 4.  If it's omitted or invalid, the size would be 2 meaning
-  16-bit access only.
-- power-gpios: GPIO to control the PWRDWN pin
-- reset-gpios: GPIO to control the RESET pin
-- pxa-u16-align4 : Boolean, put in place the workaround the force all
-		   u16 writes to be 32 bits aligned
-- 
2.35.1

