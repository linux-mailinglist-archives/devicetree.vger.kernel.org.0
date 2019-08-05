Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 57C26818B4
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 14:03:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727349AbfHEMD3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 08:03:29 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:35711 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728455AbfHEMD2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 08:03:28 -0400
Received: by mail-wr1-f67.google.com with SMTP id y4so84160931wrm.2
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 05:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Y9sKG2U7XCHY9N45/XGVAYDqTVfRZ5wagMI5lIUYmMc=;
        b=epA4UV4EgezeHzNn4PeRLlLbsYa9NR4F8yaH6ofs3Mt0Dx9Uj0VwZ4HJsJbeX/DYMH
         /uGazRtMLTcGZCP2gbV2HlksCG1/4+2EE2pVZLjMHhI9vKmTq1bIJQCIY90nZlBX4+ZQ
         0fpuroWX8/inOD0X9y6YJ5/1f016EBHq1QIaM/zN47aA6Z6aUgA/VyyUysXHtdHIV7KO
         WlxUcZ9CCGPSizt8MsubXYf36zS5793erBOl86Rv9WTjnr8jVcqvhlevq/1/hqedanHT
         l2Nfgo093Zx43kH4YgGnQktNGrXhym2xGajx9nPyvn0GScBebSryn6ISxu5HsDHvRcw+
         oLNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Y9sKG2U7XCHY9N45/XGVAYDqTVfRZ5wagMI5lIUYmMc=;
        b=iGm1EYC0v+wEWS+5G4Om7Rp+gaDN1ngj+2b8u3Xqvvr/9mVRqxWC4+sNfbUloKhODS
         JxAibrQ/Ml7sAYyPd1PnPvK00PW+nH5frZpqOlokH7xGQuW58Ge4GhLpCd/AuqeyCIv4
         8J9qFibpSk83ZIISR5aWdZjwyK4fQNUKLkWGU2BnaxU1cVZPHBBsNOYmyrqsaYwVPxDc
         HYM8lpYk4vv9s0uzcoUUr6nNq3G2QZYYfqWVW8BAkU+7msTHEfdwJ1qoY8qHPbXoPOHw
         SIcIiWS2YcB8lzY5HqTMI257CmsY8gCijNG0i7C6nr2Ls02N8fgoMlybZWaCCl5MciLA
         +Tyw==
X-Gm-Message-State: APjAAAVy8bpjuZIAElt5174R+r64B0cz2h1lq/FU1G6VGfi2XE9/7lKr
        HnbNN/26YTvAgSM8ckMLeSZvow==
X-Google-Smtp-Source: APXvYqw3OD05u4AblrcjmCcYW/Bk5y/c3rSjEQEnj4ecStOu5l9vedoHEuUMqP9qe4bkr2QEfRACgA==
X-Received: by 2002:adf:dd51:: with SMTP id u17mr10783185wrm.218.1565006606374;
        Mon, 05 Aug 2019 05:03:26 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id x6sm88683668wrt.63.2019.08.05.05.03.25
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 05 Aug 2019 05:03:25 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        jassisinghbrar@gmail.com
Subject: [RFCv2 1/9] dt-bindings: mailbox: meson-mhu: convert to yaml
Date:   Mon,  5 Aug 2019 14:03:12 +0200
Message-Id: <20190805120320.32282-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190805120320.32282-1-narmstrong@baylibre.com>
References: <20190805120320.32282-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic MHU controller over to a YAML schemas.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../mailbox/amlogic,meson-gxbb-mhu.yaml       | 53 +++++++++++++++++++
 .../devicetree/bindings/mailbox/meson-mhu.txt | 34 ------------
 2 files changed, 53 insertions(+), 34 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml
 delete mode 100644 Documentation/devicetree/bindings/mailbox/meson-mhu.txt

diff --git a/Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml b/Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml
new file mode 100644
index 000000000000..2536a0082cff
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/mailbox/amlogic,meson-gxbb-mhu.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson Message-Handling-Unit Controller
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+description: |
+  The Amlogic's Meson SoCs Message-Handling-Unit (MHU) is a mailbox controller
+  that has 3 independent channels/links to communicate with remote processor(s).
+  MHU links are hardwired on a platform. A link raises interrupt for any
+  received data. However, there is no specified way of knowing if the sent
+  data has been read by the remote. This driver assumes the sender polls
+  STAT register and the remote clears it after having read the data.
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-gxbb-mhu
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 3
+    maxItems: 3
+    description:
+      Contains the interrupt information corresponding to each of the 3 links
+      of MHU.
+
+  "#mbox-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#mbox-cells"
+
+examples:
+  - |
+    mailbox@c883c404 {
+          compatible = "amlogic,meson-gxbb-mhu";
+          reg = <0xc883c404 0x4c>;
+          interrupts = <208>, <209>, <210>;
+          #mbox-cells = <1>;
+    };
+
diff --git a/Documentation/devicetree/bindings/mailbox/meson-mhu.txt b/Documentation/devicetree/bindings/mailbox/meson-mhu.txt
deleted file mode 100644
index a530310772b9..000000000000
--- a/Documentation/devicetree/bindings/mailbox/meson-mhu.txt
+++ /dev/null
@@ -1,34 +0,0 @@
-Amlogic Meson MHU Mailbox Driver
-================================
-
-The Amlogic's Meson SoCs Message-Handling-Unit (MHU) is a mailbox controller
-that has 3 independent channels/links to communicate with remote processor(s).
-MHU links are hardwired on a platform. A link raises interrupt for any
-received data. However, there is no specified way of knowing if the sent
-data has been read by the remote. This driver assumes the sender polls
-STAT register and the remote clears it after having read the data.
-
-Mailbox Device Node:
-====================
-
-Required properties:
---------------------
-- compatible:		Shall be "amlogic,meson-gxbb-mhu"
-- reg:			Contains the mailbox register address range (base
-			address and length)
-- #mbox-cells		Shall be 1 - the index of the channel needed.
-- interrupts:		Contains the interrupt information corresponding to
-			each of the 2 links of MHU.
-
-Example:
---------
-
-	mailbox: mailbox@c883c404 {
-		#mbox-cells = <1>;
-		compatible = "amlogic,meson-gxbb-mhu";
-		reg = <0 0xc883c404 0 0x4c>;
-		interrupts = <0 208 IRQ_TYPE_EDGE_RISING>,
-			     <0 209 IRQ_TYPE_EDGE_RISING>,
-			     <0 210 IRQ_TYPE_EDGE_RISING>;
-		#mbox-cells = <1>;
-	};
-- 
2.22.0

