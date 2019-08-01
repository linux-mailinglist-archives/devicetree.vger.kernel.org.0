Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 77B787DCF5
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 15:57:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730505AbfHAN4z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Aug 2019 09:56:55 -0400
Received: from mail-wm1-f54.google.com ([209.85.128.54]:35321 "EHLO
        mail-wm1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730581AbfHAN4y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Aug 2019 09:56:54 -0400
Received: by mail-wm1-f54.google.com with SMTP id l2so63261806wmg.0
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2019 06:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=811mn6h7BNpLFUFRrmR/tEgz9ZLFJSvBZeY34iDH0W4=;
        b=liznztNkf+HaxNv4vDJ5h6mGA3fjnV9yCpU/CovEfrMymt6M89vJGWMoWD6C0sGApz
         912jSQwrhWdZbBR0RY+BCaxE3pNPTH16FR7k9Wk5LeZFpFzdsq6JRup+E68hSoM1eeJ9
         9oErfWpptm9nX4hdnJfzy9jVTU1ntuxSNDdwNHwk1V4M9jBFowyH9RIWDYFjvZXuFI0F
         zwDgK8Li7HQOzhwVnX/6OERcWGIUga8+KczKm1DzwdYYhijv25afQYvy/Jh92o2d9Le1
         vFlyK1/+J2QrNVWsP4Fwo/MnMqjBgBYxyRi93IOxIH7tVPTrwfBAkuwleMD0yLkLdGZb
         VJtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=811mn6h7BNpLFUFRrmR/tEgz9ZLFJSvBZeY34iDH0W4=;
        b=HOB1jm7e21rHm8wUKveb168LpJ0ZLTbRHkaGNIU7nV/4pZoBxxjQpoaQHbw8VjNyxL
         bQdnAcVwWyxD1+lXi0HA29UvGMSLOf7itKIYJVttUkslR4IwRC/DqsyY3TyKjLnqlZ26
         mIBJ7bGJu0ViNVa9yOh0/Z25dtE9yC7kOsVw003u+WJZFZnRWzquDcdt4d36EkiftG3h
         QqoMVdQU0whkn/JULABMuP2U7bfuwIW0yu3MY00Rzp738RU5Jxt/yzAGGB1OsD9cpWGe
         EuBvQdJshra4aQoDsNUs6iGbqQtTizYZnA8ijqVfuWyZk2O2icecKgVpyFbsUD+37WTA
         yI3Q==
X-Gm-Message-State: APjAAAV1E6hzKN3yp5sre7JXgGy6h1d1HHZsDtmS+UGdHM0hC9U1Dw7I
        +qT5Hf4PJo+hLNs1NMdR5wCveQ==
X-Google-Smtp-Source: APXvYqyfvyFU9SSffsyaUbEsXJgcEKqe2ZJr3jB7G+EChkf++HWqfgukB7b/r9YHXfnQrS5QixFc/A==
X-Received: by 2002:a1c:7310:: with SMTP id d16mr113441831wmb.107.1564667811496;
        Thu, 01 Aug 2019 06:56:51 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id u6sm69659952wml.9.2019.08.01.06.56.50
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 01 Aug 2019 06:56:51 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [RFC 5/9] dt-bindings: arm: amlogic: amlogic,meson-gx-ao-secure: convert to yaml
Date:   Thu,  1 Aug 2019 15:56:40 +0200
Message-Id: <20190801135644.12843-6-narmstrong@baylibre.com>
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
 .../amlogic/amlogic,meson-gx-ao-secure.txt    | 28 -------------
 .../amlogic/amlogic,meson-gx-ao-secure.yaml   | 42 +++++++++++++++++++
 2 files changed, 42 insertions(+), 28 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
 create mode 100644 Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml

diff --git a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
deleted file mode 100644
index c67d9f48fb91..000000000000
--- a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-Amlogic Meson Firmware registers Interface
-------------------------------------------
-
-The Meson SoCs have a register bank with status and data shared with the
-secure firmware.
-
-Required properties:
- - compatible: For Meson GX SoCs, must be "amlogic,meson-gx-ao-secure", "syscon"
-
-Properties should indentify components of this register interface :
-
-Meson GX SoC Information
-------------------------
-A firmware register encodes the SoC type, package and revision information on
-the Meson GX SoCs.
-If present, the following property should be added :
-
-Optional properties:
-  - amlogic,has-chip-id: If present, the interface gives the current SoC version.
-
-Example
--------
-
-ao-secure@140 {
-	compatible = "amlogic,meson-gx-ao-secure", "syscon";
-	reg = <0x0 0x140 0x0 0x140>;
-	amlogic,has-chip-id;
-};
diff --git a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
new file mode 100644
index 000000000000..cf79287498f5
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/arm/amlogic/amlogic,meson-gx-ao-secure.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson Firmware registers Interface
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+description: |
+  The Meson SoCs have a register bank with status and data shared with the
+  secure firmware.
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-gx-ao-secure
+
+  reg:
+    maxItems: 1
+
+  amlogic,has-chip-id:
+    description: |
+      A firmware register encodes the SoC type, package and revision
+      information on the Meson GX SoCs. If present, the interface gives
+      the current SoC version.
+    type: boolean
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    ao-secure@140 {
+          compatible = "amlogic,meson-gx-ao-secure", "syscon";
+          reg = <0x140 0x140>;
+          amlogic,has-chip-id;
+    };
-- 
2.22.0

