Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 841CB7DCF3
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 15:57:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730645AbfHAN4z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Aug 2019 09:56:55 -0400
Received: from mail-wm1-f52.google.com ([209.85.128.52]:39203 "EHLO
        mail-wm1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730516AbfHAN4y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Aug 2019 09:56:54 -0400
Received: by mail-wm1-f52.google.com with SMTP id u25so52942605wmc.4
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2019 06:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KNQ5CzwHqtz8MxgZ4m80rpvWQ1Kz5Bh7KhQot/XK4oE=;
        b=K1oSscOAfn+eRgfQAEHDAeL/T+m+jbZlSnlTicTve9JHVOxG5UUAkmhLJg0kFwnEaB
         VJgZxFvEZjB6dCh5Y4+/hNIUKbm4i86TaxQwy04CYAfqWDJamfkNlzKSpkqN1LZVnYCC
         xRw6W/sftfI+yR+CC8i9pPnEMMsj6qmiHoiPrvv38AZac6cvUypzasREe1M4JpunjQqn
         UvD4BeoQKlk6jo3uybh7TzeqR5Yh4RfMnQZsvc9odKdiA65LeAn0Gm4qMGy+jgAol7wj
         OuGySje8D72fw9kL5xLck3wYhIxQTQR0f3Z37KzOFE3cuM6k01AflIZKC30QhfLg7V4D
         l+2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KNQ5CzwHqtz8MxgZ4m80rpvWQ1Kz5Bh7KhQot/XK4oE=;
        b=l8H4QolcmxZSf7v6sNdcmMdKfhbHhBJWNxvbXZe1fZeGng2CVljgwp4HXK/CYoWbKh
         Bb20LIPu9GkeHS62UlZJxDO5Lhg25y7cSz3OzVb4A+aRmJmctY8iHY2NOdS/8XQHvONE
         lGQuEZ6q8T8QtJrhzYTPNOJV5WKV0Off/A3bI/P/WBHtGrSdUd70sUjYEZQ2TGXS44SG
         Aqu5HLHq93lq4wDNdJPicVhHZKpW/G50ESH7+mm4zaOlOE7d2HHt0rfvawHQfs5stSPQ
         luoMt6hjTvLwjeaTvWvRC7Zi8bWSR5RAy4AjS8FMXauyOpetwyPn0kSu5/5BePxtTXF0
         1NQg==
X-Gm-Message-State: APjAAAVBmT8DuzJKWev/929hc5SvZBN4ihii3xsyJyM3q9W+w2X804zW
        BBexxf7y+yp03Vd9rQGG0NnnRw==
X-Google-Smtp-Source: APXvYqyMiZTJ+Lf2RI7o4c0VYPdQYQnTN9th9RI/J64TenyGDwAZlYOPKzsG2fwe5oL9NNiKYJzYXQ==
X-Received: by 2002:a1c:7606:: with SMTP id r6mr1961223wmc.118.1564667812185;
        Thu, 01 Aug 2019 06:56:52 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id u6sm69659952wml.9.2019.08.01.06.56.51
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 01 Aug 2019 06:56:51 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kishon@ti.com
Subject: [RFC 6/9] dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml
Date:   Thu,  1 Aug 2019 15:56:41 +0200
Message-Id: <20190801135644.12843-7-narmstrong@baylibre.com>
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
 .../bindings/phy/meson-g12a-usb2-phy.txt      | 22 ------
 .../bindings/phy/meson-g12a-usb2-phy.yaml     | 67 +++++++++++++++++++
 2 files changed, 67 insertions(+), 22 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt b/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt
deleted file mode 100644
index a6ebc3dea159..000000000000
--- a/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-* Amlogic G12A USB2 PHY binding
-
-Required properties:
-- compatible:	Should be "amlogic,meson-g12a-usb2-phy"
-- reg:		The base address and length of the registers
-- #phys-cells:	must be 0 (see phy-bindings.txt in this directory)
-- clocks:	a phandle to the clock of this PHY
-- clock-names:	must be "xtal"
-- resets:	a phandle to the reset line of this PHY
-- reset-names:	must be "phy"
-- phy-supply:	see phy-bindings.txt in this directory
-
-Example:
-	usb2_phy0: phy@36000 {
-		compatible = "amlogic,g12a-usb2-phy";
-		reg = <0x0 0x36000 0x0 0x2000>;
-		clocks = <&xtal>;
-		clock-names = "xtal";
-		resets = <&reset RESET_USB_PHY21>;
-		reset-names = "phy";
-		#phy-cells = <0>;
-	};
diff --git a/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.yaml
new file mode 100644
index 000000000000..4cd5ba97d469
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/meson-g12a-usb2-phy.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic G12A USB2 PHY
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-g12a-usb2-phy
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
+      - const: xtal
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
+    const: 0
+
+  phy-supply:
+     maxItems: 1
+     description:
+       Phandle to a regulator that provides power to the PHY. This
+       regulator will be managed during the PHY power on/off sequence.
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
+    phy@36000 {
+          compatible = "amlogic,meson-g12a-usb2-phy";
+          reg = <0x36000 0x2000>;
+          clocks = <&xtal>;
+          clock-names = "xtal";
+          resets = <&phy_reset>;
+          reset-names = "phy";
+          #phy-cells = <0>;
+    };
-- 
2.22.0

