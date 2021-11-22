Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E68DD458CA9
	for <lists+devicetree@lfdr.de>; Mon, 22 Nov 2021 11:48:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239322AbhKVKvV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Nov 2021 05:51:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239253AbhKVKvV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Nov 2021 05:51:21 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D66F1C061574
        for <devicetree@vger.kernel.org>; Mon, 22 Nov 2021 02:48:14 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id bu18so78867907lfb.0
        for <devicetree@vger.kernel.org>; Mon, 22 Nov 2021 02:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=veznNCWfyEZatqAmzPb848b91WavKwcPqROvRUIiq/E=;
        b=VyUy2BcC7S7ke5VLz2u9hpx5jVU8FimXWlUrEJhIGE/jmMMTEpGuWbzoQojp4N8Ta+
         Fj6VOXKPcQ/X7YhQPKGzpNgVstlSe+815DyGc7YmaXIJWChdSpwbIwukbGWHEGRzTLyz
         gtyE9Qik/Q2N7ur/IaGk/I2Da7R/I6kMqfZhRGePtXgAGESpKln8zudjdsAiG57OEINT
         HZz6xWhpiEV3RndkA5OMmjnMXULTcTESdPEaSBsvM0+aMdIY+jZA/jSlFdCbQXrX6pmv
         oWm7oOXzezHW1WMnGnsZ1rVkQWEgH8sNJvvXNOoI0n0OXs4FqerD2Si24hBBrHgFsMrj
         xIVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=veznNCWfyEZatqAmzPb848b91WavKwcPqROvRUIiq/E=;
        b=guQpcKbxPhAU4AEg6LYhL+RvNCsHP7VJ6vDFmmfrNc7nfEpDGZOWfB8Sd0FL8sm4e4
         /vJIxgSjwaiQdwzv13PxARghCX4DHCdZwLIgKNtByCMGXIJfoMCpHDhYDe7T2zulf+Bp
         zIKz6jseAcC7yLvWqZdUUfOnp3ypb+xOzQLL6v/+Xi9U8i5pLhwaOtooPwHizIwgverp
         EkPsFzkQj8v47pIjAXyULkeGdYb/lH9SO/72FvRqKQo+uCiJ6iNnIq9J0zN/8ddX2DeN
         943i4Bg3QQ7JMam03bNj79ZLI/rVs5DF+8NS8h0wFEGFdDKFyfYyx6hGsB52aWs0EcB0
         Stfw==
X-Gm-Message-State: AOAM530zVZgybK9LEi6LKNviLArd6byp1aTHYTm2w3I/FlAs+T674p31
        neXDHaPYadVVXX76nd1AIr81sw==
X-Google-Smtp-Source: ABdhPJzBG9VJN0ecW1c7aafMOaF08g++9o5g53U+9cDb7MEYbLkTp1wkBetnN2ix3DyRO8wF9+n8uw==
X-Received: by 2002:a2e:7801:: with SMTP id t1mr52527022ljc.253.1637578093130;
        Mon, 22 Nov 2021 02:48:13 -0800 (PST)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id o11sm882648ljc.100.2021.11.22.02.48.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Nov 2021 02:48:12 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH net-next v2] dt-bindings: net: Add bindings for IXP4xx V.35 WAN HSS
Date:   Mon, 22 Nov 2021 11:46:07 +0100
Message-Id: <20211122104607.3145732-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds device tree bindings for the IXP4xx V.35 WAN high
speed serial (HSS) link.

An example is added to the NPE example where the HSS appears
as a child.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Add intel vendor prefix on custom queue handle bindings.
- Make the pkt-tx and pkt-rxfree into arrays of handles.

Currently only adding these bindings so we can describe the
hardware in device trees.
---
 ...ntel,ixp4xx-network-processing-engine.yaml | 20 ++++
 .../bindings/net/intel,ixp4xx-hss.yaml        | 94 +++++++++++++++++++
 2 files changed, 114 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/intel,ixp4xx-hss.yaml

