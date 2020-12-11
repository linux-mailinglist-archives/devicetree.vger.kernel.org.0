Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A6452D8161
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 22:57:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392273AbgLKV4c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Dec 2020 16:56:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406668AbgLKVz7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Dec 2020 16:55:59 -0500
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com [IPv6:2607:f8b0:4864:20::54a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CACF7C061285
        for <devicetree@vger.kernel.org>; Fri, 11 Dec 2020 13:54:41 -0800 (PST)
Received: by mail-pg1-x54a.google.com with SMTP id j30so7430559pgj.17
        for <devicetree@vger.kernel.org>; Fri, 11 Dec 2020 13:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=Rd2S5ERIdpxDDi+uhK9cbjd0vF+3SVBwWriC0JcpU0w=;
        b=gcJ3yqiJW+gv6J7pXNellIYo6U1XVjhUnAoDf0KYKfq8Z48dh+sC5vdboDhaA2v7dc
         TKPgf+FFKcXPFTbfqrq3TZp01YbZ147AAU0vwFHu8SfF2JhCRMLpGdxGICdULZXprzIq
         IMZL836rPQhkRoipkuUo31PvlOYVa8pUzX+n9sl6YngFpIAVx79gvPRp4Lx5FSu5AJmG
         sCq5Ip77METDR0YTxE6GT9fvcLTLai4M7/mZdFkFyMW1SD+19yBv+BYHks232/kn5p9D
         SMKLWXUc3ZgueHEpv2jAFW16BYFIAtV2wa0G1NykSQM9veoT26ODprUixchAnkEjKgEj
         j/ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=Rd2S5ERIdpxDDi+uhK9cbjd0vF+3SVBwWriC0JcpU0w=;
        b=U1MizVCTYdgmIea0I/pEwvYat15/hTbzKEqQIEIkyDCW7CznZBfUEb+62sfyOYWRiz
         LmDHXbT5KqtSQWkGpGl146JrQ+37PaJ0EHGQRe+oSnE5A4nSuyDCmsrDKD8le3G34imD
         hXpv+9ZmvOC6lCWcWCrmYBSBh6vS82i2XHG5W7/LJIEhFpXPeIZzsevljg4Y+hZq47Zi
         Jmk54PmRu6mCMRDMWcwF5W+E1SHiRP2n1xedNFOfGngsjMivc2SATFA6GBLqnGH5iiIk
         DUdFZcmV3aRRfrv9SoBuvqtEPFZyugRLK5GtcjuaJMzxkyGIvmhcyXwGAoXmrvVpQsvD
         fa0g==
X-Gm-Message-State: AOAM531Dy+L/5/C2/8tuATelkG1vKS8IXHHi53Rr4aR/+ViWNMW0m1uT
        JpnAeSKhri0x9dzrwlttDm1K4j0BHA==
X-Google-Smtp-Source: ABdhPJxUhEx4SmtYdScxsFigf7h0fO4fVDEuEiEtJX/93EAJekijNmsU2fzEHRMav02QofkK1LRhvKb0Gw==
Sender: "kunyi via sendgmr" <kunyi@kunyi0.svl.corp.google.com>
X-Received: from kunyi0.svl.corp.google.com ([2620:15c:2c5:3:9657:a5ff:fef2:53bd])
 (user=kunyi job=sendgmr) by 2002:a17:90a:4dcd:: with SMTP id
 r13mr14803802pjl.74.1607723681302; Fri, 11 Dec 2020 13:54:41 -0800 (PST)
Date:   Fri, 11 Dec 2020 13:54:27 -0800
In-Reply-To: <20201211215427.3281681-1-kunyi@google.com>
Message-Id: <20201211215427.3281681-4-kunyi@google.com>
Mime-Version: 1.0
References: <20201211215427.3281681-1-kunyi@google.com>
X-Mailer: git-send-email 2.29.2.684.gfbc64c5ab5-goog
Subject: [PATCH linux hwmon-next v5 3/3] dt-bindings: (hwmon/sbtsi_tmep) Add
 SB-TSI hwmon driver bindings
From:   Kun Yi <kunyi@google.com>
To:     jdelvare@suse.com, linux@roeck-us.net, robh+dt@kernel.org,
        mark.rutland@arm.com, supreeth.venkatesh@amd.com
Cc:     Kun Yi <kunyi@google.com>, openbmc@lists.ozlabs.org,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document device tree bindings for AMD SB-TSI emulated temperature
sensor.

Signed-off-by: Kun Yi <kunyi@google.com>
---
 .../devicetree/bindings/hwmon/amd,sbtsi.yaml  | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/amd,sbtsi.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/amd,sbtsi.yaml b/Documentation/devicetree/bindings/hwmon/amd,sbtsi.yaml
new file mode 100644
index 000000000000..446b09f1ce94
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/amd,sbtsi.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/amd,sbtsi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: >
+  Sideband interface Temperature Sensor Interface (SB-TSI) compliant
+  AMD SoC temperature device
+
+maintainers:
+  - Kun Yi <kunyi@google.com>
+  - Supreeth Venkatesh <supreeth.venkatesh@amd.com>
+
+description: |
+  SB Temperature Sensor Interface (SB-TSI) is an SMBus compatible
+  interface that reports AMD SoC's Ttcl (normalized temperature),
+  and resembles a typical 8-pin remote temperature sensor's I2C interface
+  to BMC. The emulated thermal sensor can report temperatures in increments
+  of 0.125 degrees, ranging from 0 to 255.875.
+
+properties:
+  compatible:
+    enum:
+      - amd,sbtsi
+
+  reg:
+    maxItems: 1
+    description: |
+      I2C bus address of the device as specified in Section 6.3.1 of the
+      SoC register reference. The SB-TSI address is normally 98h for socket
+      0 and 90h for socket 1, but it could vary based on hardware address
+      select pins.
+      \[open source SoC register reference\]
+        https://www.amd.com/system/files/TechDocs/56255_OSRR.pdf
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c0 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        sbtsi@4c {
+                compatible = "amd,sbtsi";
+                reg = <0x4c>;
+        };
+    };
+...
-- 
2.29.2.684.gfbc64c5ab5-goog

