Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5DCFE7DCF1
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 15:56:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730522AbfHAN4w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Aug 2019 09:56:52 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:40314 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727537AbfHAN4v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Aug 2019 09:56:51 -0400
Received: by mail-wm1-f68.google.com with SMTP id v19so63322340wmj.5
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2019 06:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Z7STkVMB2yHisZ/usmwoT4spFS0I17AFPosoUf8jAdk=;
        b=U15Iw1p89hmo5WXozzc/nhfNJVjS1XzA0Mm3OOLSK62P3Y6V+jLEe5O3vHlbOjlryd
         JA7hs0OJrR6dGqvcMZeR8QPmiN1xElgTeYs5IjbKb2h7CpMqyF+QRGpi7pvb8h7qHQPt
         dGqoTNVAAWkSwIO0ERnDXdZo+5rhObEfiRwVsckLWQOiO4ZrmVvJaElD8u/ojM+OZGd6
         FsDpsE5MORMbqCB8IFVl/RnGxCTFu3s28aK/a4T8Jr8YgEGv5GeO5UJZH1TzSWofsVgr
         BkUotmgGMoVqC9pbiZUXBe4o1HIVfLHbtWQa45s2CTMj14OHy+GbDE4bwO7gsDK9pD7q
         gtrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Z7STkVMB2yHisZ/usmwoT4spFS0I17AFPosoUf8jAdk=;
        b=GgrGJ1Iw0hrLl467sZP2CcJ7jxZQX6v0/FIyO9kRJUllkUs1VhSUARtw9GxWtM+GTA
         rlbTDGue1Kbay7nEPaiBrn/c6mNWXPjcVgbXjtH2v7cIEEpf5AcZyvYoHpI2Eis16cDv
         fJPPFToFdkMtkBmh2Ei1XtXpUGaVIXly4zBlMHw0+WT4Jz/6oUE8Iq1vwqYfD3Jjnt2D
         KkMujuErQ2qnApXQi7kNMpNsQWY4MNsND2kqcm+6EihklCon4C2XAz2ynKKUgJkJjx72
         UWIa4hQIVhjav9AMtlJUlBkRxipEmPp3CtAy256FvAtE4Da+vs2ov4BxNbpM/1wlv0EI
         4Zkw==
X-Gm-Message-State: APjAAAWCgvnng8/HxBiqwKHS5Segr9jtqosUph3AhJLQhcxrgR510JKr
        /T9gafnaIu3bOzD9MW8hrytdBg==
X-Google-Smtp-Source: APXvYqw44gd7s3l3amDGcR8npMDPP6OHyZ0Okn4ToukORt9MValWm04W6roItzITY9/GWLZtLsug6g==
X-Received: by 2002:a1c:7ec7:: with SMTP id z190mr114407950wmc.17.1564667809578;
        Thu, 01 Aug 2019 06:56:49 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id u6sm69659952wml.9.2019.08.01.06.56.48
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 01 Aug 2019 06:56:49 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org, linux-crypto@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [RFC 2/9] dt-bindings: rng: amlogic,meson-rng: convert to yaml
Date:   Thu,  1 Aug 2019 15:56:37 +0200
Message-Id: <20190801135644.12843-3-narmstrong@baylibre.com>
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
 .../bindings/rng/amlogic,meson-rng.txt        | 21 -----------
 .../bindings/rng/amlogic,meson-rng.yaml       | 37 +++++++++++++++++++
 2 files changed, 37 insertions(+), 21 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rng/amlogic,meson-rng.txt
 create mode 100644 Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml

diff --git a/Documentation/devicetree/bindings/rng/amlogic,meson-rng.txt b/Documentation/devicetree/bindings/rng/amlogic,meson-rng.txt
deleted file mode 100644
index 4d403645ac9b..000000000000
--- a/Documentation/devicetree/bindings/rng/amlogic,meson-rng.txt
+++ /dev/null
@@ -1,21 +0,0 @@
-Amlogic Meson Random number generator
-=====================================
-
-Required properties:
-
-- compatible : should be "amlogic,meson-rng"
-- reg : Specifies base physical address and size of the registers.
-
-Optional properties:
-
-- clocks : phandle to the following named clocks
-- clock-names: Name of core clock, must be "core"
-
-Example:
-
-rng {
-	compatible = "amlogic,meson-rng";
-	reg = <0x0 0xc8834000 0x0 0x4>;
-	clocks = <&clkc CLKID_RNG0>;
-	clock-names = "core";
-};
diff --git a/Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml b/Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml
new file mode 100644
index 000000000000..a9ff3cb35c5e
--- /dev/null
+++ b/Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/rng/amlogic,meson-rng.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson Random number generator
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-rng
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: core
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    rng@c8834000 {
+          compatible = "amlogic,meson-rng";
+          reg = <0xc8834000 0x4>;
+    };
-- 
2.22.0

