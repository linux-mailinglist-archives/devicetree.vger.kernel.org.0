Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1894D818BC
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 14:03:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728483AbfHEMDc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 08:03:32 -0400
Received: from mail-wr1-f41.google.com ([209.85.221.41]:35029 "EHLO
        mail-wr1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728594AbfHEMDc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 08:03:32 -0400
Received: by mail-wr1-f41.google.com with SMTP id y4so84161118wrm.2
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 05:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tQeBoHTDyW/juIg5YxaAObUedP0IRigO3DWlsydmdvE=;
        b=LfM+hXYhOgzGI0rp3jXoy6H4d6Rlak6EpBo/Jp2TAeUrUiYiwFcsOa/rVXzyLSrI9Y
         pShPKGVD0C+7vsKEkn92ZsDajrSDprasHVqnprZToxr7SyIoZihVa1xTuI/5MZEzmtwn
         +WcptEyXF9HWsX3shOekomcmdBHTdWO9AZMCdMRkgfhp6CyVFG0I0PX0GZ7fm/VhIwlR
         wd84kFiCAxHosi4AX5U0VkAogzuAjJ/vjsf72rZMqdZK1aMYk2QKp4KrHqhWYaBbEDpm
         HKbWBUYuP35O2POJgXwGVdskeyC8r4oZe6BlOfcBaTQ6Tv4TeIxXabqyayMkJwim6+Nz
         JJzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tQeBoHTDyW/juIg5YxaAObUedP0IRigO3DWlsydmdvE=;
        b=aAGdV1ozmaKIWOLshIJPLNkp6JY2uSHb+I4fZ4nf+l6AWVV3IkFnye8Zfv5ZUzKiT8
         cF1U4NPMtP4FS9QbwvCiDa8ZnwR8+itJNVuVETM2MdFACdpvZeaeufPfKQQMsX0abSBy
         VjKK4BXgVbixK7yz51X5PesHwpNppE1wloNlIY6aeIie4RgympLYng0XZN4SC05McW3n
         0slucAc2vwVWrjgswatJ/CiOC2YhBiRpYsubYxHvX5mBhifyeaYxQ3b68m6c0JPqtnn2
         QgxdaTpza2N5HxAPyr25GBdD96IylfK2H+6h3Vh3vOa8uCl9zV1lUrMnBP44vDgklK5o
         lyew==
X-Gm-Message-State: APjAAAWnbNTWodS32U4f4W1RDqyfA5vf6IfBp22vTRVHFuyO2UT/UhuS
        HYMVUin+WLqTkHUg2bcJNayDxg==
X-Google-Smtp-Source: APXvYqyqTAAoOMr4QzjFfPNakH329yCMl3UqezhM8/xSxCkB6aWqg6l07iQQGEMIsWUA2HyyB79KYQ==
X-Received: by 2002:a5d:5302:: with SMTP id e2mr9958753wrv.347.1565006609991;
        Mon, 05 Aug 2019 05:03:29 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id x6sm88683668wrt.63.2019.08.05.05.03.29
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 05 Aug 2019 05:03:29 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kishon@ti.com
Subject: [RFCv2 6/9] dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml
Date:   Mon,  5 Aug 2019 14:03:17 +0200
Message-Id: <20190805120320.32282-7-narmstrong@baylibre.com>
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
bindings for the Amlogic G12A USB2 PHY over to a YAML schemas.

While the original phy bindings specifies phy-supply as required,
the examples and implementations makes it optional, thus phy-supply
is not in the required list of attributes.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../phy/amlogic,meson-g12a-usb2-phy.yaml      | 63 +++++++++++++++++++
 .../bindings/phy/meson-g12a-usb2-phy.txt      | 22 -------
 2 files changed, 63 insertions(+), 22 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml
new file mode 100644
index 000000000000..51254b4e65dd
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/amlogic,meson-g12a-usb2-phy.yaml#"
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
+
+  clock-names:
+    items:
+      - const: xtal
+
+  resets:
+    maxItems: 1
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
-- 
2.22.0

