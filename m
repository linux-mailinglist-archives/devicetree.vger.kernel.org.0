Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A12A22CC2DA
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 17:58:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728901AbgLBQ5j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 11:57:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728166AbgLBQ5j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 11:57:39 -0500
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com [IPv6:2607:f8b0:4864:20::64a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90F62C061A4B
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 08:56:26 -0800 (PST)
Received: by mail-pl1-x64a.google.com with SMTP id 9so1383363plj.10
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 08:56:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=yv6jkOMVVu0NxKOBrd1YDUszNsTB64/IwLRfmacssjI=;
        b=PYM0+hMcoAZzkNbTQczmz7arAkA+YVllnBBKhKWWKcmGpJ1QOp4hhVjf43FBFF9n6S
         ydt8GpmEiSx3PU3+n3Eyjhwwf+3dMLLhl1PkXWbtsAfrW5xaCyJ6WW3WaAWLN6mbLW6+
         RbSPcHO8RyA92KQcn6J8wBjeuR/aMgUvBM9Qy7VHdvXL7R0a50xEFYy3Gntb6PUwBqMp
         NzzfOxvE+LMZNEdaUVBle9ELmAWhwVunHUDUYPYnRxoDGIVwcbSZ5Uea8zfJXuNduU9O
         cNBb62fOlNKhk+WmmrjwgVj5iHO2LPT7TIUWg8MZbxoejwZ70AMTh19mArWU9SWEX0Ia
         VPZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=yv6jkOMVVu0NxKOBrd1YDUszNsTB64/IwLRfmacssjI=;
        b=dCpopNirPA/wRex46RRYuXRwKETT2fn/ND0GCo6uuxqivSUlvMAwaZzqfDCfMjcfDb
         9Un66yQqPcEWb3DSLxK0awi6IQAMw52lu3k5FQY+TBClmPxD4uL/3EUzDk+0aj5JbDk2
         v6Cw53euh0FMrWXKQaDiVUTrQ8H2LAZtiBU4Xbj7uPOrWeyaLxlHsHz96IYH4DHjUGFS
         p4FeHfW4Gklc4E+/46ct2cFelBbKkrPU0wjeEC23C+POLphV4rh4tpa5BumnHHJvzgCb
         Ke8zmAInJL6xWhxHZqzz1015005b1K2r+GBEALhEa37ShZ+8+gJkNX9MGlU6ton0K86R
         Np3Q==
X-Gm-Message-State: AOAM533sH1LJphrFYieuZMJMTDSnZpt1lQp04bRcgj8cDeaiORwgsKVM
        Ugc0wlVuqnJrZYiC8OSAxN/ILWP1Ig==
X-Google-Smtp-Source: ABdhPJyuIA9Ylj0TkFWNUHgFriBZBpWCAwLq6S5wNq15FbwF2qPUczwByvyTGLSSlK1zs2GHSt2GKMIKPg==
Sender: "kunyi via sendgmr" <kunyi@kunyi0.svl.corp.google.com>
X-Received: from kunyi0.svl.corp.google.com ([2620:15c:2c5:3:9657:a5ff:fef2:53bd])
 (user=kunyi job=sendgmr) by 2002:a17:90a:67cf:: with SMTP id
 g15mr723285pjm.24.1606928186050; Wed, 02 Dec 2020 08:56:26 -0800 (PST)
Date:   Wed,  2 Dec 2020 08:56:01 -0800
In-Reply-To: <20201202165601.1532213-1-kunyi@google.com>
Message-Id: <20201202165601.1532213-4-kunyi@google.com>
Mime-Version: 1.0
References: <20201202165601.1532213-1-kunyi@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH linux hwmon-next v4 3/3] dt-bindings: (hwmon/sbtsi_tmep) Add
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
2.29.2.454.gaff20da3a2-goog

