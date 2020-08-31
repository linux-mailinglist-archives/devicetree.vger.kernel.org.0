Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC4362579F8
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 15:03:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727839AbgHaNDN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 09:03:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726167AbgHaNDI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Aug 2020 09:03:08 -0400
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8528FC061755
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 06:03:08 -0700 (PDT)
Received: by mail-pl1-x644.google.com with SMTP id l9so1362817plt.8
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 06:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PKVQa7mFyShxE7bXpbdQpBbN4ieHP/7X9mNZXJlFeWE=;
        b=ZTh04aeLyTXBjqrgPnzQoGcbpZAWJxcuVmTqa97tyD3iSVLa9D9tl8OqiaiIiaIsSw
         1jB5SijOIYwwcLoAZFGGFAai7EXY6/xvtiak6imDLdhGg/L9fQ0lkRZpai2ojqfWn9SY
         TLXLGW9wHCQJ5IlfZl6RErRDzTrN7WvYJhvNU/GDrnXD8Ak2nVldfg3WPWreEqudgaIK
         vAVrTviYuq66P3T0pW8YYUM6kfp2tgFADfPSA/8eYbjHWoGYVTIXcK1hNSc8OAiwCwnd
         qbHbGZyOT75kbes6mt0RHjzxohKylCyaApQqKXQp5BXCwXcAKtYoui+sHjg2Mvlwm0HP
         x0CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PKVQa7mFyShxE7bXpbdQpBbN4ieHP/7X9mNZXJlFeWE=;
        b=tAFdkhEhhCG9/ON3bqstDoEJ2CDhvzk7wFHc1O+ECzaTDd10hQkBODfhS8RgRMxmkH
         CNrAQDv+ZjMkLgaXCzovuCNMQT6x/xpTeYyMk6TAchN87pj4NTFAQ3B1EzIw8XOSnliw
         HbUF6tK8M5weznliv4K57JwJGlLYPdXKNPZKuA9aBXw50nm6rMj/DFuOQ20sHgUzn99k
         LjL6qMv97f30GPg0EI80lbydkvAmJXzxrwNaD5lamU6NwHmPoGHMJ8iGtL+B3EpgvN+r
         TC4IiHNSKLNf82r6IQrDqhxbTryenAxO2EX4lNGLdCAJu2VImF/Gz3h6qavSVjAAADoT
         219g==
X-Gm-Message-State: AOAM533y0M2oM+Co552FLm0pzfSiplmwbclffDc2ykeF/gf5GkXUl7mN
        kmCf0erobB/4QnxW+xkAa61hSg==
X-Google-Smtp-Source: ABdhPJzP6nf0rR3az30ZR1AJfT0npkrLM5KI5fKgntR9xe1WID4hsimXo6qLlmde4qi4uDpbpHKl9g==
X-Received: by 2002:a17:902:8489:: with SMTP id c9mr971255plo.82.1598878987999;
        Mon, 31 Aug 2020 06:03:07 -0700 (PDT)
Received: from nagraj.local ([49.206.21.239])
        by smtp.gmail.com with ESMTPSA id l21sm7400580pgb.35.2020.08.31.06.03.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2020 06:03:06 -0700 (PDT)
From:   Sumit Semwal <sumit.semwal@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        "David S . Miller" <davem@davemloft.net>,
        Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>
Subject: [PATCH v6 1/2] dt-bindings: display: panel: Add bindings for Novatek nt36672a
Date:   Mon, 31 Aug 2020 18:32:50 +0530
Message-Id: <20200831130251.19769-2-sumit.semwal@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200831130251.19769-1-sumit.semwal@linaro.org>
References: <20200831130251.19769-1-sumit.semwal@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Novatek nt36672a is a display driver IC that can drive DSI panel. It
is also present in the Tianma video mode panel, which is a FHD+ panel
with a resolution of 1080x2246 and 6.18 inches size. It is found in
some of the Poco F1 phones.

This patch adds the display driver for the IC, with support added for
this tianma fhd video mode panel.

Signed-off-by: Sumit Semwal <sumit.semwal@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>

---
v2: remove ports node, making port@0 directly under panel@0 node.
v3: updated to replace port@0 to just 'port'.
v5: renamed to novatek,nt36672a, since the binding is for the IC and not
      the panel.
v6: v5 review comments incorporated.
    - added enum for the compatible part, since it can be extended in
      future.
    - few cosmetic updates.
---
 .../display/panel/novatek,nt36672a.yaml       | 87 +++++++++++++++++++
 1 file changed, 87 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/novatek,nt36672a.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt36672a.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt36672a.yaml
new file mode 100644
index 000000000000..d2170de6b723
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/novatek,nt36672a.yaml
@@ -0,0 +1,87 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/novatek,nt36672a.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Novatek NT36672A based DSI display Panels
+
+maintainers:
+  - Sumit Semwal <sumit.semwal@linaro.org>
+
+description: |
+  The nt36672a IC from Novatek is a generic DSI Panel IC used to drive dsi
+  panels.
+  Right now, support is added only for a Tianma FHD+ LCD display panel with a
+  resolution of 1080x2246. It is a video mode DSI panel.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+         - tianma,fhd-video
+      - const: novatek,nt36672a
+    description: This indicates the panel manufacturer of the panel that is
+      in turn using the NT36672A panel driver. This compatible string
+      determines how the NT36672A panel driver is configured for the indicated
+      panel. The novatek,nt36672a compatible shall always be provided as a fallback.
+
+  reset-gpios:
+    description: phandle of gpio for reset line - This should be 8mA, gpio
+      can be configured using mux, pinctrl, pinctrl-names (active high)
+
+  vddio-supply:
+    description: phandle of the regulator that provides the supply voltage
+      Power IC supply
+
+  vddpos-supply:
+    description: phandle of the positive boost supply regulator
+
+  vddneg-supply:
+    description: phandle of the negative boost supply regulator
+
+  reg: true
+  port: true
+
+required:
+  - compatible
+  - reg
+  - vddi0-supply
+  - vddpos-supply
+  - vddneg-supply
+  - reset-gpios
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |+
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi0 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "tianma,fhd-video", "novatek,nt36672a";
+            reg = <0>;
+            vddi0-supply = <&vreg_l14a_1p88>;
+            vddpos-supply = <&lab>;
+            vddneg-supply = <&ibb>;
+
+            reset-gpios = <&tlmm 6 GPIO_ACTIVE_HIGH>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+            port {
+                tianma_nt36672a_in_0: endpoint {
+                    remote-endpoint = <&dsi0_out>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.28.0

