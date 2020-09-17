Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79DBF26D3E5
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 08:47:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726109AbgIQGrQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 02:47:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726192AbgIQGrN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Sep 2020 02:47:13 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C06BC06174A
        for <devicetree@vger.kernel.org>; Wed, 16 Sep 2020 23:47:12 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id t10so767062wrv.1
        for <devicetree@vger.kernel.org>; Wed, 16 Sep 2020 23:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YHTRbSYxiwB3ZQDUmxVKEyXQSDMyANy7ZOYYgytHKAA=;
        b=QlhqD01DrDGFTX1xNMS4ZO5VEJ9/raT3dY10P/Zw2hTR94Skm6WAiAAU81PST0DAqH
         q+rMkfmQwGpA+ZNn9UOb2tr3/OVYlYJu3t/ilm4+NYTy+pGEW8dbuWpyELG4VVIqdfB8
         4M8RiJZNx47fdlpnwzS5bmfh+VRbYQVQx8txafbC2UqaOG8oFqzV7DY/BI4Poj48RXH5
         +UhvtC8dbScM5tJtksdKLqwSuwHtJVti+ag+4VwC5gebJxrSkNJ3J9nQNLD/KcP3ZBj8
         MW9jGeaLnBkK0RUItsv7nbt3Uvl9h2O/MZGdVWQfTXbL81RTn4pWkhhZklCg0GSSmunY
         11cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YHTRbSYxiwB3ZQDUmxVKEyXQSDMyANy7ZOYYgytHKAA=;
        b=Fj1WCdqW9roz5hNgXe92BltbaEAaPOQ3MgmxvowOGVw3eeg+HY2Fspw+EChVHolRqN
         NalvvIAk7idb6zfx57MzW6XjN/Hdmvgj13hJH0Fs0udlEu9ko5J+5s+yJN6/NNSbk8k3
         Tm5nmp8VkRllXbwoB6XWqYipEWJ73pql7T1qzVJ90Ji/Vt7CgtNjA/sm8gG4s4nPyihD
         zN1y7zxtbV5qOSik7hn1QiNZuSTdemclZBUmoOYj/e6lxrDWpHIQOhE43TQFv2mGGgZQ
         jLjJfMC74iVX83PfERHteMOdAlaHzYdG502X5S87qd1YKWuf6zkDtBxklIEeB/t3pnrg
         kv9A==
X-Gm-Message-State: AOAM531u7m+B6zELuRRj3k7/9bhycXszqyxYb39YnAiup3ZpPdd2BzH3
        nJmXkfg5wU7t4L5n7xyaXJV1NB6pd8p5yCRu
X-Google-Smtp-Source: ABdhPJxxOngjpGTOMOIimvND/eMb+ZnzvjapG2m/s/ngeNrtLBfT0YebWIFLbPnbSpWgQt7+efFd9g==
X-Received: by 2002:adf:f106:: with SMTP id r6mr30908636wro.106.1600325228729;
        Wed, 16 Sep 2020 23:47:08 -0700 (PDT)
Received: from bender.baylibre.local (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id q4sm38516552wru.65.2020.09.16.23.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2020 23:47:08 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com, devicetree@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v2 1/2] dt-bindings: power: amlogic,meson-ee-pwrc: add Amlogic AXG power controller bindings
Date:   Thu, 17 Sep 2020 08:47:01 +0200
Message-Id: <20200917064702.1459-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200917064702.1459-1-narmstrong@baylibre.com>
References: <20200917064702.1459-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This add the bindings of the Power Controller found in the Amlogic AXG SoCs.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../bindings/power/amlogic,meson-ee-pwrc.yaml | 23 +++++++++++++++++--
 include/dt-bindings/power/meson-axg-power.h   | 14 +++++++++++
 2 files changed, 35 insertions(+), 2 deletions(-)
 create mode 100644 include/dt-bindings/power/meson-axg-power.h

diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-ee-pwrc.yaml b/Documentation/devicetree/bindings/power/amlogic,meson-ee-pwrc.yaml
index 4f524f822e84..d30f85cc395e 100644
--- a/Documentation/devicetree/bindings/power/amlogic,meson-ee-pwrc.yaml
+++ b/Documentation/devicetree/bindings/power/amlogic,meson-ee-pwrc.yaml
@@ -27,6 +27,7 @@ properties:
       - amlogic,meson8b-pwrc
       - amlogic,meson8m2-pwrc
       - amlogic,meson-gxbb-pwrc
+      - amlogic,meson-axg-pwrc
       - amlogic,meson-g12a-pwrc
       - amlogic,meson-sm1-pwrc
 
@@ -42,11 +43,11 @@ properties:
       - const: vapb
 
   resets:
-    minItems: 11
+    minItems: 5
     maxItems: 12
 
   reset-names:
-    minItems: 11
+    minItems: 5
     maxItems: 12
 
   "#power-domain-cells":
@@ -107,6 +108,24 @@ allOf:
         - resets
         - reset-names
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - amlogic,meson-axg-pwrc
+    then:
+      properties:
+        reset-names:
+          items:
+            - const: viu
+            - const: venc
+            - const: vcbus
+            - const: vencl
+            - const: vid_lock
+      required:
+        - resets
+        - reset-names
+
   - if:
       properties:
         compatible:
diff --git a/include/dt-bindings/power/meson-axg-power.h b/include/dt-bindings/power/meson-axg-power.h
new file mode 100644
index 000000000000..e5243884b249
--- /dev/null
+++ b/include/dt-bindings/power/meson-axg-power.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: (GPL-2.0+ or MIT) */
+/*
+ * Copyright (c) 2020 BayLibre, SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+#ifndef _DT_BINDINGS_MESON_AXG_POWER_H
+#define _DT_BINDINGS_MESON_AXG_POWER_H
+
+#define PWRC_AXG_VPU_ID			0
+#define PWRC_AXG_ETHERNET_MEM_ID	1
+#define PWRC_AXG_AUDIO_ID		2
+
+#endif
-- 
2.22.0

