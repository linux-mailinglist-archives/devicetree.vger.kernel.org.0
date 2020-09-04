Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6731225DFA1
	for <lists+devicetree@lfdr.de>; Fri,  4 Sep 2020 18:17:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727869AbgIDQRV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Sep 2020 12:17:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726304AbgIDQRB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Sep 2020 12:17:01 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22557C061244
        for <devicetree@vger.kernel.org>; Fri,  4 Sep 2020 09:17:01 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id s13so6559454wmh.4
        for <devicetree@vger.kernel.org>; Fri, 04 Sep 2020 09:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FWk3qVSr7VGifs60LnXL8P2UIqTUMmu89eotjh18HA8=;
        b=duGjMiYDurbAFlsmF2zT3FDS+RxxrgtsawWMtijuXHwZK+Fo1alN7hoZhK4btSdefi
         yvoKS6N4sdY/6xk5ExFmo0Vbijv6Mjv6LzTGDOmxl+RqLLK/A4Es/1fbDI33lDN3myG/
         wufHWYj+8Ts08o6j3WmVcYNI6t2S7MOQfE0lVISwQHlDwS04j1BDHdWu70jx6sokndeL
         1MF2uZTguxpxMy4JHYyosywABiW6fFeTbBuZPz+fJqNOwSLNdTSfrbV5OQTkwGdmPOCp
         b/jmkP5wrSkomwdY8fJcYp+bxLv9xAXj0A9GX0CeWaQI5w2ZRyvshN1qQLsknyQ4pUWg
         NX+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FWk3qVSr7VGifs60LnXL8P2UIqTUMmu89eotjh18HA8=;
        b=uR1B8EAuaNI8h9EqLCuZ1VVAcJYgQDnfJClkNhL+Tjagfu/mcvQXC3sd7fKC7JaRDh
         oGHai5L3sP6mOxTEvKXUIOuDuzJeoTpArmM5+7srRBG/MYT05LeLMcGCh983hb6/4wTs
         SAgpvBBGFs3ZosM6i0hUQ3hVd/YMg25OFRGmJ7LtZCwNknN5c8wZ5bp7+5qr3vkY/fp3
         SMnSUiJiAcRjEEDJCgKUaSKzYQ8o0CFEeQ1rMSWSYCWbn9eDScXLl3bVdSityictAFE2
         KgG7R2kOj+jOGWbYCJwDZ4udXOaWRThGJHuESXu069xs/PfmgpUr9DAdzwPbbjsfUF6a
         Zt0A==
X-Gm-Message-State: AOAM5330VJkFZ61rb1iyeDfNJGGverr14Wk/6TdVnNls43Cx0nDCBDB8
        RRXvOjxNOT3iBxh7wQSx/UM74g==
X-Google-Smtp-Source: ABdhPJzUqXDH+qk0EuubbmJKx2M6DzZGUVc61Fkr0PNo8RNjgbB4iQwbqWcR7WrQTW70j4gqOjXsuA==
X-Received: by 2002:a05:600c:245:: with SMTP id 5mr8525601wmj.33.1599236219600;
        Fri, 04 Sep 2020 09:16:59 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5405:9623:e2f1:b2ac])
        by smtp.gmail.com with ESMTPSA id d3sm5129543wrr.84.2020.09.04.09.16.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2020 09:16:58 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com, devicetree@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH RESEND 1/2] dt-bindings: power: amlogic,meson-ee-pwrc: add Amlogic AXG power controller bindings
Date:   Fri,  4 Sep 2020 18:16:53 +0200
Message-Id: <20200904161654.24141-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200904161654.24141-1-narmstrong@baylibre.com>
References: <20200904161654.24141-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the bindings of the Power Controller found in the Amlogic AXG SoCs.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
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

