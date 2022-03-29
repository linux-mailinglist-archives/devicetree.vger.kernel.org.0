Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 766574EB55D
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 23:35:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234711AbiC2VhX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 17:37:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234705AbiC2VhW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 17:37:22 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09FCA1637C4
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 14:35:39 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id w21so22082348wra.2
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 14:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2IQhHO45KKAyqEUk5Zm6UqPMiR8xe/otDOU2t7N1sSU=;
        b=oc4rpU7j10MYRUEOxQggT0ub1/8qmVtN+j509NQNC1inDzXG3ggwilzpRFvx3im0HP
         j/hFRhgCLL6lvpV5w1YD+EQVsvWDC72qordaXdfU87eMkeSeEYDKDKrk41bhPh5NKjHd
         i6QxC5dE63r5oDy//rxYMBGB9uQugsPC22T+5kdn0OtS+VyHuemFsW1WmZVkTTdbqk4e
         PBY0XRJN1oh2pRvoAmRRP5/BMXfTMlB834q3nuUuAMYGHV6Us+pf1uAhULhcpD1R+lNU
         O+VRpiflfgPxXWaihhBLWAxJBVPWU72l4yorTqt/AWenYlBRabOMTdgxEdodkv/7YkH7
         E9Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2IQhHO45KKAyqEUk5Zm6UqPMiR8xe/otDOU2t7N1sSU=;
        b=ccAt1dWBMP4qBu57X23RrzKs5RoGZUcnTkhJxcf9TuxzM+IIzPiM737VNMoT7jyRY6
         85mJWzfaw+8QTWrdi7C27UFwQ0ekDMk7niXPMnY4mRNHBBQAnxy69DEzw8ytoaLjdfJE
         x+ZZxcTerazSj2+Il9Ppiy49PSYutsm1GAsGvtarStea0uNW0C1dliczqf9sRdf/86uq
         rLB5+mCAI8yTVAhjs3+FCPDma/8c3cwZlZirBJjmNdt9cDOGYEf14M5to3/8dxfCsEMm
         o9IUoV6H9gF2lCUAXUGtHGcD7zTSupD9PfyU5z029Fl6CEqC1mNpeeIjXnsm9wr/oMCp
         Vehw==
X-Gm-Message-State: AOAM533283YSqQq4PJO87/rzYXL4MjCuzd5Ckblvy7r2Ki79MDxNIs7a
        T4XTR+pogFx3ZWRTncZjGbAp2w==
X-Google-Smtp-Source: ABdhPJyJ8nSQI5mquI5UH99Et32lZAd7GtMp5S/GSFpsuQHWoR6ibuWExNbEIdQ6ERskSsBAcdP8Lw==
X-Received: by 2002:adf:e301:0:b0:205:db69:6dba with SMTP id b1-20020adfe301000000b00205db696dbamr293138wrj.605.1648589737598;
        Tue, 29 Mar 2022 14:35:37 -0700 (PDT)
Received: from arch-thunder.local (a109-49-33-111.cpe.netcabo.pt. [109.49.33.111])
        by smtp.gmail.com with ESMTPSA id f1-20020a1c6a01000000b0038c9f6a3634sm3121081wmc.7.2022.03.29.14.35.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 14:35:37 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH v2 1/3] dt-bindings: net: smsc,lan91c111 convert to schema
Date:   Tue, 29 Mar 2022 22:35:17 +0100
Message-Id: <20220329213519.801033-2-rui.silva@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220329213519.801033-1-rui.silva@linaro.org>
References: <20220329213519.801033-1-rui.silva@linaro.org>
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
 .../bindings/net/smsc,lan91c111.yaml          | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/smsc,lan91c111.yaml

diff --git a/Documentation/devicetree/bindings/net/smsc,lan91c111.yaml b/Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
new file mode 100644
index 000000000000..5976f4fa4a80
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
@@ -0,0 +1,59 @@
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
+    default: 2
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
+additionalProperties: true
+
+examples:
+  - |
+    ethernet@4010000 {
+          compatible = "smsc,lan91c111";
+          reg = <0x40100000 0x10000>;
+          phy-mode = "mii";
+          interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
+          reg-io-width = <2>;
+    };
-- 
2.35.1

