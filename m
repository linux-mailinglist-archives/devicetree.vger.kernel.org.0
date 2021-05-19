Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 512F63895A2
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 20:40:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231594AbhESSmP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 14:42:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230285AbhESSmO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 14:42:14 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95391C06175F
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 11:40:54 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id a2so20569507lfc.9
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 11:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3+conjy/whJVCXgr0FijulgXDt7q0A9X2v/c/K8mZP4=;
        b=avQ+xuQNXS5X/PSWV0PmgbXOGL9DMy2MKzOAnNjMX6GIb2GDjQOD27DQa5xFS4pO6a
         5/fEgxfzJu60Gm0GQsaEr6JeNmyWACsFkgVcXrcFIP0+c9KYOjov8zx51CQ3k7IK7iv+
         ZWKNLEMKRsY8bgDeapIV0K8Ovr6Yew9FPgR7QEgrhAT23nOCeYo+WByI+2HlUb7KEAGw
         PLEoSq4+kAZuQ40tFAkO83H4NHFqonLLUajT/AQm1BQQIzOCpLhwymIK7KuUlg/Fyf+S
         M1blpZJXnzFrS59Sya383DckvCdMvhcicMnbMyD69sGQPVrrvaUdfRyn8EpxnFu5U8hk
         CLpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3+conjy/whJVCXgr0FijulgXDt7q0A9X2v/c/K8mZP4=;
        b=eNgaiQSyiCBL8+XUrvbIsqA7wznZ6+JaiululERfzI2S7DbDBEM3XIgNMtGj8nq0Bo
         0TxV0PSkeM9gN068jAUjB1KPGk40eU3NJyXsfTDtRhUCKLQbS/Ol6ahZbOeMyA1KMvPA
         OE84xc1JVDUHa0BzHzVV3PObIaOGEBOYTSOom0iMrD6wZGB2JbzcFxzZbrmbrbKTg4TM
         +SShk5aqfgcAknPQ7kt0vzjRtPLl61hVlIwn+e3wfEN56VwhchMtNkmPgygG/+ZaIOsy
         ApTbrXaCtieRgPEzdoo0zYCOI6pjh5t5VA17IItdj1KrcygEoMYW60RCyhzNzB8n8TyE
         5C/w==
X-Gm-Message-State: AOAM530F5RCPG1/aULqTcbaxDRRa+cpBuYul42BnzWDGvQEvTfgRxjnf
        Xl8NXgzvyEwgRWj+hQ6L+2M=
X-Google-Smtp-Source: ABdhPJwaYtNFrY5T+jLMFI5B0cuo+DoKS4shQwzJty3J8+daGsHZsWnVPoaokQEP+ZeEYBRI+Fyk3A==
X-Received: by 2002:a19:cd5:: with SMTP id 204mr611100lfm.390.1621449652884;
        Wed, 19 May 2021 11:40:52 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id g2sm9229ljn.35.2021.05.19.11.40.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 11:40:52 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vivek Unune <npcomplete13@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH V3 robh dt/next] dt-bindings: mfd: add Broadcom CRU
Date:   Wed, 19 May 2021 20:40:41 +0200
Message-Id: <20210519184041.563-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210519082049.30976-1-zajec5@gmail.com>
References: <20210519082049.30976-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

CRU is a block used in e.g. Northstar devices. It can be seen in the
bcm5301x.dtsi and this binding documents its proper usage.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Rob: would you take this patch through your dt/next?

V2: Use complete binding & change additionalProperties to false
V3: Use clock-controller@ for clocks

NOTICE: this patch is based on top of the linux-next as it requires:
ac5f8197d15c ("dt-bindings: pinctrl: convert Broadcom Northstar to the json-schema")
08e9fdfbb224 ("dt-bindings: thermal: brcm,ns-thermal: Convert to the json-schema")
AND merged git@github.com:Broadcom/stblinux.git devicetree/next as it requires:
8f711f68cffd ("dt-bindings: clock: brcm, iproc-clocks: convert to the json-schema")

This is reworked version of the
[PATCH robh next] dt-bindings: bus: add Broadcom CRU
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20210309142241.16259-1-zajec5@gmail.com/
---
 .../devicetree/bindings/mfd/brcm,cru.yaml     | 86 +++++++++++++++++++
 1 file changed, 86 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/brcm,cru.yaml

diff --git a/Documentation/devicetree/bindings/mfd/brcm,cru.yaml b/Documentation/devicetree/bindings/mfd/brcm,cru.yaml
new file mode 100644
index 000000000000..fc1317ab3226
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/brcm,cru.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/brcm,cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom CRU
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+description: |
+  Broadcom CRU ("Clock and Reset Unit" or "Central Resource Unit") is a hardware
+  block grouping smaller blocks. On Broadcom Northstar platform it contains e.g.
+  clocks, pinctrl, USB PHY and thermal.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - brcm,ns-cru
+      - const: simple-mfd
+
+  reg:
+    description: CRU registers
+
+  ranges: true
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  pinctrl:
+    $ref: ../pinctrl/brcm,ns-pinmux.yaml
+
+patternProperties:
+  '^clock-controller@[a-f0-9]+$':
+    $ref: ../clock/brcm,iproc-clocks.yaml
+
+  '^thermal@[a-f0-9]+$':
+    $ref: ../thermal/brcm,ns-thermal.yaml
+
+additionalProperties: false
+
+required:
+  - reg
+
+examples:
+  - |
+    cru-bus@1800c100 {
+        compatible = "brcm,ns-cru", "simple-mfd";
+        reg = <0x1800c100 0x1d0>;
+        ranges;
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        clock-controller@100 {
+            #clock-cells = <1>;
+            compatible = "brcm,nsp-lcpll0";
+            reg = <0x100 0x14>;
+            clocks = <&osc>;
+            clock-output-names = "lcpll0", "pcie_phy", "sdio", "ddr_phy";
+        };
+
+        clock-controller@140 {
+            #clock-cells = <1>;
+            compatible = "brcm,nsp-genpll";
+            reg = <0x140 0x24>;
+            clocks = <&osc>;
+            clock-output-names = "genpll", "phy", "ethernetclk", "usbclk",
+                                 "iprocfast", "sata1", "sata2";
+        };
+
+        pinctrl {
+            compatible = "brcm,bcm4708-pinmux";
+            offset = <0x1c0>;
+        };
+
+        thermal@2c0 {
+            compatible = "brcm,ns-thermal";
+            reg = <0x2c0 0x10>;
+            #thermal-sensor-cells = <0>;
+        };
+    };
-- 
2.26.2

