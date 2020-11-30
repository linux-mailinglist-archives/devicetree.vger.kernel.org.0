Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC08B2C84BE
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 14:13:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726162AbgK3NLj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 08:11:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725902AbgK3NLi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 08:11:38 -0500
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6570FC0617A6
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 05:10:58 -0800 (PST)
Received: by mail-pl1-x630.google.com with SMTP id l1so6458920pld.5
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 05:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=66bIbZIMyYy2aQ1+PNHmZ6rTWFoZDMO1KzGC89/vZyE=;
        b=GdTnAdX9F8W8qDdgb8euxuSQVdabwSLXIb5t7PUvLLZrWinfSjCqKxreDd+2Klo9kY
         buosYpZqM1Ol0MZmzneIS39JMkyfbFz7SzMTzCQjXsi/xQB7YOXTckAVmoGd5WUHFTa4
         eJUf2CdeEa5rVAlg3JbjevfrD02CcUskuQg0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=66bIbZIMyYy2aQ1+PNHmZ6rTWFoZDMO1KzGC89/vZyE=;
        b=biICZuVPxrV3sLyzn2ohnl5E5k89FemFRqAGkHmJn85hz+Xb8DHbLdOTNeX1bft/zi
         yXvQj9KsL+fVMt5m9OLUEamSyhHndH0MtaPcDw+Bm0n9AmvI8dyM/TYY88dT3wRgqw/O
         EUg6fG4Oo5ao4YjZs+/oanonyS6DNbO8ypEeynAsqYRdeRkrdRjOmfpoqaUV5ZjG6+To
         8RZjoqO50B0pV2Z20ogUjgu2p3E/Dn9GancmxE3XjWuvuFPH7pW5ytfoklwLdUryj3sf
         VvGNKyGjW8d8E33j+B9WOpG9gRau5n23jgPQDFpESccx1l6pxTaZH3Y6o+SobcluBE4x
         o4Bw==
X-Gm-Message-State: AOAM532P0W+Cu2Kt+uuiD6UiEYTNmS8iwTEqsA+bN5fMFxtgO5mAxfQk
        IpMg5W873FI36TNNixePb3JQ/JaJJvR4TQ==
X-Google-Smtp-Source: ABdhPJy/vEeiJjPZKJDVRM9cViVIu8FP89iPKQ41rcgsVoY6HMn0FcCPUSI9RrJ+vkesBYf4n4MTUw==
X-Received: by 2002:a17:90a:7e8e:: with SMTP id j14mr2229217pjl.60.1606741857634;
        Mon, 30 Nov 2020 05:10:57 -0800 (PST)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id a4sm41757578pjq.0.2020.11.30.05.10.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Nov 2020 05:10:57 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, arnd@arndb.de, robh@kernel.org,
        w@1wt.eu, daniel@0x0f.com
Subject: [PATCH 1/9] dt-bindings: mstar: Add binding details for mstar,smpctrl
Date:   Mon, 30 Nov 2020 22:10:39 +0900
Message-Id: <20201130131047.2648960-2-daniel@0x0f.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201130131047.2648960-1-daniel@0x0f.com>
References: <20201130131047.2648960-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds a YAML description of the smpctrl node needed by the
platform code for the MStar/SigmaStar Armv7 SoCs to boot secondary cpus.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 .../bindings/arm/mstar/mstar,smpctrl.yaml     | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/mstar/mstar,smpctrl.yaml

diff --git a/Documentation/devicetree/bindings/arm/mstar/mstar,smpctrl.yaml b/Documentation/devicetree/bindings/arm/mstar/mstar,smpctrl.yaml
new file mode 100644
index 000000000000..a102287b5c88
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/mstar/mstar,smpctrl.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2020 thingy.jp.
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/arm/mstar/mstar,smpctrl.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: MStar/SigmaStar Armv7 SoC SMP control registers
+
+maintainers:
+  - Daniel Palmer <daniel@thingy.jp>
+
+description: |
+  MStar/SigmaStar's Armv7 SoCs that have more than one processor
+  have a region of registers that allow setting the boot address
+  and a magic number that allows secondary processors to leave
+  the loop they are parked in by the boot ROM.
+
+properties:
+  compatible:
+    items:
+      - const: mstar,smpctrl
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    smpctrl@204000 {
+        compatible = "mstar,smpctrl";
+        reg = <0x204000 0x200>;
+    };
-- 
2.29.2

