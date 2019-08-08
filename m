Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0E10F85D55
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 10:51:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731560AbfHHIvu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 04:51:50 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:39118 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731337AbfHHIvt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 04:51:49 -0400
Received: by mail-wm1-f65.google.com with SMTP id u25so1570739wmc.4
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 01:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BSF3XLc6m+fNNwkeu0fawdiQxaFIsSlOJPuDJiDiOV8=;
        b=OhK5h7EfN87X0w/7WpQDtuKn9+DQY7zxbDBj1yn1xdvmtUwp+4fC7x93Rkl9Adzl2+
         e56a1A5RVsnoimQ5nKOh47sRMnZ5ja7JvCMuoi7OwEUkwylSpzEGjBo7+qvC7GnKC5yv
         7IoPLQM53IOcX+XixB3qUbdyB3he6v4eI6pDJpX0+JtUwk8MfGL0sIjldgoWKY0cNogf
         4RxyQCNm9OMzNC0HHyRvaYvaL06wEn86RqzGXgpKqAXKq1LQNnLoMfgeWRch+aYY+Ib+
         LHNYGAUZ9J70wmuGNT7cxXZn3kzJyGiPsODT6q7en290+MqlWSY3f5aCnZKBYg/bEuLQ
         uyWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BSF3XLc6m+fNNwkeu0fawdiQxaFIsSlOJPuDJiDiOV8=;
        b=tws9ND6Hy9kOiLudcq3gVGToAEMeM7yG/Q4m74KDS3PGPjF5NSFNPceFG+5XHSea0s
         KeaMaz1iisUcHepTHzzp1j/HVJvfHbp9Pqs/E+8iEYeVXmyHXAax/RY6ptmoBZxk1R5r
         9IiA8/i5htqaSync+2cPUpTvK42+iBj4pHKhPOPoggxGykX7xTxvhlYxywZ9nAkxI/pe
         5HzVK5lWcjw93t7lboyx/q3gnYEidrRbKMqEGbawAF6prvpfzJIadyUyOttEeb+REiUu
         qkEnbkz8HKywmmVzkBU9PcWzi+kWMHvdgfNE6btwtFbwyhmMMrCD9cy2XKBMXj2GJeAn
         vkdw==
X-Gm-Message-State: APjAAAXlYM5IZDtr5Pil7ckwVj6Xe0WXDzackJ8sSQgcrcPmZD9AbN+W
        iKWAr9H6JdWi+ilItwI6AXrkbg==
X-Google-Smtp-Source: APXvYqzZWcSTwCu8fiydxs/0CWiO8jfh1vTqLS1cwh7CWWpxjqTaMfQnU3P963/3PU//Y5/bhlWNDQ==
X-Received: by 2002:a1c:cb01:: with SMTP id b1mr3093834wmg.69.1565254307408;
        Thu, 08 Aug 2019 01:51:47 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id i66sm3360031wmi.11.2019.08.08.01.51.46
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 01:51:46 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kishon@ti.com, Rob Herring <robh@kernel.org>
Subject: [PATCH 7/9] dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml
Date:   Thu,  8 Aug 2019 10:51:37 +0200
Message-Id: <20190808085139.21438-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808085139.21438-1-narmstrong@baylibre.com>
References: <20190808085139.21438-1-narmstrong@baylibre.com>
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

Reviewed-by: Rob Herring <robh@kernel.org>
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

