Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ED06785D54
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 10:51:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731532AbfHHIvt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 04:51:49 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:44542 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731364AbfHHIvs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 04:51:48 -0400
Received: by mail-wr1-f67.google.com with SMTP id p17so94050775wrf.11
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 01:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JUfUgUzGyK7uHYBpdiI+XN0C4d1T2zkQ6vdtZcX/Nk8=;
        b=U5wwzrNnkzDuHqbRGAMHt2GGsAdkmRl9rJPS/60/Fi0TvDwXmaGV9sjdoowQIrQ7pV
         C01PFvoJ2rFbUrzYg/7C9FtcxAv58GmPlXxESD48g1XuA1tygVDlu6CC2FHG51zdD64X
         +3dTDiQa9n8QPDT/T4ZJoJbWCGLxivwVURDkXRafmFeDgiz62Lj3gicQ+Jmdr5QwCD4/
         2SmxlYDN0L03Wi4p68mn/56vxWOb21VnOm+RIhlXm9D4JXaxcdXc1Ryyi2RWeGaTtauD
         HJemssmPeN4qIYEzWTsyZK0hNghu9D/nbzkJXO/SdyVJuciD0sJRSRzHh+aTHoYY4Roh
         6KaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JUfUgUzGyK7uHYBpdiI+XN0C4d1T2zkQ6vdtZcX/Nk8=;
        b=pCIMhyo7ZDnp95hEg46wdaf4pODvPUuHk4TMKzTeWvwF0i39dR3bp5M+oKwDvlhFEw
         ne2G2RW9XAhnQ7tbtvCYimWe7Tb8vZ6PIph9438aL1GEpG5/mY9MBUZVHGnygPva3sb6
         Zeex9yEdNkpVfp6xOb9kh7JwjkFQnHQwnfM25TIjGbiMXJyXfCMl3CxkbLrAteFwrR9T
         88tw069+woysSF2k54A5rvsgZTJUtPUGoj7NKyoHp7P0Z5zWHWxqhhKsM8ENbsjjtirH
         Zu0ohEMwhcuAG5P2+JN7XOP/DknQPOUQTXBFU4xRff8/GUKPNLUqYLDHoTRWATwiBeNt
         EAbw==
X-Gm-Message-State: APjAAAXny5RY6EXpXG/v4SlGBWHAnRMbaQzl7A7QVPKicCJ2c5/xgcta
        njUIwnaPiXh4Kj4E+tPWE+i9UQ==
X-Google-Smtp-Source: APXvYqwozN7APOOSEPmDl6boZf8FkrZaLkCXmfTosSR3HtzEweOJCEHQDIBhajtLXFp/UiTVAXibLw==
X-Received: by 2002:a5d:4f91:: with SMTP id d17mr1915676wru.74.1565254306613;
        Thu, 08 Aug 2019 01:51:46 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id i66sm3360031wmi.11.2019.08.08.01.51.45
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 01:51:46 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kishon@ti.com, Rob Herring <robh@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH 6/9] dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml
Date:   Thu,  8 Aug 2019 10:51:36 +0200
Message-Id: <20190808085139.21438-7-narmstrong@baylibre.com>
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
bindings for the Amlogic G12A USB2 PHY over to a YAML schemas.

While the original phy bindings specifies phy-supply as required,
the examples and implementations makes it optional, thus phy-supply
is not in the required list of attributes.

Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
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

