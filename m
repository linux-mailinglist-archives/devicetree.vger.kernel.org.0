Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F07E37B8DC
	for <lists+devicetree@lfdr.de>; Wed, 12 May 2021 11:05:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230455AbhELJHD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 May 2021 05:07:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230446AbhELJHC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 May 2021 05:07:02 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46D7AC06174A
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 02:05:54 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id a4so22828597wrr.2
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 02:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2YWjRqJN4fXNtvBK3pOJG8ZNsA1w+vwd3827gzQ4Yjo=;
        b=AjtisoYAjBXxy60gruBTKmAj1mA+BYBRegSMSBBUaDMqS5G0ySxqb8Fl0a5/ebclK2
         m8zTjxLPNGbNEe6nvNW3cX6sKIsZI7mTaD8xVhFQRu3DRTh08fRo2mAuF6Tcm1poqxkJ
         lVrPSyxoZlbGlj1SFR3wcdRv/kf2OOFksackELc3LOktMkbh7Y1Gu2xP/eEHchG9I/yk
         v3dnXa/Bz16aMzdju3CGde/j1bM43rSnp4oarUCwiMVOI4+Ps5mb1pC1M+5TGu64Ig3U
         O9OcEg0YJ9nfYCK0UFdpwgXvX0IP0HeDuaWXBNNMQuKr6KvkzU5jL6Pf97SLhMroecVh
         +VHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2YWjRqJN4fXNtvBK3pOJG8ZNsA1w+vwd3827gzQ4Yjo=;
        b=pc1/UflTs6EqsPmmceXpTRj6HZPE2r84IAsEHxnS/RE6QHQ6FiJVr5xSPePW1jDRUO
         Qrt6Q7L1e4TGxxDZZI8iwzzorIrnOgSXvPhofeb9f1IPKgMHBr2L0IP9fGMVu8AkdBiG
         IjcQEBgIublsVuHgQ05Ew2hbZ+cOr5hWpyXp/MpzhiQyRZxjabQRHu+qya5ZQzrTMMgz
         Tl51onHJPEp0zjnt9u3daICDy77Oxjgw1FYewmtvO/lSyCaQA8R6mmyGPbyO26l5McY/
         vJDjDYnx8DVXpQ57wOiLDfONkjJaP9dNBgaP4aP4GOsnj/netX9Z9DiTWTsnoiT2eGTL
         2bxg==
X-Gm-Message-State: AOAM533d7E//EOKlCXLlwbYTPXnqyiPrcs+YIBe73EExlKZ7UogUMY2m
        LbtJVjsQhFMg/PSKPnnoNF1lZQ==
X-Google-Smtp-Source: ABdhPJws+CdvBa5F6Ravx367IHBLoRtWpBFO74u5Ct04aiztGreTVLKnnVGqldLViTIZXNURF4rtgw==
X-Received: by 2002:a05:6000:504:: with SMTP id a4mr44790202wrf.51.1620810352990;
        Wed, 12 May 2021 02:05:52 -0700 (PDT)
Received: from arch-thunder.local (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
        by smtp.gmail.com with ESMTPSA id v20sm26679451wmj.15.2021.05.12.02.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 02:05:52 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Sebastian Siewior <bigeasy@linutronix.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH v3 8/9] dt-bindings: usb: nxp,isp1760: add bindings
Date:   Wed, 12 May 2021 10:05:28 +0100
Message-Id: <20210512090529.2283637-9-rui.silva@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210512090529.2283637-1-rui.silva@linaro.org>
References: <20210512090529.2283637-1-rui.silva@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The nxp,isp1760 driver is old in the tree, but did not had a bindings
entry, since I am extend it to support isp1763 in the same family, use
this to add a proper yaml bindings file.

Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
---
 .../devicetree/bindings/usb/nxp,isp1760.yaml  | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/nxp,isp1760.yaml

diff --git a/Documentation/devicetree/bindings/usb/nxp,isp1760.yaml b/Documentation/devicetree/bindings/usb/nxp,isp1760.yaml
new file mode 100644
index 000000000000..0d76529e9662
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/nxp,isp1760.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/nxp,isp1760.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP ISP1760 family controller bindings
+
+maintainers:
+  - Sebastian Siewior <bigeasy@linutronix.de>
+  - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
+
+description: |
+  NXP ISP1760 family, which includes ISP1760/1761/1763 devicetree controller
+  bindings
+
+properties:
+  compatible:
+    enum:
+      - nxp,usb-isp1760
+      - nxp,usb-isp1761
+      - nxp,usb-isp1763
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  bus-width:
+    description:
+      Number of data lines.
+    enum: [8, 16, 32]
+    default: 32
+
+  dr_mode:
+    enum:
+      - host
+      - peripheral
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: true
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    usb@40200000 {
+        compatible = "nxp,usb-isp1763";
+        reg = <0x40200000 0x100000>;
+        interrupts-parent = <&gic>;
+        interrupts = <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
+        bus-width = <16>;
+        dr_mode = "host";
+    };
+
+...
-- 
2.31.1

