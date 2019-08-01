Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 03B9F7DCF4
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 15:57:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730581AbfHAN4z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Aug 2019 09:56:55 -0400
Received: from mail-wm1-f45.google.com ([209.85.128.45]:50990 "EHLO
        mail-wm1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730585AbfHAN4w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Aug 2019 09:56:52 -0400
Received: by mail-wm1-f45.google.com with SMTP id v15so64777447wml.0
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2019 06:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FZwarWOpNsfuBiNZZzA2jg0GZdzk9/OxZhy/FP0yQ7I=;
        b=jGmz044jcrShOXq7CzTm7BxILFJc768gBT775ECewrSwU9tfB1EhhhESHHaAOMEPI9
         c5VUFoqxlIkkGYVGlqz4ahJc9dgEFju/iJRqCEm0fCEPdm0NaQEehFtrFUunyFPUATjE
         EsQ2eD+zsdnBbjnrlAF8lPnmNpgwDABwageVh7wvetyc5RARTGlx2PczcEfqUcZd4/MY
         QGOTHxvSuv/YT87sNQR9SdJYL9eqWDiSVwMx2oTAU3Soux69viI+mW0Da7Kg8pFH6XYO
         PDYlwVUpf7dYPqrzQHP960592DagEL86TUKuPRKKh9Ocg9Ea+evLn0X3Wa83ufc79lz+
         gyRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FZwarWOpNsfuBiNZZzA2jg0GZdzk9/OxZhy/FP0yQ7I=;
        b=TcR0LddW8OIjH7NPd5BBALiiKAqwKFDJEIoC9GNE97ysg/dF4dhnl4xuWInuK40rQq
         lmpHAEVQM5GcBMxw7PYBP35p+DtPFWZeYfQ322GH4uSXmtWcdlTPMhLoJFKxfm3+xE/R
         vNDWVv2I1WOeP6unhzRg0PnZEeRmDSXcG8VGonO3yzTqa/1dmPxApAgD3N8D3pZtXVZC
         zQ7+oUEp4fzbRXp75qHybJdjcgXftJL3RrzuR5uY4GuRATJ7IwhKMCZLaenrLTTDRnhL
         pMBAk6LP1ou5H+MRICipkib+cvPTWNTMc4tx8fOp9qdgJmQDKDotEyTXybrmtqNiPjB/
         nXXw==
X-Gm-Message-State: APjAAAXJmH1uh6AGzpFaonrMjenY2I7bAqSvBWlByW+F0Exb8N3vAidt
        Xa/nA+UKNyH0A/ooWB+ISGORkA==
X-Google-Smtp-Source: APXvYqxIBCJNuUpkuBySMJgg64UolSv7bllV7knpcysRMFeaE4PZjgGi0kujrQ5yqkvJRph35LtR5w==
X-Received: by 2002:a05:600c:254b:: with SMTP id e11mr108630801wma.171.1564667810828;
        Thu, 01 Aug 2019 06:56:50 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id u6sm69659952wml.9.2019.08.01.06.56.50
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 01 Aug 2019 06:56:50 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        p.zabel@pengutronix.de
Subject: [RFC 4/9] dt-bindings: reset: amlogic,meson-reset: convert to yaml
Date:   Thu,  1 Aug 2019 15:56:39 +0200
Message-Id: <20190801135644.12843-5-narmstrong@baylibre.com>
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
 .../bindings/reset/amlogic,meson-reset.txt    | 19 ---------
 .../bindings/reset/amlogic,meson-reset.yaml   | 40 +++++++++++++++++++
 2 files changed, 40 insertions(+), 19 deletions(-)
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
index 000000000000..dd211bf84f25
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
@@ -0,0 +1,40 @@
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
+    oneOf:
+     - enum:
+       - amlogic,meson8b-reset
+     - enum:
+       - amlogic,meson-gxbb-reset
+     - enum:
+       - amlogic,meson-axg-reset
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

