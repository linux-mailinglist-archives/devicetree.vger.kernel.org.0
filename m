Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18F0E388940
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 10:21:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244795AbhESIWa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 04:22:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237547AbhESIW3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 04:22:29 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39DDFC06175F
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 01:21:10 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id p20so14592806ljj.8
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 01:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=q8re41+GyYyaAtW7tdomzdW8y0f/Cg8ezYe2LoT6rpI=;
        b=DKRL1xeadorw4AxqR3eZifT+8xEyxTnhgodb1V9Q0TI39DwMeOiajFv/aSqtT3ltIf
         WPiDzkdV3dnlUdd+M9yg+2iiTtvaX5PJtRrriAdXyP01Wt2/udzLsk3TLLwQ1yHtTt7u
         KjBKDfMyTRj1g0gyDBA9OBwfTFL3orBiPv5YirBdsFJns4rVmmkU5TIsW7+7ULwvvVqA
         lkrD3OdVattp7rg1gESs0vO5ztbYBuGlp3FxTDU9to5WOeK+bDrJHfytMXCDO5GmsUIr
         ymYkJuk8gTZUy8gADJEzgcWBopHQ4waPLQMSctVofloKtJR0PHnFtPY4JH2/+mVOArcK
         JGRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=q8re41+GyYyaAtW7tdomzdW8y0f/Cg8ezYe2LoT6rpI=;
        b=pmjUC1Gn0NRakat6RB6w6mYbfoiSQnifIo+TOCNFHuC1/P+PYLBZeiyPvDPNOwxUMt
         zfmwaiuNV8EaESKGnzxBZd+eepnDCT/UH3UyZXbyflQtq9410vXYo/JhWeh4McnMOUP5
         +xSlLGXML7PiyzPpCqSrPqlHCvhJpJn30AZiPniK9Mo8D+99JugjCXb1EDRlnWS+dVnA
         GKHbPtr9rG4izuu9PxZPzQtmkhCXapZubkVrOBzovDEtAD6uvuThOJ2M1J8M6tpLDqNs
         q10StZ0c+K0UCy7rBlBBFSV4q1cdT3FxUve0wc7qGKqVKFFPqueHUq51rios1jRiRNAi
         fPqg==
X-Gm-Message-State: AOAM533fR9tg6ppqPjGcXoJkR2bprLbw2OdCoDTA8/mcqtSKSigCdSG+
        F2d+GSTNyf0BpDnI2MEZHdA=
X-Google-Smtp-Source: ABdhPJzi6docidfDKpO3zNk98y2FYglQs/RXL5mnqFqtbSykTkwq56APwNjb5j492CXzJ47Cjvjvbg==
X-Received: by 2002:a2e:b895:: with SMTP id r21mr7978425ljp.369.1621412468620;
        Wed, 19 May 2021 01:21:08 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id q2sm601456lfd.84.2021.05.19.01.21.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 01:21:08 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vivek Unune <npcomplete13@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2 robh dt/next] dt-bindings: mfd: add Broadcom CRU
Date:   Wed, 19 May 2021 10:20:49 +0200
Message-Id: <20210519082049.30976-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210415062839.11713-1-zajec5@gmail.com>
References: <20210415062839.11713-1-zajec5@gmail.com>
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
---
V2: Use complete binding & change additionalProperties to false

NOTICE: this patch is based on top of the linux-next as it requires:
ac5f8197d15c ("dt-bindings: pinctrl: convert Broadcom Northstar to the json-schema")
08e9fdfbb224 ("dt-bindings: thermal: brcm,ns-thermal: Convert to the json-schema")
AND merged git@github.com:Broadcom/stblinux.git devicetree/next as it requires:
8f711f68cffd ("dt-bindings: clock: brcm, iproc-clocks: convert to the json-schema")

This is reworked version of the
[PATCH robh next] dt-bindings: bus: add Broadcom CRU
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20210309142241.16259-1-zajec5@gmail.com/
---
 .../devicetree/bindings/mfd/brcm,cru.yaml     | 89 +++++++++++++++++++
 1 file changed, 89 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/brcm,cru.yaml

diff --git a/Documentation/devicetree/bindings/mfd/brcm,cru.yaml b/Documentation/devicetree/bindings/mfd/brcm,cru.yaml
new file mode 100644
index 000000000000..d92424cc8226
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/brcm,cru.yaml
@@ -0,0 +1,89 @@
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
+  '^lcpll0@[a-f0-9]+$':
+    $ref: ../clock/brcm,iproc-clocks.yaml
+
+  '^genpll@[a-f0-9]+$':
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
+        lcpll0@100 {
+            #clock-cells = <1>;
+            compatible = "brcm,nsp-lcpll0";
+            reg = <0x100 0x14>;
+            clocks = <&osc>;
+            clock-output-names = "lcpll0", "pcie_phy", "sdio", "ddr_phy";
+        };
+
+        genpll@140 {
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

