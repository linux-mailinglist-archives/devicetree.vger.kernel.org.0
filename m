Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C704354DE27
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 11:28:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358507AbiFPJ2J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 05:28:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232254AbiFPJ2I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 05:28:08 -0400
Received: from mail-wr1-x449.google.com (mail-wr1-x449.google.com [IPv6:2a00:1450:4864:20::449])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2ECD712AD8
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 02:28:03 -0700 (PDT)
Received: by mail-wr1-x449.google.com with SMTP id ay4-20020a5d6f04000000b002183e363f9bso142200wrb.22
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 02:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=1US4ipP4yJiU7A6OGZd0Asu0Q0XiNeHCX3Q6kDfh5U0=;
        b=rkjeg6RzT4J90BHSluI8KX4QcffgtXJbeCtRKfmkre+JXLudYR4VRgH4/f/sAtKP24
         gCvaL7uTHvaolQ1vI0ecJAxHl297gGL0c/9oBzo/ne6cBzWpYmVg+dm+ur0lWR1KEPSV
         nXQg3OZBmMCOssO5lBoP+IjCi4k8Clf/1f14iTlh4nxjDRT5ILERmepDp59hga/dGZj3
         jxctvT0izLS4PnwBgxxhSNdVKMOWw710Lr2Z/MBeCCneQVgdcFwJqnGVIMzbAWyzWe9H
         Pq1/D9Hb3cJ6ZalBqzfRcykZW9lr7hxuLPPj9g+JpNSZTiFoqLpUfOeqY6BCMaf1k3LZ
         3ESQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=1US4ipP4yJiU7A6OGZd0Asu0Q0XiNeHCX3Q6kDfh5U0=;
        b=oLPkfQ0VdP3/A0/cf10+e1oEVX1vWQ3vD3dhYyr/OJNPzLsIMsYsrzGrvoVUoFHDrT
         UUUCPjPeV3ZCBH5CdILYqST8ZXnz1Z0MbnfjZlrQCtrScFMobQ1SxTCZpq/QLIGtHt8R
         GVxQFtxWACnhYtyGUn4NuAsD0eSfU4fcbO7lv2Z5fLetlp3dkSNDaTpPU16qtcRudqoD
         ei9F4HcIwGW9Ky9SSQEOAOXWo4BlOFqfIJq0hgiD5lviI2segEvxuClXhxzusE+rjjGs
         WtM1ifCzjHm1DAtaW0rgZDvMOxHV/KhLVmK7Gy+OxJXAaX1xzIRWQaqX1eqRai8kyGPc
         RxEQ==
X-Gm-Message-State: AJIora+LGkZBYOJQqLm19SYujD/lMCKg56gL1AE86wUnXKGV5oiz3hRh
        4IhtVcYOKG9Zqg7cY8NWOV40tosvdIm2QLCTAis=
X-Google-Smtp-Source: AGRyM1vHrrC6U3tAYQLJBOexb6K9wgagt9bPjSyCNwxbZQFj8ruuBint847mczEy1+pjxi9txGiK5JSS2QKRFLbN5Tg=
X-Received: from sene.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:27c4])
 (user=sebastianene job=sendgmr) by 2002:a5d:4dc9:0:b0:215:c611:db73 with SMTP
 id f9-20020a5d4dc9000000b00215c611db73mr3886585wru.551.1655371682085; Thu, 16
 Jun 2022 02:28:02 -0700 (PDT)
Date:   Thu, 16 Jun 2022 09:27:38 +0000
In-Reply-To: <20220616092737.1713667-1-sebastianene@google.com>
Message-Id: <20220616092737.1713667-2-sebastianene@google.com>
Mime-Version: 1.0
References: <20220616092737.1713667-1-sebastianene@google.com>
X-Mailer: git-send-email 2.36.1.476.g0c4daa206d-goog
Subject: [PATCH v6 1/2] dt-bindings: vcpu_stall_detector: Add
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
 .../bindings/misc/vcpu_stall_detector.yaml    | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/vcpu_stall_detector.yaml

diff --git a/Documentation/devicetree/bindings/misc/vcpu_stall_detector.yaml b/Documentation/devicetree/bindings/misc/vcpu_stall_detector.yaml
new file mode 100644
index 000000000000..55323676194b
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/vcpu_stall_detector.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/misc/vcpu_stall_detector.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: VCPU stall detector
+
+description: |
+  This binding describes a CPU stall detector mechanism for virtual cpus
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
+  clock-frequency:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      The internal clock of the stall detector peripheral measure in Hz used
+      to decrement its internal counter register on each tick.
+      Defaults to 10 if unset.
+
+  timeout-sec:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      The stall detector expiration timeout measured in seconds.
+      Defaults to 8 if unset. Please note that it also takes into account the
+      time spent while the VCPU is not running.
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
+      clock-frequency = <10>;
+      timeout-sec = <8>;
+      reg = <0x0 0x9030000 0x0 0x10000>;
+    };
+
+...
-- 
2.36.1.476.g0c4daa206d-goog

