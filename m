Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 82E337DCEF
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 15:56:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730623AbfHAN4w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Aug 2019 09:56:52 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:37617 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730524AbfHAN4v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Aug 2019 09:56:51 -0400
Received: by mail-wm1-f66.google.com with SMTP id f17so63272740wme.2
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2019 06:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pSLblDT1YKW8Afz4DjDElhvTYG2p3Mxb+10IzzVXgtY=;
        b=ucI0/5rQdHTSxdJdYemT9PDdqOARI3UUZkH6O0xd7g8wM48+t9yXTvlgzxD7g2R24E
         lLZ78/XiwJfnNa4MJ/OafucujFyV0Gn8lJdLGwKq2RtOXvAdBzALsB1rgo+xHG6LwGwI
         s3L8u9aycO26fTsHxnIx/tf/eEnkyL+/5JkWmb21o3/C6biyg0lSjXjwlNJXC3eieNIn
         xOcItVB3gKdG6VaHVj2t5pL5GohWo3w3FUZS1t1121B9Jkc90ujqeHaLnMc/Le2XM1A1
         vdDhE5iexQkHFXsLrhBHx+sS4Ua7LDUlN7QtVRZcj7VPVxOD075d4wHK8VxxA9tKVqJG
         O+2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pSLblDT1YKW8Afz4DjDElhvTYG2p3Mxb+10IzzVXgtY=;
        b=YOCoDGTsJYTAvQaSlbsbx3pxxDN6zY7DssQ9pGXGEu26zgxdmukNz3BaB1QyrVIKyX
         OuRuxTaJ5aRjNAts5xnLdJJ/Pb0xaSFS2iJ8grOLlDwZStzRXdoDNE7HduQTyzNLtNiK
         bAwsQ117lzxTE5JGyQkqLuIHbn83RuxkCvPd5n1UievD1bVChnCdK3B/SWuIB7lLi4lf
         OgOOIXyr9ZkXy8Alc34Ag5rb2wYKFkuMqVZMRHPNHBu7gY8SXJEuhiok2KVcFyaLa4Om
         2KS67tjoBIXCg9Qz6ed7xJpufINlkk56znipJ0rFzEflB6x8vsGUzjboYjgas940ed6d
         TbIQ==
X-Gm-Message-State: APjAAAXM2rtPeMrtIYqaWm2fyOnFZZfoB7vEh42daWIV8VTWXBHpsU0V
        cVohsPjtQO66/jDSw4icDHM5Yg==
X-Google-Smtp-Source: APXvYqxXU06So5Pals1RaZnKSyC27tttAB15Zd1eoyj2ze5k4q4HC26blumIHYeeqBiyLih9oLDmgA==
X-Received: by 2002:a1c:6a17:: with SMTP id f23mr54493426wmc.91.1564667808925;
        Thu, 01 Aug 2019 06:56:48 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id u6sm69659952wml.9.2019.08.01.06.56.48
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 01 Aug 2019 06:56:48 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        jassisinghbrar@gmail.com
Subject: [RFC 1/9] dt-bindings: mailbox: meson-mhu: convert to yaml
Date:   Thu,  1 Aug 2019 15:56:36 +0200
Message-Id: <20190801135644.12843-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190801135644.12843-1-narmstrong@baylibre.com>
References: <20190801135644.12843-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../devicetree/bindings/mailbox/meson-mhu.txt | 34 ------------
 .../bindings/mailbox/meson-mhu.yaml           | 53 +++++++++++++++++++
 2 files changed, 53 insertions(+), 34 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mailbox/meson-mhu.txt
 create mode 100644 Documentation/devicetree/bindings/mailbox/meson-mhu.yaml

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
diff --git a/Documentation/devicetree/bindings/mailbox/meson-mhu.yaml b/Documentation/devicetree/bindings/mailbox/meson-mhu.yaml
new file mode 100644
index 000000000000..b84c4c05e176
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/meson-mhu.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/mailbox/meson-mhu.yaml#"
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
-- 
2.22.0

