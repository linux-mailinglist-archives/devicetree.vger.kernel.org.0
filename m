Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92E24487947
	for <lists+devicetree@lfdr.de>; Fri,  7 Jan 2022 15:55:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347909AbiAGOz3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jan 2022 09:55:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347893AbiAGOz1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jan 2022 09:55:27 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFBB2C061574
        for <devicetree@vger.kernel.org>; Fri,  7 Jan 2022 06:55:26 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id d187-20020a1c1dc4000000b003474b4b7ebcso2386787wmd.5
        for <devicetree@vger.kernel.org>; Fri, 07 Jan 2022 06:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=i/hFK7bnbyVv/8bagrZIUgrFi4M+cus55rUNMhBhOlY=;
        b=QxcPOOVBsJT1TbTertfVq4dtk+zgpw9B9lO7kmUmxUDaGs9HqYpJL97QVTaH4F6Yko
         0BwpbMqRvA8Tix2+d+7IegIGvGJsKPP7qJtzEBUA3ypgwJhAdOSNBtit6eSi+PS+Wkl+
         MTreGbdmvzbOVm8LNbClt0ntITzlw5aK+wy9Rh48CG5FTNQSc55TduJuw+0qs01TYgqt
         D3ImKrDnm7Kuy87wNftoVBpPesS1ty1jTFqSS7GUvtfqLRsrSZy5KWh6ZEdLpx/M36GQ
         v3s6YO8wjn3tWToHNAiFVIhCbJKQnX3gxFOU//DKHCLHAy6QvpFN4e89+c26AIDG7Gbk
         BaRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=i/hFK7bnbyVv/8bagrZIUgrFi4M+cus55rUNMhBhOlY=;
        b=uoWw2og5Z9sBjrOsr1iz96dLpErWvP0WuU3qAImHqmbXm9oqE0c0YkTYVgbmGKX7AH
         uFO0hKSX15s84dzqNBbp1QFHFxZPVkUHhoy3XI0LOblgG8PiRy22XBYOVKCrc60duwdR
         Ri+gFfUQol4BNGgwwa1vLP3UAaEbLMx3PfhQP4531pDdj5nrsv/YiycY8XlOQ6Ycis1b
         HqviBQaGJ/VLF01rLdBP96hrfB6W3fl0hJE8FdUYP2fH2apCXwGpwEx4vOwU9A7l8juw
         AorHAEfYL6JiQx6PbmktemhQJmr7EM+aRb6yy7R1/RTwvWAUFT0i8g/CZrh8gTDN367D
         xc/Q==
X-Gm-Message-State: AOAM530tadiC2tcMHDZ9fdeEDcnFmJ0XRXvtb0G11qE9SfEkg5QRN/uT
        aveleYFmS4wWOWy1GjP++zQg6ZL+jJpl1w==
X-Google-Smtp-Source: ABdhPJzNiIlnV5+EKZOxSQ3AuYv+xDs8BOK4BC9sQabhOwnBxMpuZvATOQT2eB0jdqLLJr/t1XxumQ==
X-Received: by 2002:a05:600c:5119:: with SMTP id o25mr11741995wms.96.1641567325360;
        Fri, 07 Jan 2022 06:55:25 -0800 (PST)
Received: from localhost.localdomain ([2001:861:44c0:66c0:fc89:e826:8938:cbde])
        by smtp.gmail.com with ESMTPSA id n8sm5594492wri.47.2022.01.07.06.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jan 2022 06:55:24 -0800 (PST)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 1/6] dt-bindings: display: add Amlogic MIPI DSI Host Controller bindings
Date:   Fri,  7 Jan 2022 15:55:10 +0100
Message-Id: <20220107145515.613009-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220107145515.613009-1-narmstrong@baylibre.com>
References: <20220107145515.613009-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Amlogic G12A, G12B & SM1 SoCs embeds a Synopsys DW-MIPI-DSI transceiver (ver 1.21a),
with a custom glue managing the IP resets, clock and data input similar to the DW-HDMI Glue
on the same Amlogic SoCs.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../display/amlogic,meson-dw-mipi-dsi.yaml    | 118 ++++++++++++++++++
 1 file changed, 118 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/amlogic,meson-dw-mipi-dsi.yaml

diff --git a/Documentation/devicetree/bindings/display/amlogic,meson-dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/amlogic,meson-dw-mipi-dsi.yaml
new file mode 100644
index 000000000000..f3070783d606
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/amlogic,meson-dw-mipi-dsi.yaml
@@ -0,0 +1,118 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2020 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/display/amlogic,meson-dw-mipi-dsi.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic specific extensions to the Synopsys Designware MIPI DSI Host Controller
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+description: |
+  The Amlogic Meson Synopsys Designware Integration is composed of
+  - A Synopsys DesignWare MIPI DSI Host Controller IP
+  - A TOP control block controlling the Clocks & Resets of the IP
+
+allOf:
+  - $ref: dsi-controller.yaml#
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-g12a-dw-mipi-dsi
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+
+  clock-names:
+    minItems: 2
+    items:
+      - const: pclk
+      - const: px_clk
+      - const: meas_clk
+
+  resets:
+    minItems: 1
+
+  reset-names:
+    items:
+      - const: top
+
+  phys:
+    minItems: 1
+
+  phy-names:
+    items:
+      - const: dphy
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description: Input node to receive pixel data.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description: DSI output node to panel.
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - phys
+  - phy-names
+  - ports
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    dsi@7000 {
+          compatible = "amlogic,meson-g12a-dw-mipi-dsi";
+          reg = <0x6000 0x400>;
+          resets = <&reset_top>;
+          reset-names = "top";
+          clocks = <&clk_pclk>, <&clk_px>;
+          clock-names = "pclk", "px_clk";
+          phys = <&mipi_dphy>;
+          phy-names = "dphy";
+
+          ports {
+              #address-cells = <1>;
+              #size-cells = <0>;
+
+              /* VPU VENC Input */
+              mipi_dsi_venc_port: port@0 {
+                  reg = <0>;
+
+                  mipi_dsi_in: endpoint {
+                       remote-endpoint = <&dpi_out>;
+                  };
+              };
+
+              /* DSI Output */
+              mipi_dsi_panel_port: port@1 {
+                  reg = <1>;
+
+                  mipi_out_panel: endpoint {
+                      remote-endpoint = <&mipi_in_panel>;
+                  };
+              };
+          };
+    };
-- 
2.25.1

