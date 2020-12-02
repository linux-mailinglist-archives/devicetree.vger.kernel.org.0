Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 472252CC423
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 18:47:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730965AbgLBRpH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 12:45:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730873AbgLBRpH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 12:45:07 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7087C0613CF
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 09:44:26 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id s8so4925657wrw.10
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 09:44:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LzZh3XDG0mukcB0i6UGoQqeuQTlDt+ZadapYwoHki6w=;
        b=LjseARAchCVgKr1/xZAS9YlojSC+ZoG1giCXorFxPC/1yrZtu8vKsi1pkAL81PN5PH
         XTczagp8h2VereDh10kVdxOB/K61gmrYm3Lb4hoTsLGdnq4ug925Jlrn7FCjHU2cbuLi
         P9L/Ph2WRYvuX95JMWGibGKalFICJliBSH3n9dJlI9HIrSAS5jFAjOwPs2UlizlUB6S/
         h0TMemPHzdLpMWfkDr1LJKyqyZmHn4TxOL7DW1NvKyAy5hoVn7QSIBmRJlEO8+ij+gFQ
         8DT+17dM+1yQLDZo5WQlgIna3cAup16W8tW+dInT0k19hf55hUJaFfFpL0C4Tk+kRGA9
         ey7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LzZh3XDG0mukcB0i6UGoQqeuQTlDt+ZadapYwoHki6w=;
        b=XJ+jOTUOsySC7pROgJ2laDyCPMa7phg22XzCneKYqUjizRu1YKxqQVBJ361M0LnWpQ
         GPL+Tkkj78iP7WfAed8vEa44cTmLjLsGXLpXGeC9Y3NtxckLQNwSzumXExVCuV3XjxeO
         k4J8O0RBwN9yTHdfFD1J1Vql6PQ+OedWJi/6F19V5akBULb8zb4mgWwc4ifWbwoH/24W
         nvWDEpjHQyG5jDTYEMyyWuj5kBmlsON//QtI31enypFAYNQY3zj+Hxzd0wTpUfSfeNrO
         EQdg0eN53QKIRxDL8fwPzBKrUyY4EepgKwj5HTfwc8xwcImdAqRSvKJaRX15OKaSxTqb
         sVPg==
X-Gm-Message-State: AOAM531o7q5Dh/ROLFVVHzKvhbeINYzJWrCAGLeCB3gWuikES4QNvPAv
        DAKrrYbTMhuGMYDFb+NkVEZvdg==
X-Google-Smtp-Source: ABdhPJxXihI1yYaKhkVPQ7va1Hj5IAksrWO7UT5NiYAHDfgKyxbFPkv7dmBYZRn2wvuOJpm3PPmYCQ==
X-Received: by 2002:adf:e80b:: with SMTP id o11mr4968215wrm.409.1606931064106;
        Wed, 02 Dec 2020 09:44:24 -0800 (PST)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:15b4:c668:8f06:1b99])
        by smtp.gmail.com with ESMTPSA id q12sm2842915wrx.86.2020.12.02.09.44.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 09:44:23 -0800 (PST)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     hverkuil@xs4all.nl, devicetree@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-media@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v4 1/4] dt-bindings: media: Add bindings for the Amlogic GE2D Accelerator Unit
Date:   Wed,  2 Dec 2020 18:44:14 +0100
Message-Id: <20201202174417.3778306-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201202174417.3778306-1-narmstrong@baylibre.com>
References: <20201202174417.3778306-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The GE2D is a 2D accelerator with various features like configurable blitter
with alpha blending, frame rotation, scaling, format conversion and colorspace
conversion.

This adds the bindings for the GE2D version found in the AXG SoCs Family.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/media/amlogic,axg-ge2d.yaml      | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/amlogic,axg-ge2d.yaml

diff --git a/Documentation/devicetree/bindings/media/amlogic,axg-ge2d.yaml b/Documentation/devicetree/bindings/media/amlogic,axg-ge2d.yaml
new file mode 100644
index 000000000000..bee93bd84771
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/amlogic,axg-ge2d.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2020 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/media/amlogic,axg-ge2d.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic GE2D Acceleration Unit
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+properties:
+  compatible:
+    enum:
+      - amlogic,axg-ge2d
+
+  interrupts:
+    minItems: 1
+
+  reg:
+    minItems: 1
+
+  resets:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    ge2d: ge2d@ff940000 {
+          compatible = "amlogic,axg-ge2d";
+          reg = <0xff940000 0x10000>;
+          interrupts = <150>;
+          clocks = <&clk_ge2d>;
+          resets = <&reset_ge2d>;
+    };
-- 
2.25.1

