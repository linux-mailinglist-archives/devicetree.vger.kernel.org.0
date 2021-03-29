Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 245B634D57E
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 18:51:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231145AbhC2QvO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 12:51:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231268AbhC2QvF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 12:51:05 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FFC3C061574
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 09:51:04 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id o16so2666268ljp.3
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 09:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=30lqEwjqAKqZiY/a72YPhPXj4BzndpAet2EzHCE8wZM=;
        b=M3jpOqC2flYFHYLQwTomIzBU/vytWlnHjRKpvO7YTF3Kz9wwYyJ6M/0+N/lL+UwNqn
         kBSQ1Elz6OXP7y06KdlBmY+dlOtwRsHIqAM2YwVZTrYGmcoEKvYXAR1BH+8QczOmgZCN
         znwSg7fGYsez8nt1XvdgQ4bwjVQIbydDjzdATy+KO9RZK6h1t2fHgxWfAhcBItEVmawP
         ZVlQfOVy4IE7VZEh7gEfEiB541JV6oCaMsbiWKJ37vVt2R38/UrCvtkgRierB3Dw3l7k
         Me4IbHiASKY15XbQ+PrShltCI+ZFlVo4ePeCsPiZIVrl8pqnIl54GpHIhLqHHk2lN9Vy
         EQZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=30lqEwjqAKqZiY/a72YPhPXj4BzndpAet2EzHCE8wZM=;
        b=BRP9/YDKLF01BzGI01cTwjLJaZFLZ06tbsuk+KZt/U3DfO75LNG9gXF5H80tbqynbi
         xZ3KzZiuRUV0m7tjQcKcnG4l26lSg9YF/PIj2RI0UvS023rT5Q2zuFtEId+gJIP0NEv+
         7yut92f4kPKE7TC+O8W8GfqHP/x1eQCwNYBZyd28Z8UrpOI6fz1K6jvPjAG5ZmcRqb96
         66aGz+BL+zPZNlAqPBQIDJmzWSUsFXlxS8LUQXltVEMd2Q/Hwp1N/rk1vfJfDto/nXLL
         T4zkQRYvy8C40JfXb48hdWDdqXNbtcwZOrGNyEFwpgRVfthvPJVhDfypxD9ADCK2scMr
         ggcg==
X-Gm-Message-State: AOAM5306koqniHXUhiJ3H1ibIuAB2M7h14iimlA7Wv+jpN8btgf1togh
        2rYMKN0DVpFuTSXXjKBmiHk=
X-Google-Smtp-Source: ABdhPJxZWjtG4qKLv9jS6iGzu2XiayL0MC7dndlAyoadgxBqXlzWIG/ubKHKWR57saY7gvP6dayeJA==
X-Received: by 2002:a2e:8051:: with SMTP id p17mr18198250ljg.130.1617036663060;
        Mon, 29 Mar 2021 09:51:03 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id q12sm2500469ljj.49.2021.03.29.09.51.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 09:51:02 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH RESEND] dt-bindings: phy: bcm-ns-usb3-phy: convert to yaml
Date:   Mon, 29 Mar 2021 18:50:56 +0200
Message-Id: <20210329165056.31647-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

1. Change syntax from txt to yaml
2. Drop "Driver for" from the title
3. Drop "reg = <0x0>;" from example (noticed by dt_binding_check)
4. Specify license

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
Reviewed-by: Rob Herring <robh@kernel.org>
---
I sent this patch back in November and got it reviewed in December.
Somehow it has missed linux-phy.git though.
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20201116074650.16070-1-zajec5@gmail.com/
---
 .../bindings/phy/bcm-ns-usb3-phy.txt          | 34 ----------
 .../bindings/phy/bcm-ns-usb3-phy.yaml         | 62 +++++++++++++++++++
 2 files changed, 62 insertions(+), 34 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/bcm-ns-usb3-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/bcm-ns-usb3-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/bcm-ns-usb3-phy.txt b/Documentation/devicetree/bindings/phy/bcm-ns-usb3-phy.txt
deleted file mode 100644
index 32f057260351..000000000000
--- a/Documentation/devicetree/bindings/phy/bcm-ns-usb3-phy.txt
+++ /dev/null
@@ -1,34 +0,0 @@
-Driver for Broadcom Northstar USB 3.0 PHY
-
-Required properties:
-
-- compatible: one of: "brcm,ns-ax-usb3-phy", "brcm,ns-bx-usb3-phy".
-- reg: address of MDIO bus device
-- usb3-dmp-syscon: phandle to syscon with DMP (Device Management Plugin)
-		   registers
-- #phy-cells: must be 0
-
-Initialization of USB 3.0 PHY depends on Northstar version. There are currently
-three known series: Ax, Bx and Cx.
-Known A0: BCM4707 rev 0
-Known B0: BCM4707 rev 4, BCM53573 rev 2
-Known B1: BCM4707 rev 6
-Known C0: BCM47094 rev 0
-
-Example:
-	mdio: mdio@0 {
-		reg = <0x0>;
-		#size-cells = <1>;
-		#address-cells = <0>;
-
-		usb3-phy@10 {
-			compatible = "brcm,ns-ax-usb3-phy";
-			reg = <0x10>;
-			usb3-dmp-syscon = <&usb3_dmp>;
-			#phy-cells = <0>;
-		};
-	};
-
-	usb3_dmp: syscon@18105000 {
-		reg = <0x18105000 0x1000>;
-	};
diff --git a/Documentation/devicetree/bindings/phy/bcm-ns-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/bcm-ns-usb3-phy.yaml
new file mode 100644
index 000000000000..7fd419db45d0
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/bcm-ns-usb3-phy.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/bcm-ns-usb3-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom Northstar USB 3.0 PHY
+
+description: |
+  Initialization of USB 3.0 PHY depends on Northstar version. There are currently
+  three known series: Ax, Bx and Cx.
+  Known A0: BCM4707 rev 0
+  Known B0: BCM4707 rev 4, BCM53573 rev 2
+  Known B1: BCM4707 rev 6
+  Known C0: BCM47094 rev 0
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+properties:
+  compatible:
+    enum:
+      - brcm,ns-ax-usb3-phy
+      - brcm,ns-bx-usb3-phy
+
+  reg:
+    description: address of MDIO bus device
+    maxItems: 1
+
+  usb3-dmp-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the DMP (Device Management Plugin) syscon
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - usb3-dmp-syscon
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        usb3-phy@10 {
+            compatible = "brcm,ns-ax-usb3-phy";
+            reg = <0x10>;
+            usb3-dmp-syscon = <&usb3_dmp>;
+            #phy-cells = <0>;
+        };
+    };
+
+    usb3_dmp: syscon@18105000 {
+        reg = <0x18105000 0x1000>;
+    };
-- 
2.26.2

