Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EC9207DCF7
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 15:57:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730585AbfHAN44 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Aug 2019 09:56:56 -0400
Received: from mail-wm1-f45.google.com ([209.85.128.45]:56027 "EHLO
        mail-wm1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730091AbfHAN4z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Aug 2019 09:56:55 -0400
Received: by mail-wm1-f45.google.com with SMTP id a15so64756965wmj.5
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2019 06:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IzLVWfUckV6sv4P8WEDAzk1hQ32B7pi/wYsEqMlj44g=;
        b=Xvgc/ocv4Pc3xQCYUrTRgd1+VNE1dfmhH0iQNfMu6puCmTb6dASrUfHhqudDQ/l6vZ
         PUAEHP6UerwDyADMmjnS5gqHhEFfV35Hcls3hEpTVuLbhZK2E08MzCSdaCGYZ/emn+jv
         5uinTwHTr62F9KdNODy31IgU0aUtyls6tyluZWVjFwW4685WvwpYghMjjwIR0Xq8kqkQ
         aA6RM9Vtz2/Nt/3IDnEoUuBEb9OULYTDXZ3AzKnBMFN7wORSJY0Zv7ixjLSh/oUSc8vH
         Oug2qc/WKuqzu+abb3yh1H8BJNzwlqJQi/NtS0CDRnuyGY7lfAisjhfpwN79Ku9Det70
         b+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IzLVWfUckV6sv4P8WEDAzk1hQ32B7pi/wYsEqMlj44g=;
        b=bqzwvhyetJj5fzMfMb3nOv6vcWSOUgEFUX4dNNGfRF2M0p6StoxIyY2Gmy3hdLTffV
         bktZN2iGUAMfKUNQ5aDeTgaxSghHACEeriLauR3JmEokETX/U0u8DPgnXDafj24/7+vb
         rsU98jy+ZErprMZ1fisD2LLrlLwpQSCUIjD+Taf8QsF+yweXnlm1lvuselZxEB8qfK3m
         azfJjdzmYSbtP5pLCmLzr2zYothId0Z3MG8mpd4O4uJH19Au2xucITFpqHsVDxzc6jOW
         fC1UtZLeW5lwFB+x4nE2cVYqAuZcJgeY/kwg9ki4UzdJJd4u9149u5GAkGzCldjjDuRw
         2bQA==
X-Gm-Message-State: APjAAAUJEa/loLjvmOvUx1Ixty/GSaixSskspGzELEBhaTfTGriZOUp/
        zVRIFZEAckYxLcsUIErF/gc8NA==
X-Google-Smtp-Source: APXvYqwpYdU7FKKmCrsk0lBieaLk0ALgoNb8lcKOLGBc4eBXZCl0je/gVXaFOUnT7ZqjnwT5ZaUBCg==
X-Received: by 2002:a1c:b706:: with SMTP id h6mr113270956wmf.119.1564667812883;
        Thu, 01 Aug 2019 06:56:52 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id u6sm69659952wml.9.2019.08.01.06.56.52
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 01 Aug 2019 06:56:52 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kishon@ti.com
Subject: [RFC 7/9] dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml
Date:   Thu,  1 Aug 2019 15:56:42 +0200
Message-Id: <20190801135644.12843-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190801135644.12843-1-narmstrong@baylibre.com>
References: <20190801135644.12843-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/phy/meson-g12a-usb3-pcie-phy.txt | 22 -------
 .../phy/meson-g12a-usb3-pcie-phy.yaml         | 61 +++++++++++++++++++
 2 files changed, 61 insertions(+), 22 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.yaml

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
diff --git a/Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.yaml
new file mode 100644
index 000000000000..fe4df6bd51b2
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/meson-g12a-usb3-pcie-phy.yaml#"
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
+      - amlogic,g12a-usb3-pcie-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+    description:
+      A phandle to the clock of this PHY
+
+  clock-names:
+    items:
+      - const: ref_clk
+
+  resets:
+    maxItems: 1
+    description:
+      A phandle to the reset line of this PHY
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
-- 
2.22.0

