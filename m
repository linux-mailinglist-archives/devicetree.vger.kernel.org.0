Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E56156B85C
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 13:24:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237683AbiGHLYA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jul 2022 07:24:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237469AbiGHLX7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jul 2022 07:23:59 -0400
Received: from mail-wr1-x449.google.com (mail-wr1-x449.google.com [IPv6:2a00:1450:4864:20::449])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEAED8737B
        for <devicetree@vger.kernel.org>; Fri,  8 Jul 2022 04:23:58 -0700 (PDT)
Received: by mail-wr1-x449.google.com with SMTP id i9-20020adfa509000000b0021d865ce5e3so870407wrb.6
        for <devicetree@vger.kernel.org>; Fri, 08 Jul 2022 04:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=syuU6hHKkMyzySl7opH6TLKAl/ic71oCS/pfUZCKirM=;
        b=q4liB10By1JBdyRpZaXMMZ7SYOmpFNUBN5GuqBkAdqL2wFyTFHQKNKrUv4tm+/F9IV
         xmFTXr9gXTUrunUFzsDDqAbcbA+cnKsDU9ckROLSHxNJOhg/MaayKGGyrzi59CX834dz
         pXJB8phvCyRBo+uQ9LQTWjJhK7Xwdrhn9OFMjWu7tRxiPNe6Fw+6eNqyaAKKF/zCp/Ch
         pqVE7IrUP2LpQ57eR47+1ya2w85y4CCllYZDGZQd9QgBC8tmsdK6Qkan3IHSNuq8YrFB
         +dgGz4CMfFM5pBLKJABjc//f0AUP4r4XEOssYALmKAkyuvsvwAiEq6OWyz3wuFdRk0B7
         /O9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=syuU6hHKkMyzySl7opH6TLKAl/ic71oCS/pfUZCKirM=;
        b=doEyecOXXKUkJZTnb/aGyNnzxjvbxF/MnMZHfb3oACJmLPvBFynA77qsnXFBltFhNx
         tk3eHprqsOxAe++RlFdyvtdEYENm+1tyhK5Yoj7dsjxGUQXYpNNDtjMF+nav+lUpPBB+
         UJ5Xgsu3k29utiHB8cMm36QdycMgo9akE7vf0mL7mefpF4x3cVBDeSGqjbc+r9N9FGua
         //uQItWPzPyTxGHNNDc41iaeLTNbl/MeGB+NHzqndTdJIcgcve0++8A9TjxZ9gT0tkOf
         67QR7N13D7HuNpMMnTXkPM2tTSOHqIgBu/Vpn1Ag4hsYslRpWsKsgSxtLWrz9xDcw1KI
         jN6w==
X-Gm-Message-State: AJIora8Dh2YzpuTc4xS1ihPiasMSTj0D4+6MXhTEHwFTNXWNIc4I9oZE
        R8GwNOlldQ9W8ARK7ZK5Mu3Zx554JJLfQ9PSu6c=
X-Google-Smtp-Source: AGRyM1tVkIynFw1Givu/TxIsfdqo9S7fQpmBUcmVRSxsMcobLaCQK9k7aYjrDcGRxLBGNvlBIsw7ZHm2FVb5WG2QWM0=
X-Received: from seb.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:31bd])
 (user=sebastianene job=sendgmr) by 2002:a05:600c:34ce:b0:3a0:3240:92ca with
 SMTP id d14-20020a05600c34ce00b003a0324092camr9909067wmq.130.1657279437503;
 Fri, 08 Jul 2022 04:23:57 -0700 (PDT)
Date:   Fri,  8 Jul 2022 11:23:44 +0000
In-Reply-To: <20220708112344.1965947-1-sebastianene@google.com>
Message-Id: <20220708112344.1965947-2-sebastianene@google.com>
Mime-Version: 1.0
References: <20220708112344.1965947-1-sebastianene@google.com>
X-Mailer: git-send-email 2.37.0.rc0.161.g10f37bed90-goog
Subject: [PATCH v11 1/2] dt-bindings: vcpu_stall_detector: Add
 qemu,vcpu-stall-detector compatible
From:   Sebastian Ene <sebastianene@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        maz@kernel.org, will@kernel.org, vdonnefort@google.com,
        Guenter Roeck <linux@roeck-us.net>,
        Sebastian Ene <sebastianene@google.com>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The VCPU stall detection mechanism allows to configure the expiration
duration and the internal counter clock frequency measured in Hz.
Add these properties in the schema.

While this is a memory mapped virtual device, it is expected to be loaded
when the DT contains the compatible: "qemu,vcpu-stall-detector" node.
In a protected VM we trust the generated DT nodes and we don't rely on
the host to present the hardware peripherals.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sebastian Ene <sebastianene@google.com>
---
 .../misc/qemu,vcpu-stall-detector.yaml        | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml

diff --git a/Documentation/devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml b/Documentation/devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml
new file mode 100644
index 000000000000..1aebeb696ee0
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/misc/qemu,vcpu-stall-detector.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: VCPU stall detector
+
+description:
+  This binding describes a CPU stall detector mechanism for virtual CPUs
+  which is accessed through MMIO.
+
+maintainers:
+  - Sebastian Ene <sebastianene@google.com>
+
+properties:
+  compatible:
+    enum:
+      - qemu,vcpu-stall-detector
+
+  reg:
+    maxItems: 1
+
+  clock-frequency:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      The internal clock of the stall detector peripheral measure in Hz used
+      to decrement its internal counter register on each tick.
+      Defaults to 10 if unset.
+    default: 10
+
+  timeout-sec:
+    description: |
+      The stall detector expiration timeout measured in seconds.
+      Defaults to 8 if unset. Please note that it also takes into account the
+      time spent while the VCPU is not running.
+    default: 8
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    vmwdt@9030000 {
+      compatible = "qemu,vcpu-stall-detector";
+      reg = <0x9030000 0x10000>;
+      clock-frequency = <10>;
+      timeout-sec = <8>;
+    };
-- 
2.37.0.rc0.161.g10f37bed90-goog

