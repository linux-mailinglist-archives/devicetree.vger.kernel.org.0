Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 82241818BE
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 14:03:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728594AbfHEMDd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 08:03:33 -0400
Received: from mail-wr1-f48.google.com ([209.85.221.48]:43881 "EHLO
        mail-wr1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728556AbfHEMDc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 08:03:32 -0400
Received: by mail-wr1-f48.google.com with SMTP id p13so9584115wru.10
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 05:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=b1XGdy2nJKzucwuRIzJ0TOC6ZhQODYjSeQdAwBFlneI=;
        b=lMM15MLzt6Hai8wnmTDzO/Cfv5iPTpuo1yNv7j7DLI+TssldZYUeRmJezSQ+6uT8Wf
         VplNweHvsify8msqINJ+Fk9sA1Y2mWp/lMmskb1wwhVWXsAA2RBACeC0R3XMPA4kClew
         C1KHlPK9YQ5K23SK5jCja0MhP2vbXlUaZVZotGnO95wuLZPM62pCuwjOyRPI44FnhQIj
         3AZtcO6cp2YlYulIWZ4VoLMCzzfki2JER2DA9h1RRBW4Z6VlSCxogQgKRPktzATt3opK
         Zf4fhOKJGGS85xXEIPE1z2xGWMEcSWdaMw9vHwGFaYEQ5t/sq1wTdI0isAPFyXRgl7pq
         bDXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=b1XGdy2nJKzucwuRIzJ0TOC6ZhQODYjSeQdAwBFlneI=;
        b=tAckn3GZGgSMz1mgLgG7hjvOTVrEvF4LBGAQn+3cwPWyfOKnSqqQIz9NcOouQSLaUU
         35R5tQ4JKjBBLjbsCYTFbCSGwdIXWiap8Ok2qJxTir3R2Si1ArYwgRykT2cZd4mUe6mq
         wDNl5wKrhzoB7Du8Ccsy12oMG6B1mCytLy8hjBtbqzwDVlLL1DcKnIU9qwA0dt3XIOnJ
         Z5X29CchufbsOt4BE0NNXNkU5UOMNawJtXEIJ2Kt5h+gpj+Y/fsyzs2t68je+ViDunQl
         4DkvqO/HGB4v4XWYUR3f2tdcwENhFtkOVQE/IazEHyA8MVE1ADAxuZeJPfLYrvq8SHd7
         PVxA==
X-Gm-Message-State: APjAAAVM969ToH70y9OECdIeCIWw5o86t8NzBdezz4UZRv7Isorvys/o
        RXhYz7+3vrYABOCSYOPmDvty5A==
X-Google-Smtp-Source: APXvYqz55EPEsBCPC/Ok0ShHcjO9diNKpV56u+ZyINITUx4vht63l1eGjPviZ0nVTTmm06A8XwUr7Q==
X-Received: by 2002:adf:f3c1:: with SMTP id g1mr25866889wrp.203.1565006610658;
        Mon, 05 Aug 2019 05:03:30 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id x6sm88683668wrt.63.2019.08.05.05.03.30
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 05 Aug 2019 05:03:30 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kishon@ti.com
Subject: [RFCv2 7/9] dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml
Date:   Mon,  5 Aug 2019 14:03:18 +0200
Message-Id: <20190805120320.32282-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190805120320.32282-1-narmstrong@baylibre.com>
References: <20190805120320.32282-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic G12A USB3 + PCIE Combo PHY over to a YAML schemas.

While the original phy bindings specifies phy-supply as required,
the examples and implementations makes it optional, thus phy-supply
is not present in the properties and required lists.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../phy/amlogic,meson-g12a-usb3-pcie-phy.yaml | 57 +++++++++++++++++++
 .../bindings/phy/meson-g12a-usb3-pcie-phy.txt | 22 -------
 2 files changed, 57 insertions(+), 22 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml
new file mode 100644
index 000000000000..346f9c35427c
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic G12A USB3 + PCIE Combo PHY
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-g12a-usb3-pcie-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: ref_clk
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: phy
+
+  "#phy-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - "#phy-cells"
+
+examples:
+  - |
+    phy@46000 {
+          compatible = "amlogic,meson-g12a-usb3-pcie-phy";
+          reg = <0x46000 0x2000>;
+          clocks = <&ref_clk>;
+          clock-names = "ref_clk";
+          resets = <&phy_reset>;
+          reset-names = "phy";
+          #phy-cells = <1>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.txt b/Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.txt
deleted file mode 100644
index 7cfc17e2df31..000000000000
--- a/Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-* Amlogic G12A USB3 + PCIE Combo PHY binding
-
-Required properties:
-- compatible:	Should be "amlogic,meson-g12a-usb3-pcie-phy"
-- #phys-cells:	must be 1. The cell number is used to select the phy mode
-  as defined in <dt-bindings/phy/phy.h> between PHY_TYPE_USB3 and PHY_TYPE_PCIE
-- reg:		The base address and length of the registers
-- clocks:	a phandle to the 100MHz reference clock of this PHY
-- clock-names:	must be "ref_clk"
-- resets:	phandle to the reset lines for the PHY control
-- reset-names:	must be "phy"
-
-Example:
-	usb3_pcie_phy: phy@46000 {
-		compatible = "amlogic,g12a-usb3-pcie-phy";
-		reg = <0x0 0x46000 0x0 0x2000>;
-		clocks = <&clkc CLKID_PCIE_PLL>;
-		clock-names = "ref_clk";
-		resets = <&reset RESET_PCIE_PHY>;
-		reset-names = "phy";
-		#phy-cells = <1>;
-	};
-- 
2.22.0

