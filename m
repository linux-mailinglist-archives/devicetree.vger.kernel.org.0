Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A422C1C8AA3
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2020 14:23:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726950AbgEGMXW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 May 2020 08:23:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726884AbgEGMXV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 May 2020 08:23:21 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F5ADC05BD0B
        for <devicetree@vger.kernel.org>; Thu,  7 May 2020 05:23:21 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id i15so5703774wrx.10
        for <devicetree@vger.kernel.org>; Thu, 07 May 2020 05:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AA7Uxbu2XHegzSCD08X5CYV/vq3ZozqHESt7BO/60Qw=;
        b=IagWuptFPeh/2lr4Z9leJPvgQ5fKu4rbQleuz/8B9TUXhjaGGy4ekrF4l2LmGNO+2q
         /DzaZC451JJnk71n6ueaUfaF1eFto6dvTaPxga+MBYmhWEtNRSdmJF+G7bMRSRWZk7LU
         Y4IRdhXsHVDU8x57ZmAN4X4pZ5izzumygYgxUeO0glHn1SRF4MGlQEb8hfSNUszfs1f5
         D77EkGk0wyHAlzetnonG/Wa0YxemdBrGV3gh8PDLCUMCHSpY/vIDGLfQY28ocO4xbvki
         i5wDN8pz78rF5ft5J2gRrs8yUBnV0bfl3deF8UkRpwkN4+VtlZ7s0hb33Q1Tp85hhv7u
         jkUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AA7Uxbu2XHegzSCD08X5CYV/vq3ZozqHESt7BO/60Qw=;
        b=TfVndsPhhlGT+qgSjAKf2hAFElz79hyxbIuk0pcFVQ3IhKW77lzlnf8gbljfNGGl6P
         zqa//npVG7uWxwJ/WemzEzVXIZ3CQ9oK04LOa2r5o167wpBkaKjvzrYwJmaZRSzLHLDM
         iy0ZH0NVp9mV57Nuve7+SNwJZ2UhJIS7pKcvyg84dK7Xi0Wb+Vwx8PpROs2NPHOKw6z7
         jJXV8SaRQLxuvLDXGTFcLA0C1W6E8+5wViMwFoBWK4oz0LMmqlWQ079Td3bKQNgIChIu
         qXGpsM0n3LyJvJPHGzracRr23OkIRJ3H2qaZoVjh2MLblXbE/gWEFBZql5/86lNsXr5e
         vwXQ==
X-Gm-Message-State: AGi0Pua4xrEaLmZLjfteYoOsGvbh0ctf/9KabFaVZJz+6MkoQrLOK5Kt
        +WI8bSH2kbCRAIIt0dzxMgLK1Q==
X-Google-Smtp-Source: APiQypJWl2jicSfHQJu0lHJazQTw+s9hQP8izhRywvWVtHY4BG7N6Gh4wfS9xqEbymgcaH0mq13E4A==
X-Received: by 2002:adf:f48a:: with SMTP id l10mr14485357wro.231.1588854200232;
        Thu, 07 May 2020 05:23:20 -0700 (PDT)
Received: from localhost.localdomain ([176.61.57.127])
        by smtp.gmail.com with ESMTPSA id p7sm8202936wrf.31.2020.05.07.05.23.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2020 05:23:19 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     heikki.krogerus@linux.intel.com, robh+dt@kernel.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org
Cc:     gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
        nikolaus.voss@loewensteinmedical.de,
        andriy.shevchenko@linux.intel.com, garsilva@embeddedor.com,
        keescook@chromium.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH 1/2] dt-bindings: usb: Add TI tps6598x device tree binding documentation
Date:   Thu,  7 May 2020 13:23:51 +0100
Message-Id: <20200507122352.1773661-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200507122352.1773661-1-bryan.odonoghue@linaro.org>
References: <20200507122352.1773661-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device tree binding documentation for the Texas Instruments tps6598x
Type-C chip driver.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/usb/ti,tps6598x.yaml  | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/ti,tps6598x.yaml

diff --git a/Documentation/devicetree/bindings/usb/ti,tps6598x.yaml b/Documentation/devicetree/bindings/usb/ti,tps6598x.yaml
new file mode 100644
index 000000000000..fc18274d7775
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/ti,tps6598x.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/usb/ti,tps6598x.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Texas Instruments 6598x Type-C Port Switch and Power Delivery controller DT bindings
+
+maintainers:
+  - Heikki Krogerus <heikki.krogerus@linux.intel.com>
+  - Bryan O'Donoghue <bryan.odonoghue@linaro.org>
+
+description: |
+  Texas Instruments 6598x Type-C Port Switch and Power Delivery controller
+
+properties:
+  compatible:
+    enum:
+      - ti,tps6598x
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-names:
+    items:
+      - const: irq
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c0 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+    
+        tps6598x: tps6598x@38 {
+            compatible = "ti,tps6598x";
+            reg = <0x38>;
+
+            interrupt-parent = <&msmgpio>;
+            interrupts = <107 IRQ_TYPE_LEVEL_LOW>;
+            interrupt-names = "irq";
+
+            pinctrl-names = "default";
+            pinctrl-0 = <&typec_pins>;
+
+            typec_con: connector {
+                compatible = "usb-c-connector";
+                label = "USB-C";
+                port {
+                    typec_ep: endpoint {
+                        remote-endpoint = <&otg_ep>;
+                    };
+                };
+            };
+        };
+    };
+...
-- 
2.25.1

