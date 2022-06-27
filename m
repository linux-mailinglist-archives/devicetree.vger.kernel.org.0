Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5353F55D00B
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:07:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233857AbiF0K2d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 06:28:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbiF0K2c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 06:28:32 -0400
Received: from mail-wm1-x34a.google.com (mail-wm1-x34a.google.com [IPv6:2a00:1450:4864:20::34a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFABE60FF
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 03:28:31 -0700 (PDT)
Received: by mail-wm1-x34a.google.com with SMTP id j31-20020a05600c1c1f00b0039c481c4664so3379025wms.7
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 03:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=5yoOjCuxWXXLSKjOheMfZYUlzX6XssbQmvDDk/evZBs=;
        b=T+ZoH9BiG7ejFpyT99dcXqkAnMFezpeDUaKtR2HF7IBJZ8zeHqiw7fasMX3IbVlgm4
         iafSIU9+Ovnl02W+FHqO3dJlLJBfj7NzPULglX5lZci59ht+ts2AQWXJnxRtcdrQ6RQ6
         ThhGgkXLP22PuVA+R9GLoy6gN9Y30Z372VCgkc08+RUNXcz+da6cMc1+Rges3239IN/W
         igToaKzElYxK811q9Pgk0AK8xPBsjoGBJtlA0gO1um7yVEKngx02uOiTJhOPJJx2K40K
         nZYwqU4FU2ClDWJNieTbbc2Q4JC4bKepV1cUSpl83nSeplccpZjKkAsJm2WalXE4x57N
         5uJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=5yoOjCuxWXXLSKjOheMfZYUlzX6XssbQmvDDk/evZBs=;
        b=eH8hlaAJKoWWLKDSjJu+rvaTjZO14Ilb/Eaji8jpQCtrwm5Fp81htmZdC+YDplQFZJ
         5Ygu8Cq8Cumnn1OHZx3AJVa17Y9KvXZBkwq0zx4KYnghRWpIvcP1fDaNU9GTHBnIxeWJ
         M3ig5EAW80P3qUan0aPwSIEwr5PGZvsRPuhRf5Dt1cP20gAc/a6o3qfctIR1v/u70Dm6
         qe2mBVp8ao+klgUpuUxGNrkYMLcKyppR7JPVmYEKfAHYRF4fcVKgDwo29gncIHXH69oS
         3LFNWn8ofn7m278b7Nrw11l01tJrllXQEKZri/BrqwnvwAnJmvTeUSTiEa3X2LFVfCHd
         EIbw==
X-Gm-Message-State: AJIora+5EjdbjbLWyM6HFPko8pP0KgAik0ZkO7lsvs+X7FPVt8W/jEy9
        3P9rJa/NkDay7tfpwA9fyoQOnWTTrlKVTyFYf4M=
X-Google-Smtp-Source: AGRyM1uixuGkpvZhhnFWALR4JaK6Q6IadJyqT4NA2OE2UH6hdeMCAfjRfnvN4u20zoYsaffGITCFvRiW7bBHpAH1UuA=
X-Received: from sene.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:27c4])
 (user=sebastianene job=sendgmr) by 2002:a05:600c:a14c:b0:3a0:4ddc:f710 with
 SMTP id ib12-20020a05600ca14c00b003a04ddcf710mr1164186wmb.38.1656325710439;
 Mon, 27 Jun 2022 03:28:30 -0700 (PDT)
Date:   Mon, 27 Jun 2022 10:28:11 +0000
In-Reply-To: <20220627102810.1811311-1-sebastianene@google.com>
Message-Id: <20220627102810.1811311-2-sebastianene@google.com>
Mime-Version: 1.0
References: <20220627102810.1811311-1-sebastianene@google.com>
X-Mailer: git-send-email 2.37.0.rc0.161.g10f37bed90-goog
Subject: [PATCH v8 1/2] dt-bindings: vcpu_stall_detector: Add
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
        autolearn=unavailable autolearn_force=no version=3.4.6
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

