Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A1A89818BB
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 14:03:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728455AbfHEMDb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 08:03:31 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:44184 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728591AbfHEMDb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 08:03:31 -0400
Received: by mail-wr1-f68.google.com with SMTP id p17so84137287wrf.11
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 05:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AN145UNIjgCQrhhYJVSogcaNNij6aeHMgkbf7MOZjVg=;
        b=VMaSAqIPmDBgeaoKtkuPvpLTMYFnMDM3uFkTOsPWLoZNdksJfThr6EuxlFAHLShjgX
         9mixnqvdwkbrMhC1FWlZZMRYGNtrRDaZ+I2HWY+xvzUp5YHhFFCPADzt6Fq6XWc9Dn4V
         pWiIACOE0Wot/n4qKQE09kuvTPgThLqBidInZOsodf1gKQJtTJXy0BcBC822VsOcwaL0
         EB1d9okkhRFFT+EJD8E0JTouLYipTkv92RqtFruZeCMm6tXoIc9Olu7bmo27Z6M6gP8C
         Ee6P4b99K9DWV78tIrZ7Glfl7Bs45eEc8HuPmNiY/ncbvS3byxhGJCS+eW84mkUzS6xE
         0CMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AN145UNIjgCQrhhYJVSogcaNNij6aeHMgkbf7MOZjVg=;
        b=J26915V6MZUKJr2kXNOI4136ALAkMzZTy0ZcwxxCR3Usj4iIz7KjRa3I4gDCaahhuO
         fRLLyL8CzmgLs1FH2unrm5+fuuw23yCQA2ljLvP1RWgtALd9jwpTH0Q8wUB7MiLyy9bY
         nyn58Gc38XkY61MHBqjECE4XPUnnCld00QzvENUxbMKFfJb86ZcgXCO/CGVPn7LwoTVc
         RZNLwnynMgtzd9CJTvccNpoZzip1GYBGHYqMKy0H5xKJiasHYTrSfND8x/G8qxHNzRqy
         avpBrgkFb2Ge/SRheAYq0H7P+jyYSRFhZtDImkTIBvR17H81pCL9+YjxxBr5rutgFhl5
         bqJg==
X-Gm-Message-State: APjAAAWiWfoY5gMECXuCs2jrmQ9f94/PDHZ1jTfUQnfCWYqib2WTB+Rt
        sNcZBUzotx+WTosneWjSz60F7Q==
X-Google-Smtp-Source: APXvYqzrAaqkDmpLPzkmJN8EFk6aA2w8b/wYYUsDcEBAy5YdGDdrITKGJVxwr155Rd6AEbyQ5sl1nA==
X-Received: by 2002:adf:f812:: with SMTP id s18mr26777558wrp.32.1565006609294;
        Mon, 05 Aug 2019 05:03:29 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id x6sm88683668wrt.63.2019.08.05.05.03.28
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 05 Aug 2019 05:03:28 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [RFCv2 5/9] dt-bindings: arm: amlogic: amlogic,meson-gx-ao-secure: convert to yaml
Date:   Mon,  5 Aug 2019 14:03:16 +0200
Message-Id: <20190805120320.32282-6-narmstrong@baylibre.com>
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
bindings for the Amlogic Always-On Secure Registers over to a YAML schemas.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../amlogic/amlogic,meson-gx-ao-secure.txt    | 28 ----------
 .../amlogic/amlogic,meson-gx-ao-secure.yaml   | 52 +++++++++++++++++++
 2 files changed, 52 insertions(+), 28 deletions(-)
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
index 000000000000..853d7d2b56f5
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
@@ -0,0 +1,52 @@
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
+# We need a select here so we don't match all nodes with 'syscon'
+select:
+  properties:
+    compatible:
+      contains:
+        const: amlogic,meson-gx-ao-secure
+  required:
+    - compatible
+
+properties:
+  compatible:
+   items:
+      - const: amlogic,meson-gx-ao-secure
+      - const: syscon
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

