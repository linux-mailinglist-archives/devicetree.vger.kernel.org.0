Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6194E5635F5
	for <lists+devicetree@lfdr.de>; Fri,  1 Jul 2022 16:42:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232781AbiGAOlQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Jul 2022 10:41:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233620AbiGAOlB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Jul 2022 10:41:01 -0400
Received: from mail-wm1-x349.google.com (mail-wm1-x349.google.com [IPv6:2a00:1450:4864:20::349])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 777F7DEAB
        for <devicetree@vger.kernel.org>; Fri,  1 Jul 2022 07:40:27 -0700 (PDT)
Received: by mail-wm1-x349.google.com with SMTP id n18-20020a05600c501200b003a050cc39a0so1098485wmr.7
        for <devicetree@vger.kernel.org>; Fri, 01 Jul 2022 07:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=5yoOjCuxWXXLSKjOheMfZYUlzX6XssbQmvDDk/evZBs=;
        b=ILT/H+B0J/vk4yYqk9rM6rgWmWlfQXyjzHxKsRQwxAGUyuTx5dyeLqI7Kw2OSfESDJ
         MWDQ562efWqZzJ2N+6L8BFFXMcvtd0dSAHzwTteZTyq0M9zLXE06+NwOzB4d1auh0qAD
         hHvZ6H0O2uHTzArJaJlliGq3RdudjRkxoi8uHnU7lJvOcp0SzmaipRK+cSykhYAxQuDq
         wdXW/WX66NtbAKPZGifaT8/gti8tu2hZmBGrYR7uH0uLRK9g+BZIon9Ur/i6hGBOe9Lk
         s8CfYU5G7pf1YEayEMi+vDuZks4cm9Rr1kBVAFDwXWUIn+HA8szGkU4dGfWBgXJAxdgY
         ogKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=5yoOjCuxWXXLSKjOheMfZYUlzX6XssbQmvDDk/evZBs=;
        b=xtKiVqhDl2fAM+OCR5ORJgwobxw4yllirWJdswJIx2SVW48KG3T8l7qu/KCZy3DGm/
         wL+cNu0D/m1AwdSVWRxBRpf7lJOYmmrsB/A2PFxMw/RqHfW2AeTeeSpgQe51d0KAt7yD
         oSwhRuonpxb7tW9nkw4J+jXChAWGT2lUs/Nh2TmvwRKf3DQcGLDpw0kPuh0B/pa+G3zX
         Otb07kSv5qwDpwPVJf6WCpMmDnrbdYlHuooS35krIll0cerDKKzuKIeyXliq8JpSzb0g
         3m8FoEg+79jJrvkFD6tfcb64Ao6/WOSQqr258mP0SYG63OebS61S3B+ryZ2XUWWmZz5R
         fazg==
X-Gm-Message-State: AJIora9qSM3uNGHbiWn+ST1plSJsCeYN3H4wIdtvleImZmBFinoHoox2
        5OcFX6G9mt75Clv9YQTidYH5pZO5aHD8eWDhIDA=
X-Google-Smtp-Source: AGRyM1voWdrDnSCypoh62tIcR1IqsuXteiJ0xHTsf2hgoCY5vxrM2QLMK/bSqCT5nQeQMEmdyAlKYTTNbtAYRadfDcM=
X-Received: from sene.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:27c4])
 (user=sebastianene job=sendgmr) by 2002:a7b:c314:0:b0:3a0:5750:1b4a with SMTP
 id k20-20020a7bc314000000b003a057501b4amr18356915wmj.20.1656686426033; Fri,
 01 Jul 2022 07:40:26 -0700 (PDT)
Date:   Fri,  1 Jul 2022 14:40:13 +0000
In-Reply-To: <20220701144013.1085272-1-sebastianene@google.com>
Message-Id: <20220701144013.1085272-2-sebastianene@google.com>
Mime-Version: 1.0
References: <20220701144013.1085272-1-sebastianene@google.com>
X-Mailer: git-send-email 2.37.0.rc0.161.g10f37bed90-goog
Subject: [PATCH v9 1/2] dt-bindings: vcpu_stall_detector: Add
 qemu,vcpu-stall-detector compatible
From:   Sebastian Ene <sebastianene@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        maz@kernel.org, will@kernel.org, vdonnefort@google.com,
        Guenter Roeck <linux@roeck-us.net>,
        Sebastian Ene <sebastianene@google.com>
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

