Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2E289818BA
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 14:03:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728681AbfHEMDb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 08:03:31 -0400
Received: from mail-wm1-f52.google.com ([209.85.128.52]:37929 "EHLO
        mail-wm1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728455AbfHEMDb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 08:03:31 -0400
Received: by mail-wm1-f52.google.com with SMTP id s15so51388754wmj.3
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 05:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=A42sRNi391H9AC1f83ejYhNdzXImnvegGbOQ/91nUeI=;
        b=mpIcqGRs5tZYknqyOlue0Bj2+ZR9iOg2KTU1GjoH0xi3Z3S+x1sTLlgiJsTpAggRT4
         ypXXrT49yL8jiHXhl+pBCjnp3FYV01DqVc42+HXQXsgRr6+M3NvN3LyQwjBIGFcPgvlM
         R2bLAEdG1FV2+QHZEicKSO7hIRNfLLOUPyRv2a9Jux4Sm0x5ZT2XWzVhnV/O+iag0bSj
         0N50dLguDLPYqDuZ2pc5MWz8mCBFKWS+3XjhS2g+/vtNZxkKuesHAygtDjjGySylnIpF
         2lEgs9J+IeneYxDmYDaSlQOVhmtUhb76FO7j5RE5mxfbBOoUGrXDfyKpO+eBCEULPhF+
         bDAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=A42sRNi391H9AC1f83ejYhNdzXImnvegGbOQ/91nUeI=;
        b=dulydRTaWUq+OQOw0ZrYItPUBIX5WtgkphbqwWcHWbQ6gFFR1kZnen4fYUrScXYJS6
         OCPNXWzH/lbPcTlwM3vqkmH9FAq5mPj+JDo467axKsO6qZt6COUkuzCkLXYRSwawqINH
         Nswip7uWkG5CeJRMrsLiojq5BBy3ZjeFKPEzfeXXNcEjrf5HApOYcY2dLpvVQC9NnZpE
         MwThD3pmtFSAOYeUBzsKVBQ99FN95L76nmX6X72D9++yDOTRBGUuoQwJvkzOUJ368RZb
         RuhfoG221TzvExOjSQfu/2XAH5QHJpIyYOHMoVAaP3vgtnG0ktnyQO4XQJxaiMjtxOne
         eghw==
X-Gm-Message-State: APjAAAVhKaFVEPiVnJPGUgsaHpuuLBzuJd1TSrmvhkHOoAZsG/3Tmwmz
        UIJpR/xai60yjI8lZUZzCfddWw==
X-Google-Smtp-Source: APXvYqzoJSImM+t1LHzEk/lKLUTioVhfT+lrbsg8bRZq+zfHLXMahpKcCUtsWVLWtfLTYh9nT5bGdA==
X-Received: by 2002:a1c:44d7:: with SMTP id r206mr19120210wma.164.1565006608513;
        Mon, 05 Aug 2019 05:03:28 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id x6sm88683668wrt.63.2019.08.05.05.03.27
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 05 Aug 2019 05:03:28 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        p.zabel@pengutronix.de
Subject: [RFCv2 4/9] dt-bindings: reset: amlogic,meson-reset: convert to yaml
Date:   Mon,  5 Aug 2019 14:03:15 +0200
Message-Id: <20190805120320.32282-5-narmstrong@baylibre.com>
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
bindings for the Amlogic Reset controller over to a YAML schemas.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/reset/amlogic,meson-reset.txt    | 19 ----------
 .../bindings/reset/amlogic,meson-reset.yaml   | 37 +++++++++++++++++++
 2 files changed, 37 insertions(+), 19 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt
 create mode 100644 Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml

diff --git a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt
deleted file mode 100644
index 28ef6c295c76..000000000000
--- a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-Amlogic Meson SoC Reset Controller
-=======================================
-
-Please also refer to reset.txt in this directory for common reset
-controller binding usage.
-
-Required properties:
-- compatible: Should be "amlogic,meson8b-reset", "amlogic,meson-gxbb-reset" or
-	"amlogic,meson-axg-reset".
-- reg: should contain the register address base
-- #reset-cells: 1, see below
-
-example:
-
-reset: reset-controller {
-	compatible = "amlogic,meson-gxbb-reset";
-	reg = <0x0 0x04404 0x0 0x20>;
-	#reset-cells = <1>;
-};
diff --git a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
new file mode 100644
index 000000000000..00917d868d58
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/reset/amlogic,meson-reset.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson SoC Reset Controller
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson8b-reset # Reset Controller on Meson8b and compatible SoCs
+      - amlogic,meson-gxbb-reset # Reset Controller on GXBB and compatible SoCs
+      - amlogic,meson-axg-reset # Reset Controller on AXG and compatible SoCs
+
+  reg:
+    maxItems: 1
+
+  "#reset-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - "#reset-cells"
+
+examples:
+  - |
+    reset-controller@c884404 {
+          compatible = "amlogic,meson-gxbb-reset";
+          reg = <0xc884404 0x20>;
+          #reset-cells = <1>;
+    };
-- 
2.22.0