diff --git a/Documentation/devicetree/bindings/firmware/intel,ixp4xx-network-processing-engine.yaml b/Documentation/devicetree/bindings/firmware/intel,ixp4xx-network-processing-engine.yaml
index c435c9f369a4..14de9e3d5fab 100644
--- a/Documentation/devicetree/bindings/firmware/intel,ixp4xx-network-processing-engine.yaml
+++ b/Documentation/devicetree/bindings/firmware/intel,ixp4xx-network-processing-engine.yaml
@@ -45,9 +45,29 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
+
     npe: npe@c8006000 {
          compatible = "intel,ixp4xx-network-processing-engine";
          reg = <0xc8006000 0x1000>, <0xc8007000 0x1000>, <0xc8008000 0x1000>;
+         #address-cells = <1>;
+         #size-cells = <0>;
+
+         hss@0 {
+             compatible = "intel,ixp4xx-hss";
+             reg = <0>;
+             intel,npe-handle = <&npe 0>;
+             intel,queue-chl-rxtrig = <&qmgr 12>;
+             intel,queue-pkt-rx = <&qmgr 13>;
+             intel,queue-pkt-tx = <&qmgr 14>, <&qmgr 15>, <&qmgr 16>, <&qmgr 17>;
+             intel,queue-pkt-rxfree = <&qmgr 18>, <&qmgr 19>, <&qmgr 20>, <&qmgr 21>;
+             intel,queue-pkt-txdone = <&qmgr 22>;
+             cts-gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
+             rts-gpios = <&gpio0 14 GPIO_ACTIVE_LOW>;
+             dcd-gpios = <&gpio0 6 GPIO_ACTIVE_LOW>;
+             dtr-gpios = <&gpio_74 2 GPIO_ACTIVE_LOW>;
+             clk-internal-gpios = <&gpio_74 0 GPIO_ACTIVE_HIGH>;
+         };
 
          crypto {
              compatible = "intel,ixp4xx-crypto";
diff --git a/Documentation/devicetree/bindings/net/intel,ixp4xx-hss.yaml b/Documentation/devicetree/bindings/net/intel,ixp4xx-hss.yaml
new file mode 100644
index 000000000000..93d88dbb2073
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/intel,ixp4xx-hss.yaml
@@ -0,0 +1,94 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2021 Linaro Ltd.
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/net/intel,ixp4xx-hss.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Intel IXP4xx V.35 WAN High Speed Serial Link (HSS)
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |
+  The Intel IXP4xx HSS makes use of the IXP4xx NPE (Network
+  Processing Engine) and the IXP4xx Queue Manager to process
+  V.35 Wideband Modem (WAN) links.
+
+properties:
+  compatible:
+    const: intel,ixp4xx-hss
+
+  reg:
+    maxItems: 1
+    description: The HSS instance
+
+  intel,npe-handle:
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    maxItems: 1
+    description: phandle to the NPE this HSS instance is using
+      and the instance to use in the second cell
+
+  intel,queue-chl-rxtrig:
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    maxItems: 1
+    description: phandle to the RX trigger queue on the NPE
+
+  intel,queue-pkt-rx:
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    maxItems: 1
+    description: phandle to the packet RX queue on the NPE
+
+  intel,queue-pkt-tx:
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    maxItems: 4
+    description: phandle to the packet TX0, TX1, TX2 and TX3 queues on the NPE
+
+  intel,queue-pkt-rxfree:
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    maxItems: 4
+    description: phandle to the packet RXFREE0, RXFREE1, RXFREE2 and
+      RXFREE3 queues on the NPE
+
+  intel,queue-pkt-txdone:
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    maxItems: 1
+    description: phandle to the packet TXDONE queue on the NPE
+
+  cts-gpios:
+    maxItems: 1
+    description: Clear To Send (CTS) GPIO line
+
+  rts-gpios:
+    maxItems: 1
+    description: Ready To Send (RTS) GPIO line
+
+  dcd-gpios:
+    maxItems: 1
+    description: Data Carrier Detect (DCD) GPIO line
+
+  dtr-gpios:
+    maxItems: 1
+    description: Data Terminal Ready (DTR) GPIO line
+
+  clk-internal-gpios:
+    maxItems: 1
+    description: Clock internal GPIO line, driving this high will make the HSS
+      use internal clocking as opposed to external clocking
+
+required:
+  - compatible
+  - reg
+  - intel,npe-handle
+  - intel,queue-chl-rxtrig
+  - intel,queue-pkt-rx
+  - intel,queue-pkt-tx
+  - intel,queue-pkt-rxfree
+  - intel,queue-pkt-txdone
+  - cts-gpios
+  - rts-gpios
+  - dcd-gpios
+  - dtr-gpios
+  - clk-internal-gpios
+
+additionalProperties: false
-- 
2.31.1

