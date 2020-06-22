Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7F552039F0
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2020 16:50:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729398AbgFVOtx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jun 2020 10:49:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729364AbgFVOtv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jun 2020 10:49:51 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 715ACC061573
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2020 07:49:50 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id x207so8521676pfc.5
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2020 07:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cuVK/v+1tvKBkmeEBcgyRggLJdKFuSM372gKzS+kAj0=;
        b=FRIiyQpTCdW5WobQ+AXqfYbhJ5kRK2CuYDTVZ33RvBx/tIQ1fYHC6bAe/a2dT4/8qL
         Kx5H0XeUGHBNiW3FUSwr1gij2+OpE2FXss6ZZgeZL4jYlnve6HimJ7+2WBHvB3BeQiLT
         PIgb8uHYqR8EK4YONhh7iCt1cuZLuRhs6Y2Uw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cuVK/v+1tvKBkmeEBcgyRggLJdKFuSM372gKzS+kAj0=;
        b=GM06dky6+vnak+V44Wne/Bn4myeiUH99CYzs2yIkEy+onjBJ4yPmazZPYuqIpXnJ0h
         rLljxob8+BwXFmgkjpss0qQJ9OE+UGq8V7t5vZgOJVy5nZgjWuTLdJ3NxqBGw42Mza1I
         GjHdzLsB4b3ESnlqW2ntTHyR8GLKzbwkWnnvbQtmhuXA4LXhDzhnsQ9hitVixScnFan9
         eIxtSzoJI607Rbdpn8EpVNgC7rpBx3Z/VFtTTINqTZ4oHRq3ytHlBmJYlm+dfkZPqNlx
         LHDNWxrRHLaNiZOnwGtg5fQlNDrP1jascz5tcOghb6aTuCEnyQfnrbVdwAjKMllwYRwp
         dZCg==
X-Gm-Message-State: AOAM531cAok0ZzOe1uIB2VTD7d95GOBsNJHoyAsfQAZjAl7E7+rkIwtg
        BP0RSbeWBIHoRbYXSTVxcVIreA==
X-Google-Smtp-Source: ABdhPJwh8qdfgB4PyHBvuylhtdevl3IsnTIVSD3vl0ZbQyJ6kVyPbEWXqMB3EfvjUDQiwvOmIo5W+g==
X-Received: by 2002:a65:6846:: with SMTP id q6mr12313795pgt.397.1592837389876;
        Mon, 22 Jun 2020 07:49:49 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id 77sm13903018pfu.139.2020.06.22.07.49.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 07:49:49 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>
Cc:     mturney@codeaurora.org, Jeffrey Hugo <jhugo@codeaurora.org>,
        rnayak@codeaurora.org, dhavalp@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, sparate@codeaurora.org,
        linux-arm-msm@vger.kernel.org, mkurumel@codeaurora.org,
        Ravi Kumar Bokka <rbokka@codeaurora.org>,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/4] dt-bindings: nvmem: qfprom: Convert to yaml
Date:   Mon, 22 Jun 2020 07:49:26 -0700
Message-Id: <20200622074845.v4.1.Iea2704ec2cb40c00eca47781c310a6330ac5dd41@changeid>
X-Mailer: git-send-email 2.27.0.111.gc72c7da667-goog
In-Reply-To: <20200622144929.230498-1-dianders@chromium.org>
References: <20200622144929.230498-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Ravi Kumar Bokka <rbokka@codeaurora.org>

This switches the bindings over from txt to yaml.

Signed-off-by: Ravi Kumar Bokka <rbokka@codeaurora.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v4:
- Maintainer now listed as Srinivas.
- Example under "soc" to get #address-cells and #size-cells.

Changes in v3:
- Split conversion to yaml into separate patch new in v3.
- Use 'const' for compatible instead of a 1-entry enum.
- Changed filename to match compatible string.
- Add #address-cells and #size-cells to list of properties.
- Fixed up example.

 .../bindings/nvmem/qcom,qfprom.yaml           | 50 +++++++++++++++++++
 .../devicetree/bindings/nvmem/qfprom.txt      | 35 -------------
 2 files changed, 50 insertions(+), 35 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
 delete mode 100644 Documentation/devicetree/bindings/nvmem/qfprom.txt

diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
new file mode 100644
index 000000000000..39f97c1c83a4
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/qcom,qfprom.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Technologies Inc, QFPROM Efuse bindings
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+allOf:
+  - $ref: "nvmem.yaml#"
+
+properties:
+  compatible:
+    const: qcom,qfprom
+
+  reg:
+    items:
+      - description: The corrected region.
+
+  # Needed if any child nodes are present.
+  "#address-cells":
+    const: 1
+  "#size-cells":
+    const: 1
+
+required:
+   - compatible
+   - reg
+
+examples:
+  - |
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      efuse@784000 {
+        compatible = "qcom,qfprom";
+        reg = <0 0x00784000 0 0x8ff>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        hstx-trim-primary@1eb {
+          reg = <0x1eb 0x1>;
+          bits = <1 4>;
+        };
+      };
+    };
diff --git a/Documentation/devicetree/bindings/nvmem/qfprom.txt b/Documentation/devicetree/bindings/nvmem/qfprom.txt
deleted file mode 100644
index 26fe878d5c86..000000000000
--- a/Documentation/devicetree/bindings/nvmem/qfprom.txt
+++ /dev/null
@@ -1,35 +0,0 @@
-= Qualcomm QFPROM device tree bindings =
-
-This binding is intended to represent QFPROM which is found in most QCOM SOCs.
-
-Required properties:
-- compatible: should be "qcom,qfprom"
-- reg: Should contain registers location and length
-
-= Data cells =
-Are child nodes of qfprom, bindings of which as described in
-bindings/nvmem/nvmem.txt
-
-Example:
-
-	qfprom: qfprom@700000 {
-		compatible 	= "qcom,qfprom";
-		reg		= <0x00700000 0x8000>;
-		...
-		/* Data cells */
-		tsens_calibration: calib@404 {
-			reg = <0x4404 0x10>;
-		};
-	};
-
-
-= Data consumers =
-Are device nodes which consume nvmem data cells.
-
-For example:
-
-	tsens {
-		...
-		nvmem-cells = <&tsens_calibration>;
-		nvmem-cell-names = "calibration";
-	};
-- 
2.27.0.111.gc72c7da667-goog

