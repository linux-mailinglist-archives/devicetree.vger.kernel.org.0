Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8666785D4D
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 10:51:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731470AbfHHIvq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 04:51:46 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:54387 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731065AbfHHIvp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 04:51:45 -0400
Received: by mail-wm1-f66.google.com with SMTP id p74so1556286wme.4
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 01:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iW8tzeW7K0TPMYVtNZdzd/BRQ9VMD3jctm1FJGUZeSM=;
        b=U+1rSrOSBAVwD2xV5Wqi+JubfpOPj7BbfwOVl91eeioasasSohXj0vW+ehDEK6KX3g
         Apdr+8S9ShNA595Q/B7krCYRpiZ+SANfFtT+iy1Wzx2/Dqy3MHVIse3xg+DUXzSINhx9
         ZsLt6go7c7nyDTUViZqBCWaMQzo9gKUsDIi7wrS2UjoQMupj0pcBJf+8cKReAx0f2S9G
         m4ChFZYE74tC5/1A4e632qACSUVjcYfwrjj6Qm5Qvx/yx82YGYhhbDszrho/2fZJewRs
         43mOEHH8iPUniFsBMAGjoUdE85OvQ4HIYzMpCHriLN6goCvgTxhFMPZdQLPXtu4XcNhH
         Do9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iW8tzeW7K0TPMYVtNZdzd/BRQ9VMD3jctm1FJGUZeSM=;
        b=HiE6uA71dGxu7wFhTynVcq2g7bJvp7PYWfwX3gv241fgteHIXd9WIFjd0+1Q3P0iFH
         8HzgwU9JKvEu6w9hKCYHrvql5xhZpVMcZQt0hOvtEt1HtQ9UhD5GF8qNS5Pig1HHYvTY
         oJEUJX3047ITuFz2i7QafsdHBdO3vYzuxoOE7HCXlGpJdw0xKwxWajqaM5U7z1AC8FNZ
         0AB1cmlXbTr94FHIyjFplHlwZqWGiSx5ljs01Ar/KVg8GfKDYSR0NG6Ol9n/fTOO/W8s
         MoJ5RRrYmeU6Zq/6L0YmtBN09l0ZcJgYLYWosmNt8YZPWdbZwXe42PUev0Cd2PPsMH19
         IUtQ==
X-Gm-Message-State: APjAAAWIuBYPLjl7UjM8KhbZBLgKTOOZEBO7bT151qTvcDLfK8bCFNmO
        pEwL91e6k3p8w6lMFYes8xb1tQ==
X-Google-Smtp-Source: APXvYqxipG2kq0TWG7IP2yB2Dl9cz+yOGXnxw5hiCz4BM9W6aT6q0uSUV3H23Nad3CaZixRu55Cbug==
X-Received: by 2002:a1c:f914:: with SMTP id x20mr3170113wmh.142.1565254302735;
        Thu, 08 Aug 2019 01:51:42 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id i66sm3360031wmi.11.2019.08.08.01.51.42
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 01:51:42 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        jassisinghbrar@gmail.com, Rob Herring <robh@kernel.org>
Subject: [PATCH 1/9] dt-bindings: mailbox: meson-mhu: convert to yaml
Date:   Thu,  8 Aug 2019 10:51:31 +0200
Message-Id: <20190808085139.21438-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808085139.21438-1-narmstrong@baylibre.com>
References: <20190808085139.21438-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic MHU controller over to a YAML schemas.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../mailbox/amlogic,meson-gxbb-mhu.yaml       | 52 +++++++++++++++++++
 .../devicetree/bindings/mailbox/meson-mhu.txt | 34 ------------
 2 files changed, 52 insertions(+), 34 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml
 delete mode 100644 Documentation/devicetree/bindings/mailbox/meson-mhu.txt

diff --git a/Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml b/Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml
new file mode 100644
index 000000000000..319280563648
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml
@@ -0,0 +1,52 @@
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

