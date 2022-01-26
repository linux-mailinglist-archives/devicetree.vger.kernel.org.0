Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36C5949D5FA
	for <lists+devicetree@lfdr.de>; Thu, 27 Jan 2022 00:13:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233019AbiAZXMz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 18:12:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233218AbiAZXMz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jan 2022 18:12:55 -0500
Received: from mail-wr1-x449.google.com (mail-wr1-x449.google.com [IPv6:2a00:1450:4864:20::449])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A031C061749
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 15:12:54 -0800 (PST)
Received: by mail-wr1-x449.google.com with SMTP id b3-20020a5d4b83000000b001d676462248so263751wrt.17
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 15:12:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=sw/3yITQaa2AI87O7smfBOiWG12oWUzPV7X0KBcd7nk=;
        b=BUsie+AXwt7AWpY9TnHNZeIiyXHyQbqfkwIHzGrhFTBME5i3WqC4AhEpN0QrKhePz8
         oN5+d4TWoIM3pQGBs/WOxhmKn2QTVg9Bbv/jydyhatTZjl4+MGJXuSgg/pNKVkmV68WZ
         5ykuX/mWFbFHFihLfpWCXDJzP9MydnZ6miL5YZlDPdS+/72FCFW8vTe20igyekIvcPv1
         AdGW2iETcQk0g6BF9vzbW9fQFNI+Bxg4c7ct+vUJFN0ekMZpuQTWdS8xcNuLaLCF6351
         Ut1CGYowO16eiz/1jpVIQar4AhFStMKjG/FBSbAsA0ClSmFlH0i7HBmTjuxJxhcKHnjC
         qx4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=sw/3yITQaa2AI87O7smfBOiWG12oWUzPV7X0KBcd7nk=;
        b=BCza9NjIgoq2WLM1vXugLTyOcop46WCBxQg7quJFqhJDV0c9Nejd78SQh1dakdbDwf
         w2FST8QrU5iIDUCKLw9BMoroKk+HCCg38dsczoqS3/tf+tacck1hycRf+o0tyyk/ElPc
         27WyBrKV/yNKMqasdcEZPcl1HOKbt8dI+5uQE7mzWJxXeDrjU+9dcOjfxRrrlCT8s4m1
         wjustu6B2UpuQoJkDnxsdNEgKR8uV5OWRDlnKeME47oeHBtv3MGXQBx9UCOUHyS667B9
         tdRQC/ZO82fPAYutl52Ccw5M7AWq+loYGB2MbY/tPskURn41JOn0LbxTeB2WZZp3IPmb
         LZCw==
X-Gm-Message-State: AOAM532yMRkAcPoqOtbydxoLRX+dx45dyqFEn+FzSyCCu+zZFnl44n6X
        8aLYJQIyKvs+nFY/N6HJVv084uet9bxdmw==
X-Google-Smtp-Source: ABdhPJyBPaSI9+WP8jN2fbeMWC9uetOno56Gd95R4SghhzY2jtECOKhrp5yPSmXzxXBe+UYvC6hdSCo4XutxAg==
X-Received: from dbrazdil.lon.corp.google.com ([2a00:79e0:d:209:bd2e:4d3b:b065:fa46])
 (user=dbrazdil job=sendgmr) by 2002:a1c:a5d2:: with SMTP id
 o201mr809207wme.82.1643238773138; Wed, 26 Jan 2022 15:12:53 -0800 (PST)
Date:   Wed, 26 Jan 2022 23:12:36 +0000
In-Reply-To: <20220126231237.529308-1-dbrazdil@google.com>
Message-Id: <20220126231237.529308-2-dbrazdil@google.com>
Mime-Version: 1.0
References: <20220126231237.529308-1-dbrazdil@google.com>
X-Mailer: git-send-email 2.35.0.rc0.227.g00780c9af4-goog
Subject: [PATCH v7 1/2] dt-bindings: reserved-memory: Open Profile for DICE
From:   David Brazdil <dbrazdil@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Frank Rowand <frowand.list@gmail.com>,
        David Brazdil <dbrazdil@google.com>,
        Will Deacon <will@kernel.org>,
        Andrew Scull <ascull@google.com>,
        Wedson Almeida Filho <wedsonaf@google.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DeviceTree bindings for Open Profile for DICE, an open protocol for
measured boot. Firmware uses DICE to measure the hardware/software
combination and generates Compound Device Identifier (CDI) certificates.
These are stored in memory and the buffer is described in the DT as
a reserved memory region compatible with 'google,open-dice'.

'no-map' is required to ensure the memory region is never treated by
the kernel as system memory.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 .../reserved-memory/google,open-dice.yaml     | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/google,open-dice.yaml

diff --git a/Documentation/devicetree/bindings/reserved-memory/google,open-dice.yaml b/Documentation/devicetree/bindings/reserved-memory/google,open-dice.yaml
new file mode 100644
index 000000000000..257a0b51994a
--- /dev/null
+++ b/Documentation/devicetree/bindings/reserved-memory/google,open-dice.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reserved-memory/google,open-dice.yaml#
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
+allOf:
+  - $ref: "reserved-memory.yaml"
+
+properties:
+  compatible:
+    const: google,open-dice
+
+  reg:
+    description: page-aligned region of memory containing DICE data
+
+required:
+  - compatible
+  - reg
+  - no-map
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    reserved-memory {
+        #address-cells = <2>;
+        #size-cells = <1>;
+
+        dice: dice@12340000 {
+            compatible = "google,open-dice";
+            reg = <0x00 0x12340000 0x2000>;
+            no-map;
+        };
+    };
-- 
2.35.0.rc0.227.g00780c9af4-goog

