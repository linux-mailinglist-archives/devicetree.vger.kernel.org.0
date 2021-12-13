Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C2BE473567
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 20:58:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242664AbhLMT6p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 14:58:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242669AbhLMT6l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 14:58:41 -0500
Received: from mail-wm1-x349.google.com (mail-wm1-x349.google.com [IPv6:2a00:1450:4864:20::349])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66860C06173F
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 11:58:41 -0800 (PST)
Received: by mail-wm1-x349.google.com with SMTP id g81-20020a1c9d54000000b003330e488323so6615700wme.0
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 11:58:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=pyL+iMUMyBYszI38fgaNUchU9lpO/cjF5JBVAbs2Psc=;
        b=Pr3OmbSgymWthgcXfno/NZ9HBzASiSbDdx0Kl551yZq40ZjCtIKpEwhbEAPt233Be1
         EXQrD73LR0R5tpZ7EoKgt3FUHhvjBLb/5D6JtDAtB7+B9Y2UwTEk6PIaIvdKRlfR/KYG
         VcamA7k/mbrz9bzAGpa3vVe3KFr4Clf1BZrnvy7lycKl14trAjQvulfz7pZxXIWS4vX9
         qdcbRnPzRiv/e91Kl7/Mm4f22v1Ng0ICgFwqOm8T6b4PrY/QOlkkEUqVgI4tfzlx6ogQ
         3HnMrVUS1kDnD0SyFAvWYVSi2PQGufTr4d4NatsBl/Y/GsPR17EmTL+q/5wgEiwJT6UZ
         dkOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=pyL+iMUMyBYszI38fgaNUchU9lpO/cjF5JBVAbs2Psc=;
        b=nFUo2nFI5eQr1p8DLSsXZX2xn2DZuox9MJr5WBtHjTUOpSRF2wUxwRg2k06movjmU2
         gkET0Dd+KFqptnO+l3qzAXwvXtqQq7m7QRApEMAkK60JhUPrwtpdffkoKq3wn+UGRME/
         cjhuyv2tpygc9x18DlvCemg6zX8d5hxploHWe6wCWJKgTpoC5hiRo1spCrqvIyBltOkv
         Ayx9gQMmgz9tMpfwWwjs7JV3U3oUR7GnSq2sdfLx71k/vOjN9PoHyDTK6F1CpPwg+eM5
         e4jo+VAsnHk7/BJo5zisG1Ld1aIJJkb13tCYxyd7RKCbt+RZEjwbgQ6jrqpETfTJJEn6
         jJzw==
X-Gm-Message-State: AOAM532zyXNTMlSYcWgfBK0j4fO4FEydFagQFTF7uxoA7+zrWriAG5MO
        LfpqYtb/9rsmVWGxu2A+Z6iZ/e7FCMqUTQ==
X-Google-Smtp-Source: ABdhPJzqMzJNcZmAFPJ/0COn/XXVoozQS4i5JzpnhE3b6SgLvLiznKVC2fLwaChX4GT1O0raRSyeluki0jsGvw==
X-Received: from dbrazdil.lon.corp.google.com ([2a00:79e0:d:209:3e63:6f60:9fab:4549])
 (user=dbrazdil job=sendgmr) by 2002:a1c:80c5:: with SMTP id
 b188mr983487wmd.57.1639425519803; Mon, 13 Dec 2021 11:58:39 -0800 (PST)
Date:   Mon, 13 Dec 2021 19:58:32 +0000
In-Reply-To: <20211213195833.772892-1-dbrazdil@google.com>
Message-Id: <20211213195833.772892-2-dbrazdil@google.com>
Mime-Version: 1.0
References: <20211213195833.772892-1-dbrazdil@google.com>
X-Mailer: git-send-email 2.34.1.173.g76aa8bc2d0-goog
Subject: [PATCH v3 1/2] dt-bindings: firmware: Add Open Profile for DICE
From:   David Brazdil <dbrazdil@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        David Brazdil <dbrazdil@google.com>,
        Will Deacon <will@kernel.org>,
        Andrew Scull <ascull@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DeviceTree bindings for Open Profile for DICE, an open protocol for
measured boot. Firmware uses DICE to measure the hardware/software
combination and generates Compound Device Identifier (CDI) certificates.
These are stored in memory and the buffer is described in the DT as
a reserved memory region referenced by a compatible device node.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 .../bindings/firmware/google,open-dice.yaml   | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/google,open-dice.yaml

diff --git a/Documentation/devicetree/bindings/firmware/google,open-dice.yaml b/Documentation/devicetree/bindings/firmware/google,open-dice.yaml
new file mode 100644
index 000000000000..1aa69f381b8c
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/google,open-dice.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/google,open-dice.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Open Profile for DICE Device Tree Bindings
+
+description: |
+  This binding represents a reserved memory region containing data
+  generated by the Open Profile for DICE protocol.
+
+  See https://pigweed.googlesource.com/open-dice/
+
+maintainers:
+  - David Brazdil <dbrazdil@google.com>
+
+properties:
+  compatible:
+    enum:
+      - google,open-dice
+
+  memory-region:
+    maxItems: 1
+    description: |
+      phandle to the reserved memory node to be associated with the device
+      The reserved memory node should be defined as per the bindings,
+      Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml
+
+required:
+  - compatible
+  - memory-region
+
+additionalProperties: false
+
+examples:
+  - |
+    reserved-memory {
+        #address-cells = <2>;
+        #size-cells = <1>;
+
+        dice_reserved: dice@12340000 {
+            reg = <0x00 0x12340000 0x2000>;
+            no-map;
+        };
+    };
+
+    dice {
+        compatible = "google,open-dice";
+        memory-region = <&dice_reserved>;
+    };
-- 
2.34.1.173.g76aa8bc2d0-goog

