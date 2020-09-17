Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 487F626E468
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 20:47:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726422AbgIQSrq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 14:47:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726578AbgIQSq1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Sep 2020 14:46:27 -0400
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD880C06174A
        for <devicetree@vger.kernel.org>; Thu, 17 Sep 2020 11:46:26 -0700 (PDT)
Received: by mail-pf1-x441.google.com with SMTP id n14so1784989pff.6
        for <devicetree@vger.kernel.org>; Thu, 17 Sep 2020 11:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7o3w2ZljyTuQVHbahsukje0ozegX2dCahOw0WdwnSA8=;
        b=Xae7ET4Ul07KEANd1GC1XpwFqbRNBrwvC7P/TlsoTZ9JzLa7Uilmu+ByvrA+CEGul1
         sqw0DWGQ04zdSYKz8LP7ioPbmXDjHXRR6BsE8Pi+5NYGJTXkDBOs8x2n10wGCCIBux0l
         44oh7eCb9aVgQGmDCl/Wg2NzZuSPwg4tpRWKI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7o3w2ZljyTuQVHbahsukje0ozegX2dCahOw0WdwnSA8=;
        b=LgxAxyb8VIMYNj6eSuGbHACjNFmXWR/d1Ko+zMHxUnnWO73+YCAOP99J/Xz1Rs8AJh
         hU7dqkpy2SyVDu1TVRuHihJaXgVzEEPlyo/mzWjzC8PP0X/4kWn7IQYdpX0eH3CUfk12
         1YESb5jCeh+6GmngwQW2d40dV7Qg+Ton4hI/cZjd114Mf53FWLFmERzNG4WMUZyYmjm9
         fm6XkxQ7UX47A8eeSjCGjIepqcvI6zPsHcZCTsY5vE7fr7+CZXpicmMqd8u4x/knjm/n
         nVIZG/YOCi8iwnVn/1RbfkgJvAFW5NQyMDtefrZcPUGxxfbMfxh7bxi0LIM09oarLJUl
         f4Xg==
X-Gm-Message-State: AOAM530t0t4BSS9V3YDL8nyY4ei+voqkYylWSvqYG1fM8tQCSpnInFL7
        XcLr9ED9B1BOHtgi0EZ+P/91QQ==
X-Google-Smtp-Source: ABdhPJwBY0Ueko3lifnLlfdJ7jGPT979jk4aaCf1YVAxOig8ukJ1ACmMa5qUfN/6yhO8MTzXomOLuw==
X-Received: by 2002:a63:491:: with SMTP id 139mr7179336pge.147.1600368386353;
        Thu, 17 Sep 2020 11:46:26 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:f693:9fff:fef4:e70a])
        by smtp.gmail.com with ESMTPSA id c6sm346444pfd.83.2020.09.17.11.46.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2020 11:46:25 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        linux-usb@vger.kernel.org, Bastien Nocera <hadess@hadess.net>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        devicetree@vger.kernel.org,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Peter Chen <peter.chen@nxp.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v2 1/2] dt-bindings: usb: Add binding for onboard USB hubs
Date:   Thu, 17 Sep 2020 11:46:21 -0700
Message-Id: <20200917114600.v2.1.I248292623d3d0f6a4f0c5bc58478ca3c0062b49a@changeid>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Onboard USB hubs need to be powered and may require initiaization of
other resources (like GPIOs or clocks) to work properly. This adds
a device tree binding for these hubs.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---

Changes in v2:
- removed 'wakeup-source' and 'power-off-in-suspend' properties
- consistently use spaces for indentation in example

 .../bindings/usb/onboard_usb_hub.yaml         | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/onboard_usb_hub.yaml

diff --git a/Documentation/devicetree/bindings/usb/onboard_usb_hub.yaml b/Documentation/devicetree/bindings/usb/onboard_usb_hub.yaml
new file mode 100644
index 000000000000..66d67aa64e3f
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/onboard_usb_hub.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/onboard_usb_hub.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Binding for onboard USB hubs
+
+maintainers:
+  - Matthias Kaehlcke <mka@chromium.org>
+
+allOf:
+  - $ref: /schemas/usb/onboard_usb_hub.yaml#
+
+properties:
+  compatible:
+    enum:
+      - onboard-usb-hub
+      - realtek,rts5411
+
+  vdd-supply:
+    description:
+      phandle to the regulator that provides power to the hub.
+
+required:
+  - compatible
+  - vdd-supply
+
+examples:
+  - |
+    usb_hub: usb-hub {
+        compatible = "realtek,rts5411", "onboard-usb-hub";
+        vdd-supply = <&pp3300_hub>;
+    };
+
+    &usb_1_dwc3 {
+        dr_mode = "host";
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        /* 2.0 hub on port 1 */
+        hub@1 {
+            compatible = "usbbda,5411";
+            reg = <1>;
+            hub = <&usb_hub>;
+        };
+
+        /* 3.0 hub on port 2 */
+        hub@2 {
+            compatible = "usbbda,411";
+            reg = <2>;
+            hub = <&usb_hub>;
+        };
+    };
+
+...
-- 
2.28.0.681.g6f77f65b4e-goog

