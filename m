Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0021385D51
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 10:51:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731429AbfHHIvs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 04:51:48 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:40731 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730994AbfHHIvr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 04:51:47 -0400
Received: by mail-wr1-f68.google.com with SMTP id r1so94026643wrl.7
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 01:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SNze0Tpur6EnNEkpH1ymefqyldmC0tx+C8bm4xzOW5Y=;
        b=r/B9HSUQyboxTl/I21NjVFi71LiWBz+LaQNF4MWl8DdUEqlKCgqmVn1es/SQscZAo7
         TRn28oSJbGx08MY4yXfpFecTzOe0eqahy+T7LHKJv1PblvpX1V1Ot6ndVLUScI6/y7MU
         ePlGROGsrjg9SKbu6NWX9EeMoc0BReXA1P6ToLA8rohO1e3LKJpNett7LMA9ha16jOOg
         KxHtdZDXjhF9W/4NUHx5JOWtfCruwEpDQswniYXuofO1uR7GMHVTN+5O+DAvocJWG71x
         y96VqTc9AhF/TvvEEXigE63nGjDTrZEBDlZTjzpzqzeOD8bVH3VWiSscuBQteTfdInF4
         rFQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SNze0Tpur6EnNEkpH1ymefqyldmC0tx+C8bm4xzOW5Y=;
        b=pn3a4LJokY2ncUTBqNpRA9vrhThQ5tWaoSJ4HJcJ9gzcqe0HQO8rpkEIBzmGqM53eK
         RtF+Q5clzZ9JHRgmtxzTZB0DcfyPPjceM29XEYZP9nOIvAgesLaDXah8TpxJq5Dzj7wH
         uIEe20s69ZKNlrXH5umKXg40aM2jOSs6MH2hHEp6wsv7Jwkv8sb50ISWWW9XID1kmF3Q
         zNW9W7Orh6F9vku1XZbNxxkL8iNsMJGA6rwiSAIzbj/th0aGgIVXZZhIZNH053lCOEJO
         ZtkqnfdPvbi0t1UhOg/zobaxZUtthrcXxKUVNHgGfhd6E4bjpcOJYl/N3U7Dcgu4yR1L
         1baA==
X-Gm-Message-State: APjAAAUkm6mFSpP8SQdjDiGkXrP8xh7FAlN+9Rp4eJYPypq7iNiOL0XZ
        flIMNtUq6G7pP4M89d23PxNoSw==
X-Google-Smtp-Source: APXvYqzDxq8WZPuNVYRrwtitMs+tQgz9KYtj2QO4ZQnldx9nmbIi2v3cGUwgheV76FZCBIS44wdQpw==
X-Received: by 2002:adf:e84a:: with SMTP id d10mr15071095wrn.316.1565254305115;
        Thu, 08 Aug 2019 01:51:45 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id i66sm3360031wmi.11.2019.08.08.01.51.44
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 01:51:44 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        p.zabel@pengutronix.de, Rob Herring <robh@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH 4/9] dt-bindings: reset: amlogic,meson-reset: convert to yaml
Date:   Thu,  8 Aug 2019 10:51:34 +0200
Message-Id: <20190808085139.21438-5-narmstrong@baylibre.com>
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
bindings for the Amlogic Reset controller over to a YAML schemas.

Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Philipp Zabel <p.zabel@pengutronix.de>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
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

