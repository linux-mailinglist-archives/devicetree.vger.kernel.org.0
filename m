Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8B7534D576
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 18:51:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231341AbhC2QvN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 12:51:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231233AbhC2Qu4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 12:50:56 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2101C061574
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 09:50:55 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id u10so16717770lju.7
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 09:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ev5ZnwQH6OovPoIb991rlKvDbjzbwVrID4ypFygfIXw=;
        b=KdsrLZOdnGtJgVoDzaoH/Wibt+pls2wz39lHc6nXZAhWN+eGa0pPzSjInfVOcOb9M3
         NYJrLydA8LBf4Zm8akQgWMt3pqrXO8jYNUR35tuF/hSpWNNbpsOCqVYF8Zu1tAn1Os8S
         X40K02rD9N3m6/G9oOa6aQK3swEs3/hT6QeYUOknLqQWSIUVM5RiL8gDavjlFhYynuj0
         omJpsmSjr70g4cGKWe8iHXNS9DS4nSfMrdvy7mzq+Sd5IgAACqxSq0JK9sjuY1G4ZckB
         jOip4O38Yya+k3tjp4FPGsSAe+bVQi4C2SLUG5xGzXbFyfRPPM+VN7yZzdCBXsc2+p6K
         guOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ev5ZnwQH6OovPoIb991rlKvDbjzbwVrID4ypFygfIXw=;
        b=jx2vemhYusdXlYjXdfU/P4ta3Iwb6yNshHFREPdcjUM55LPdrO6RN0PgIN6QlxN50/
         YiA8J4Oty1/zBqY3XnOjsihdksPlAJFjz2WjopzY5tTU1+MWytjtnA0mS5PVFxFEhweM
         jJuUw35HpW6WZKR8UFlkogwFenWvSrh9osRgNN91vpuEBfqG++2xqSzXHwodebSRwecQ
         nIftKigxzb8ebpRu6/vT7DIQ30qpUrTctbi87/oN/E8IVsBfiQPVvv9L+FikbGCR4ngp
         FmAG+Aa+CafYjp2d7woUtJNmTeCueCjq5V3NHFcnR3IRuTBdEXGUfBPLV3NBzKpPrsy2
         j+UQ==
X-Gm-Message-State: AOAM532uNX//cV6ppUEExCsm/CPLR2zdnBulyF0imGoOfqt/1HojGheD
        2SNZwpqjcLj0teOlSTAJAug=
X-Google-Smtp-Source: ABdhPJyvexCnCXT4nMw+KmaDGzdG+aa66NFRIvjrv7bJuef+DB0LtEF/KqpohyIxk4IIex9kSoECrQ==
X-Received: by 2002:a2e:b6d4:: with SMTP id m20mr18711288ljo.448.1617036654385;
        Mon, 29 Mar 2021 09:50:54 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id 71sm1884905lfj.212.2021.03.29.09.50.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 09:50:53 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH RESEND] dt-bindings: phy: bcm-ns-usb2-phy: convert to yaml
Date:   Mon, 29 Mar 2021 18:50:41 +0200
Message-Id: <20210329165041.31574-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

1. Convert from txt to yaml
2. Drop "Driver for" from the title
3. Document "#phy-cells"
4. Fix example node name (noticed by dt_binding_check)
5. Add #include to example (noticed by dt_binding_check)
6. Specify license

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
Reviewed-by: Rob Herring <robh@kernel.org>
---
I sent this patch back in November and got it reviewed in December.
Somehow it has missed linux-phy.git though.
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20201116074650.16070-2-zajec5@gmail.com/
---
 .../bindings/phy/bcm-ns-usb2-phy.txt          | 21 -------
 .../bindings/phy/bcm-ns-usb2-phy.yaml         | 59 +++++++++++++++++++
 2 files changed, 59 insertions(+), 21 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/bcm-ns-usb2-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/bcm-ns-usb2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/bcm-ns-usb2-phy.txt b/Documentation/devicetree/bindings/phy/bcm-ns-usb2-phy.txt
deleted file mode 100644
index a7aee9ea8926..000000000000
--- a/Documentation/devicetree/bindings/phy/bcm-ns-usb2-phy.txt
+++ /dev/null
@@ -1,21 +0,0 @@
-Driver for Broadcom Northstar USB 2.0 PHY
-
-Required properties:
-- compatible: brcm,ns-usb2-phy
-- reg: iomem address range of DMU (Device Management Unit)
-- reg-names: "dmu", the only needed & supported reg right now
-- clocks: USB PHY reference clock
-- clock-names: "phy-ref-clk", the only needed & supported clock right now
-
-To initialize USB 2.0 PHY driver needs to setup PLL correctly. To do this it
-requires passing phandle to the USB PHY reference clock.
-
-Example:
-	usb2-phy {
-		compatible = "brcm,ns-usb2-phy";
-		reg = <0x1800c000 0x1000>;
-		reg-names = "dmu";
-		#phy-cells = <0>;
-		clocks = <&genpll BCM_NSP_GENPLL_USB_PHY_REF_CLK>;
-		clock-names = "phy-ref-clk";
-	};
diff --git a/Documentation/devicetree/bindings/phy/bcm-ns-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/bcm-ns-usb2-phy.yaml
new file mode 100644
index 000000000000..05b4dcd80019
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/bcm-ns-usb2-phy.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/bcm-ns-usb2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom Northstar USB 2.0 PHY
+
+description: >
+  To initialize USB 2.0 PHY driver needs to setup PLL correctly.
+  To do this it requires passing phandle to the USB PHY reference clock.
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+properties:
+  compatible:
+    const: brcm,ns-usb2-phy
+
+  reg:
+    items:
+      - description: iomem address range of DMU (Device Management Unit)
+
+  reg-names:
+    items:
+      - const: dmu
+
+  clocks:
+    items:
+      - description: USB PHY reference clock
+
+  clock-names:
+    items:
+      - const: phy-ref-clk
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/bcm-nsp.h>
+    phy@1800c000 {
+        compatible = "brcm,ns-usb2-phy";
+        reg = <0x1800c000 0x1000>;
+        reg-names = "dmu";
+        clocks = <&genpll BCM_NSP_GENPLL_USB_PHY_REF_CLK>;
+        clock-names = "phy-ref-clk";
+        #phy-cells = <0>;
+    };
-- 
2.26.2

