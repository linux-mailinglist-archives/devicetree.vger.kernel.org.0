Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AF6C4EDDC1
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 17:47:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237546AbiCaPsv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 11:48:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239805AbiCaPs1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 11:48:27 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01EDD1D2047
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 08:45:51 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id m30so397911wrb.1
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 08:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NTk71lcApIDnaufqXkt4JJ2niYkXc5EJQfG/xzmJ8kk=;
        b=ylpjyIXdiIL565mvGo0U3p6iEoKTCb7dG4ri4XKluZp+QxnCogbrEXhZw8qZCG4538
         Bn2mlhPMYEnoenlo2Fvylp4W/u64Pm4lCrRuhpveCMtM9C62fKqT6tsj5XnW7Gf7ssmo
         /kcleFEOGazu7x1i9xVgiPafpMX4xql0dpi6DJ1LVU+En1TNzD2WDcyRnK68vP0LfaTU
         l7ckjxQLhpg0f/KuqjTucMSbVSajcR2gXxGCNxrXIVYY0F47gipc/uImz9f3W5/pgYUc
         EsaYZG+khuxEYbV2jtlc08QQGvDQ7ps2TvqtXAg7/3lWCfncimizAghIScTqh6oQYbly
         YDew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NTk71lcApIDnaufqXkt4JJ2niYkXc5EJQfG/xzmJ8kk=;
        b=rvQ5MC7nxpnuQB/Km78YYRUlXM5S5u297SoGVtiQs0I4RmU4rnJliTQ8+kD3iEfy1K
         jqAOsez2D34pvlelmnmSY5coQZhbUIrthTIR5p5bLatOYkumDnqR65njoynjDbrwY671
         x54oLodnTAKd+vKsnHbrCEFJywwT7RaTmM4Hm4wgWAMPCtXVGOoFFOP3kb3zXfuwM91N
         0hjl99C3jLAdLwyRHKlJGCyd6zeGqnHAXEPpRr4M1jkxlZE3xjjfaFxXuXNou2X+eJ9g
         2J42BxW1xJPPB3aB7NmtXga18Dy8HV2a8r0l+91jZoEh4cV/Qrf0XXWSPm0ycCMgfMeD
         MmvA==
X-Gm-Message-State: AOAM533ue7R6j8ZWyFMd04sZoOh6FHRgR0lzH9m0BnsvAi4vSHwATH6d
        hlgiGaSpFuPucLWUHDXkRUUhWA==
X-Google-Smtp-Source: ABdhPJxieu9NrSj2W08uIG2ZiGCXptlTwIUbOZSXkz52y1AGvwuoPMG2cgquPVhqAAc9k54q/3U3mA==
X-Received: by 2002:a5d:588c:0:b0:205:7f17:3901 with SMTP id n12-20020a5d588c000000b002057f173901mr4490650wrf.359.1648741549592;
        Thu, 31 Mar 2022 08:45:49 -0700 (PDT)
Received: from arch-thunder.local (a109-49-33-111.cpe.netcabo.pt. [109.49.33.111])
        by smtp.gmail.com with ESMTPSA id az19-20020a05600c601300b0038cadf3aa69sm11622812wmb.36.2022.03.31.08.45.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Mar 2022 08:45:49 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH v4 1/3] dt-bindings: net: smsc,lan91c111 convert to schema
Date:   Thu, 31 Mar 2022 16:45:34 +0100
Message-Id: <20220331154536.1544220-2-rui.silva@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220331154536.1544220-1-rui.silva@linaro.org>
References: <20220331154536.1544220-1-rui.silva@linaro.org>
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

