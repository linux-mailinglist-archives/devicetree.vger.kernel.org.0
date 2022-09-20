Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18D675BDC6D
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 07:27:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230137AbiITF1s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 01:27:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229543AbiITF1r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 01:27:47 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E92A6300
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 22:27:39 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id g3so2341913wrq.13
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 22:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=Qd2vIaTaU8FXpoD0loqfPqjcfrHuvjdaiYj9iARSth8=;
        b=KmPrFrywgwmVRWDFFDjcFy6pKgJ2nBRleZx+FyMYSo8S/FOKwIKfSupdD4mOgUVYO6
         k8im8DvNRNMjMoirwHiprBVmVM98wvUdTNAKER63zr1hzjZmE2fzdt7lbJRDSK8X4lla
         O7Do31gmrme0xJTvD1ESsuHwNRb3u54OFv9i6BPy8BemLgoqBiwm2ZHcAZsrMsUPpQH+
         1VHgRB6+9LlMbjlejrd/+wGJGzhnGyo34hP2Z+sZv/w/q6hUzEzJSI7BhQ3jyi/2Hnfa
         H3JGAVd03RVNYk2wTYRcL14OOPqisw+9Mt3ZI/GoNPu293ff9aoYg1KgvrFlY0RXR5FW
         i04Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=Qd2vIaTaU8FXpoD0loqfPqjcfrHuvjdaiYj9iARSth8=;
        b=73a5HgDsulQvu0jIXz5KYo1PrGRXzmOp4vjOyCloGU2mi8NyUtGQtGbSKErixJtO/Y
         HaOGAOsjKnsgWPvcQxW14MHFkutY7rv70RkZ0phYQ+5It4ReGEGDZJl/BnefiLwP+kFh
         xpOClvfmP+1QuoJjT/48fFYnMgjLTFVwAFmo6cMNydIcBjzMVreGg+t5Fc5Wb24qSXsH
         kvdxnx7+tN9I1PT7lOE0h27voKGLPOKzUpsT34bpD/eTRQ3Yox0hKsv0i8XZ2FrisIFY
         6/mB73i7E8BQIBPFL6Wlk8LeTdV4ujT3KPjiZaXhM66SaNhvwAWg2F7kQK4gQmWZ/hH7
         +urw==
X-Gm-Message-State: ACrzQf3aSq7/n87UEHm48ummltuQGN4Ufhah4+uvdq5fYwpKIj214i0Y
        MLzDUPQ+Dy8mKez8jPiXnASiJU2GPr5KiA==
X-Google-Smtp-Source: AMsMyM6rL81Um64xAbk3Rsm49Hie3Qz3sDP0MdQ+LVIfMYK+V9G/06r1hETn+TGco08lDEGqMkqmVg==
X-Received: by 2002:adf:f94a:0:b0:225:7383:d755 with SMTP id q10-20020adff94a000000b002257383d755mr12749719wrr.348.1663651658134;
        Mon, 19 Sep 2022 22:27:38 -0700 (PDT)
Received: from localhost.localdomain (188.red-88-10-59.dynamicip.rima-tde.net. [88.10.59.188])
        by smtp.gmail.com with ESMTPSA id ay9-20020a05600c1e0900b003a5c7a942edsm16237241wmb.28.2022.09.19.22.27.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 22:27:37 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, arinc.unal@arinc9.com
Subject: [PATCH v2] dt-bindings: spi: migrate mt7621 text bindings to YAML
Date:   Tue, 20 Sep 2022 07:27:35 +0200
Message-Id: <20220920052735.582768-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SoC MT7621 SPI bindings used text format, so migrate them to YAML.
There are some additions to the binding that were not in the original
file. This binding is used in MT7621 and MT7628a Ralink SoCs. To
properly match both dts nodes in tree we need to add to the schema
'clocks', 'clock-names' and 'reset-names'. Both 'clock-names' and
'reset-names' use 'spi' as string so maintain that as const in
the schema.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
Changes in v2:
- Address review comment from Krzysztof:
    - Rebase onto last kernel version.
    - Drop address-cells and size-cells.
    - Explain deviations from the original file in commit message.
    - Drop reset-names as required property.

 .../bindings/spi/ralink,mt7621-spi.yaml       | 61 +++++++++++++++++++
 .../devicetree/bindings/spi/spi-mt7621.txt    | 26 --------
 2 files changed, 61 insertions(+), 26 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-mt7621.txt

diff --git a/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml b/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
new file mode 100644
index 000000000000..22879f7dcb77
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/ralink,mt7621-spi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+maintainers:
+  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
+
+title: Mediatek MT7621/MT7628 SPI controller
+
+allOf:
+  - $ref: /schemas/spi/spi-controller.yaml#
+
+properties:
+  compatible:
+    const: ralink,mt7621-spi
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: spi
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: spi
+
+required:
+  - compatible
+  - reg
+  - resets
+  - "#address-cells"
+  - "#size-cells"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mt7621-clk.h>
+    #include <dt-bindings/reset/mt7621-reset.h>
+
+    spi@b00 {
+      compatible = "ralink,mt7621-spi";
+      reg = <0xb00 0x100>;
+      clocks = <&sysc MT7621_CLK_SPI>;
+      clock-names = "spi";
+      resets = <&sysc MT7621_RST_SPI>;
+      reset-names = "spi";
+
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      pinctrl-names = "default";
+      pinctrl-0 = <&spi_pins>;
+    };
diff --git a/Documentation/devicetree/bindings/spi/spi-mt7621.txt b/Documentation/devicetree/bindings/spi/spi-mt7621.txt
deleted file mode 100644
index d5baec0fa56e..000000000000
--- a/Documentation/devicetree/bindings/spi/spi-mt7621.txt
+++ /dev/null
@@ -1,26 +0,0 @@
-Binding for MTK SPI controller (MT7621 MIPS)
-
-Required properties:
-- compatible: Should be one of the following:
-  - "ralink,mt7621-spi": for mt7621/mt7628/mt7688 platforms
-- #address-cells: should be 1.
-- #size-cells: should be 0.
-- reg: Address and length of the register set for the device
-- resets: phandle to the reset controller asserting this device in
-          reset
-  See ../reset/reset.txt for details.
-
-Optional properties:
-- cs-gpios: see spi-bus.txt.
-
-Example:
-
-- SoC Specific Portion:
-spi0: spi@b00 {
-	compatible = "ralink,mt7621-spi";
-	reg = <0xb00 0x100>;
-	#address-cells = <1>;
-	#size-cells = <0>;
-	resets = <&rstctrl 18>;
-	reset-names = "spi";
-};
-- 
2.25.1

