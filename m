Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECCF85BDC2C
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 07:16:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229652AbiITFQZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 01:16:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229546AbiITFQX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 01:16:23 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E50784B0D2
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 22:16:21 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id z6so2432568wrq.1
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 22:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=NHRgm29Le8iu9nvn+rnc4QlUDNLlR20YAjmk4HmegVw=;
        b=LqRWapZ3OD8ujRG6GF9z5HU6YDrQIgGFEp1LCRcPYxjEAdbPhXLsu29nNu8rwaKmTn
         9q+HzK7nMYI8YQll+gF0aGxeRCmB2N6KrP/qKeqBdiFQLKUI3mr7FBUfYFJNMJg3Tzuy
         iA32UWS9fi0iNuB6xvEg6bsQH5IL5eNslNNt0krIwZYzVpjHzAeel9ZJiEgN3CE4ImfE
         9Otxo47hhRLhLT6vJJ/dPSZgzKoQ+DSJNyC3iNbL3boRitDns0eKEy83n4c3HURwXnG+
         u39Dpv0KTg403uc261r5vOzufNaUkOKYxJBxT1biPii3hanLSY19tukYN70+71jNAxlt
         LyJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=NHRgm29Le8iu9nvn+rnc4QlUDNLlR20YAjmk4HmegVw=;
        b=QGZEGOv2CnBB50UZRMQR2UXZpEYySFd6gmHHX0qOUcpk2w+1jA7uUmjAI7MRs/4AD6
         IvzDHOLEG39yHugRfYwG8mElZz3A6a438EyMSVBhxY1HNGSPuJHVa1XVW+viB8tVIFcr
         45i77jelGtynrUlNrtf8wgptDVpqmkgYgj7rXtW4NmLSZ6Hm0JeusZRSwnJUQLg6BX2Y
         EpaSshURtCfMw5udjO0kyXmTr7LpskAC7nZ06mvaZR3EoFd0b4EZn66ykYwuvUCAYnvp
         mB3kCgBnwKN2zT6UqI3za9EZqDyEzeADcsLFRiurLcYSheQ/Iz/q+iG06LxP5/IOEUq5
         EZVQ==
X-Gm-Message-State: ACrzQf1CEUyvmxtLKwZkE+WrPLSvo1Q8LeKnJynDo+r0h1SnvmDVy8p2
        bOXN9Kxv8oWFEu5sluuhpE7r28Uy3xTgUw==
X-Google-Smtp-Source: AMsMyM7qUwzKLUwA/+CtqJdXtF4iQv9jh8w+WZpzq251X2LdKsrWIoBzqgdRkWzn4KYwI9Q6Uqcq3w==
X-Received: by 2002:a5d:4284:0:b0:22a:291e:fa8f with SMTP id k4-20020a5d4284000000b0022a291efa8fmr12864318wrq.553.1663650980044;
        Mon, 19 Sep 2022 22:16:20 -0700 (PDT)
Received: from localhost.localdomain (188.red-88-10-59.dynamicip.rima-tde.net. [88.10.59.188])
        by smtp.gmail.com with ESMTPSA id b17-20020a5d6351000000b0022ac672654dsm443965wrw.58.2022.09.19.22.16.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 22:16:19 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, arinc.unal@arinc9.com,
        sr@denx.de, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: watchdog: migrate mt7621 text bindings to YAML
Date:   Tue, 20 Sep 2022 07:16:17 +0200
Message-Id: <20220920051617.582025-1-sergio.paracuellos@gmail.com>
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

Soc Mt7621 Watchdog bindings used text format, so migrate them to YAML.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
Changes in v2:
- Rebase onto last kernel version.
- Add Krzysztof Reviewed-by tag.

 .../watchdog/mediatek,mt7621-wdt.yaml         | 33 +++++++++++++++++++
 .../bindings/watchdog/mt7621-wdt.txt          | 12 -------
 2 files changed, 33 insertions(+), 12 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/watchdog/mediatek,mt7621-wdt.yaml
 delete mode 100644 Documentation/devicetree/bindings/watchdog/mt7621-wdt.txt

diff --git a/Documentation/devicetree/bindings/watchdog/mediatek,mt7621-wdt.yaml b/Documentation/devicetree/bindings/watchdog/mediatek,mt7621-wdt.yaml
new file mode 100644
index 000000000000..b2b17fdf4e39
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/mediatek,mt7621-wdt.yaml
@@ -0,0 +1,33 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/mediatek,mt7621-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Ralink Watchdog Timers
+
+maintainers:
+  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
+
+allOf:
+  - $ref: watchdog.yaml#
+
+properties:
+  compatible:
+    const: mediatek,mt7621-wdt
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    watchdog@100 {
+      compatible = "mediatek,mt7621-wdt";
+      reg = <0x100 0x100>;
+    };
diff --git a/Documentation/devicetree/bindings/watchdog/mt7621-wdt.txt b/Documentation/devicetree/bindings/watchdog/mt7621-wdt.txt
deleted file mode 100644
index c15ef0ef609f..000000000000
--- a/Documentation/devicetree/bindings/watchdog/mt7621-wdt.txt
+++ /dev/null
@@ -1,12 +0,0 @@
-Ralink Watchdog Timers
-
-Required properties:
-- compatible: must be "mediatek,mt7621-wdt"
-- reg: physical base address of the controller and length of the register range
-
-Example:
-
-	watchdog@100 {
-		compatible = "mediatek,mt7621-wdt";
-		reg = <0x100 0x10>;
-	};
-- 
2.25.1

