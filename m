Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8263E3DC84C
	for <lists+devicetree@lfdr.de>; Sat, 31 Jul 2021 23:38:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231774AbhGaVik (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Jul 2021 17:38:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231768AbhGaVij (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Jul 2021 17:38:39 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB02CC0613CF
        for <devicetree@vger.kernel.org>; Sat, 31 Jul 2021 14:38:32 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id z2so25836934lft.1
        for <devicetree@vger.kernel.org>; Sat, 31 Jul 2021 14:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YVpV8/vvaY59r2A1osNnhfzz9lEm81RglXyawlMfFVs=;
        b=uwP00Qp0fTpTjjVrQ+JdVjl/XLYQC60YKVVorf0eEHF4HQbh4U08lHxJp/5EthwAn7
         +2A3xL4PrhZHmczDE8NsbuZc9IZMA4+dT2qgYEndo9b3hoyv1vo7SVlhD5SiqxzXTVqt
         ur59AEo7oCCHcnJhW6wVsmYC7RIyFEiBNYYtQhU9975oJ+q1dz4A+5T9NWX9WFZxc7hb
         HOKH+cmb6BkxKwYiJYWYO7Dv82iMRTn1VRkH8hOc9WBpjXYz2wJP9WLD5+jp0MBI2t85
         b77ohLQ9CBpiUuEFuuFuBuZY62cxU7JTA3CFBLiJp8fnwsnXE5pXLDUF3MDztHS31sqS
         AdUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YVpV8/vvaY59r2A1osNnhfzz9lEm81RglXyawlMfFVs=;
        b=D1yUtSxRUPpTuDlBZetM5cBtzAblplEWSdeqLR0uZNbElAIvNn7yUPENuah3/RDCYf
         Et271XjDdopxVWk4QckWC3y9UNi7EAcYqtKdB1OCj27kKNbtXM/anwnQoZ1G2AIRIpQs
         AWZSjUWJQKSelGCi8RAGYJqVuOkb4kbwKz8jX0mUTmTtKJfEvCg6xvSSAA7e7LS25IHg
         PZM6uHb/6gG6bEr55iAxdFfdJ1JTNLZ4qiHFYlsgN8USB5xQqhezvMcjC8jIzdJZjLOI
         NqCeHsg354/bQluhXtMpx8rSFBu+B8aT0F3rLSARax/twY7jBdQ4q9bIfN4cVt4zF9ir
         xcrg==
X-Gm-Message-State: AOAM530P8gm+Wp8lSmIvecbk8O9Bnbip34OjK9fqeq3/uyOSfqpKBQBR
        rNIvEUf1yf/O/XZpsJFqM0T4rA==
X-Google-Smtp-Source: ABdhPJzLixD4oy8KuFmTMFF3ePfGpisk3L0YN6JPpCHxYJFkrunG0zDFmX8iZ2Nm3FRrmpW4V1PKZA==
X-Received: by 2002:a05:6512:3691:: with SMTP id d17mr2718377lfs.222.1627767511146;
        Sat, 31 Jul 2021 14:38:31 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id t17sm440430ljk.102.2021.07.31.14.38.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jul 2021 14:38:30 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Jens Axboe <axboe@kernel.dk>, linux-ide@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 4/5 v2] pata: ixp4xx: Add DT bindings
Date:   Sat, 31 Jul 2021 23:35:54 +0200
Message-Id: <20210731213555.2965356-4-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210731213555.2965356-1-linus.walleij@linaro.org>
References: <20210731213555.2965356-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds device tree bindings for the Intel IXP4xx compact flash card
interface.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Itemize the registers
- Drop the epansion bus set-up to alleviate warnings
---
 .../ata/intel,ixp4xx-compact-flash.yaml       | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ata/intel,ixp4xx-compact-flash.yaml

diff --git a/Documentation/devicetree/bindings/ata/intel,ixp4xx-compact-flash.yaml b/Documentation/devicetree/bindings/ata/intel,ixp4xx-compact-flash.yaml
new file mode 100644
index 000000000000..52e18600ecff
--- /dev/null
+++ b/Documentation/devicetree/bindings/ata/intel,ixp4xx-compact-flash.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ata/intel,ixp4xx-compact-flash.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intel IXP4xx CompactFlash Card Controller
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |
+  The IXP4xx network processors have a CompactFlash interface that presents
+  a CompactFlash card to the system as a true IDE (parallel ATA) device. The
+  device is always connected to the expansion bus of the IXP4xx SoCs using one
+  or two chip select areas and address translating logic on the board. The
+  node must be placed inside a chip select node on the IXP4xx expansion bus.
+
+properties:
+  compatible:
+    const: intel,ixp4xx-compact-flash
+
+  reg:
+    items:
+      - description: Command interface registers
+      - description: Control interface registers
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+allOf:
+  - $ref: pata-common.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    bus@c4000000 {
+      compatible = "intel,ixp43x-expansion-bus-controller", "syscon";
+      reg = <0xc4000000 0x1000>;
+      native-endian;
+      #address-cells = <2>;
+      #size-cells = <1>;
+      ranges = <0 0x0 0x50000000 0x01000000>, <1 0x0 0x51000000 0x01000000>;
+      dma-ranges = <0 0x0 0x50000000 0x01000000>, <1 0x0 0x51000000 0x01000000>;
+      ide@1,0 {
+        compatible = "intel,ixp4xx-compact-flash";
+        reg = <1 0x00000000 0x1000>, <1 0x00040000 0x1000>;
+        interrupt-parent = <&gpio0>;
+        interrupts = <12 IRQ_TYPE_EDGE_RISING>;
+      };
+    };
+
+...
-- 
2.31.1

