Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 20F5925D311
	for <lists+devicetree@lfdr.de>; Fri,  4 Sep 2020 09:58:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726151AbgIDH6l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Sep 2020 03:58:41 -0400
Received: from mail.kernel.org ([198.145.29.99]:54750 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726127AbgIDH6j (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 4 Sep 2020 03:58:39 -0400
Received: from mail.kernel.org (ip5f5ad59b.dynamic.kabel-deutschland.de [95.90.213.155])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id A3079206A5;
        Fri,  4 Sep 2020 07:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1599206318;
        bh=4+iNod7Uo26SD/Kth/Kwqrml+qOis9Dkl2izVRfMBxY=;
        h=From:To:Cc:Subject:Date:From;
        b=2JjBzGQKCrRqVtg+dWgWUeUjgArki0zSI4c89zEL5U08sJxdRyYMpd/42UUPz0lSe
         37iK58c/nyMv76Jfnfqe45IU3rrxfXWFFXkG/YqkkYUijpl09SnozDfRRROedwajdN
         EoITskH0GH+s6053+xSJikx9aYCHvoM8aE2t7wyg=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
        (envelope-from <mchehab@kernel.org>)
        id 1kE6cG-005OV3-6V; Fri, 04 Sep 2020 09:58:36 +0200
From:   Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To:     Rob Herring <robh@kernel.org>
Cc:     linuxarm@huawei.com, mauro.chehab@huawei.com,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        John Stultz <john.stultz@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: convert phy-hi3660-usb3.txt to yaml
Date:   Fri,  4 Sep 2020 09:58:34 +0200
Message-Id: <edfeafe6b5a60a84d08095fb380f32e61af46d40.1599206213.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert Hisilicon Kirin 960 USB3 PHY bindings to DT schema
format using json-schema.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---

Rob,

As I'm about to submit a patch series with the phy interface for Kirin 970,
let's first convert the Kirin 960 USB3 PHY binding, as it is close enough 
to the PHY interface bindins for Kirin 970.

 .../bindings/phy/hisilicon,hi3660-usb3.yaml   | 60 +++++++++++++++++++
 .../bindings/phy/phy-hi3660-usb3.txt          | 26 --------
 2 files changed, 60 insertions(+), 26 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-hi3660-usb3.txt

diff --git a/Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml b/Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
new file mode 100644
index 000000000000..c2e073e26190
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/hisilicon,hi3660-usb3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Hisilicon Kirin 960 USB PHY
+
+maintainers:
+  - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
+description: |+
+  Bindings for USB3 PHY on HiSilicon Kirin 960.
+
+properties:
+  compatible:
+    const: hisilicon,hi3660-usb-phy
+
+  "#phy-cells":
+    const: 0
+
+  hisilicon,pericrg-syscon:
+    $ref: '/schemas/types.yaml#/definitions/phandle'
+    description: phandle of syscon used to control iso refclk.
+
+  hisilicon,pctrl-syscon:
+    $ref: '/schemas/types.yaml#/definitions/phandle'
+    description: phandle of syscon used to control usb tcxo.
+
+  hisilicon,eye-diagram-param:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Eye diagram for phy.
+
+required:
+  - compatible
+  - hisilicon,pericrg-syscon
+  - hisilicon,pctrl-syscon
+  - hisilicon,eye-diagram-param
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    bus {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      usb3_otg_bc: usb3_otg_bc@ff200000 {
+        compatible = "syscon", "simple-mfd";
+        reg = <0x0 0xff200000 0x0 0x1000>;
+
+        usb-phy {
+          compatible = "hisilicon,hi3660-usb-phy";
+          #phy-cells = <0>;
+          hisilicon,pericrg-syscon = <&crg_ctrl>;
+          hisilicon,pctrl-syscon = <&pctrl>;
+          hisilicon,eye-diagram-param = <0x22466e4>;
+        };
+      };
+    };
diff --git a/Documentation/devicetree/bindings/phy/phy-hi3660-usb3.txt b/Documentation/devicetree/bindings/phy/phy-hi3660-usb3.txt
deleted file mode 100644
index e88ba7d92dcb..000000000000
--- a/Documentation/devicetree/bindings/phy/phy-hi3660-usb3.txt
+++ /dev/null
@@ -1,26 +0,0 @@
-Hisilicon hi3660 USB PHY
------------------------
-
-Required properties:
-- compatible: should be "hisilicon,hi3660-usb-phy"
-- #phy-cells: must be 0
-- hisilicon,pericrg-syscon: phandle of syscon used to control phy.
-- hisilicon,pctrl-syscon: phandle of syscon used to control phy.
-- hisilicon,eye-diagram-param: parameter set for phy
-Refer to phy/phy-bindings.txt for the generic PHY binding properties
-
-This is a subnode of usb3_otg_bc register node.
-
-Example:
-	usb3_otg_bc: usb3_otg_bc@ff200000 {
-		compatible = "syscon", "simple-mfd";
-		reg = <0x0 0xff200000 0x0 0x1000>;
-
-		usb-phy {
-			compatible = "hisilicon,hi3660-usb-phy";
-			#phy-cells = <0>;
-			hisilicon,pericrg-syscon = <&crg_ctrl>;
-			hisilicon,pctrl-syscon = <&pctrl>;
-			hisilicon,eye-diagram-param = <0x22466e4>;
-		};
-	};
-- 
2.26.2


