Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F24A9A2103
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2019 18:36:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727794AbfH2Qgj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Aug 2019 12:36:39 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:46176 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727344AbfH2Qgi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Aug 2019 12:36:38 -0400
Received: by mail-wr1-f66.google.com with SMTP id h7so2779177wrt.13
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2019 09:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ut1fjj8eBNR1pFtqlRw5Uf5pteRExaUZGDi9IpjspkU=;
        b=xHp80GcndzmNY8JJ7lMxSaKD+/5XoNzTgtOH5k1hm+r5JTxyG1X/vI8KHTJsQtI1Cv
         1P3IC9kBfniaetDTJpmUVPdlwJewmUnvMNdH6qVj452oTqiE97E9MokPeFaUiAEDQNHY
         dL0L92xr8e6ymkb0HYv7xPdBhikI0vBXNBVdeIzyIKlDlNbgcEnWQOa63KgskLBBh+ZW
         zHySJdwOi9lvV+/CFsdnRTwLpZnBcLNSF5aaY2L68JQ9Ak1nDMvGy/bPE1QEP6BItGhl
         /kC0tuIGqnxXILzpq2sq6keWnzFzgrxFV9AMY+zTgvKAH2s2kjN1+q8TvOeh8zN0szvb
         IFIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ut1fjj8eBNR1pFtqlRw5Uf5pteRExaUZGDi9IpjspkU=;
        b=q6NjiHmQVnIL1Rnn32RnAzTPuL/PJ5TshFQvQL5Suk7ykeQ5DUU45L0CwsTwU+EKcC
         Sfj7323RyAH2tcy5flPYgUt4oNHuDUyITUYbkOVBAsz/uCA01VEeoS4vC2snKm3kZVsk
         ayB763Ins5TIEU+/zi6N59zTFH1oaA4Bs1izXM+cqQyI+FDzLjtVHWi3CF2xaEdc2ewE
         kyKqIRXIY1HOfR/nX//zTKUhKJfh+Twa3e1VNvSbLk1aX14q7XURJvo5pHTYeT3XvVy3
         JJ3C1lk4jr1cVB4/fYqA/d+e8HBaH/lkTc0e3MHePMAEfdatnt1ZuUk7oFxvmYtvqgea
         fWGA==
X-Gm-Message-State: APjAAAWcsqeFV3kqyR7PZzKlRucBlbLz2eKCgHEQPGDbhAWhEFZsIh5X
        JV/sSeQiyO+9RH9oLdSDfsdppk2fz+Y=
X-Google-Smtp-Source: APXvYqyg/29G3TEDvhJuP3sZOsleGXRe9357VR2GoR5BLQzNlObtZnEIk8orjsWHqLCNbzzds2BbAA==
X-Received: by 2002:a5d:4b8c:: with SMTP id b12mr13543767wrt.26.1567096597086;
        Thu, 29 Aug 2019 09:36:37 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id k9sm4398243wrq.15.2019.08.29.09.36.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 09:36:35 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, robh+dt@kernel.org, vkoul@kernel.org
Cc:     spapothi@codeaurora.org, bgoswami@codeaurora.org,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v6 1/4] dt-bindings: soundwire: add slave bindings
Date:   Thu, 29 Aug 2019 17:35:11 +0100
Message-Id: <20190829163514.11221-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190829163514.11221-1-srinivas.kandagatla@linaro.org>
References: <20190829163514.11221-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds bindings for Soundwire Slave devices that includes how
SoundWire enumeration address and Link ID are used to represented in
SoundWire slave device tree nodes.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../soundwire/soundwire-controller.yaml       | 82 +++++++++++++++++++
 1 file changed, 82 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soundwire/soundwire-controller.yaml

diff --git a/Documentation/devicetree/bindings/soundwire/soundwire-controller.yaml b/Documentation/devicetree/bindings/soundwire/soundwire-controller.yaml
new file mode 100644
index 000000000000..1b43993bccdb
--- /dev/null
+++ b/Documentation/devicetree/bindings/soundwire/soundwire-controller.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soundwire/soundwire-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SoundWire Controller Generic Binding
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+  - Vinod Koul <vkoul@kernel.org>
+
+description: |
+  SoundWire busses can be described with a node for the SoundWire controller
+  device and a set of child nodes for each SoundWire slave on the bus.
+
+properties:
+  $nodename:
+    pattern: "^soundwire(@.*)?$"
+
+  "#address-cells":
+    const: 2
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^.*@[0-9a-f],[0-9a-f]$":
+    type: object
+
+    properties:
+      compatible:
+        pattern: "^sdw[0-9a-f]{1}[0-9a-f]{4}[0-9a-f]{4}[0-9a-f]{2}$"
+        description: Is the textual representation of SoundWire Enumeration
+          address. compatible string should contain SoundWire Version ID,
+          Manufacturer ID, Part ID and Class ID in order and shall be in
+          lower-case hexadecimal with leading zeroes.
+          Valid sizes of these fields are
+          Version ID is 1 nibble, number '0x1' represents SoundWire 1.0
+          and '0x2' represents SoundWire 1.1 and so on.
+          MFD is 4 nibbles
+          PID is 4 nibbles
+          CID is 2 nibbles
+          More Information on detail of encoding of these fields can be
+          found in MIPI Alliance DisCo & SoundWire 1.0 Specifications.
+
+      reg:
+        maxItems: 1
+        description:
+          Link ID followed by Instance ID of SoundWire Device Address.
+
+    required:
+      - compatible
+      - reg
+
+required:
+  - "#address-cells"
+  - "#size-cells"
+
+examples:
+  - |
+    soundwire@c2d0000 {
+        #address-cells = <2>;
+        #size-cells = <0>;
+        reg = <0x0c2d0000 0x2000>;
+
+        speaker@0,1 {
+            compatible = "sdw10217201000";
+            reg = <0 1>;
+            powerdown-gpios = <&wcdpinctrl 2 0>;
+            #thermal-sensor-cells = <0>;
+        };
+
+        speaker@0,2 {
+            compatible = "sdw10217201000";
+            reg = <0 2>;
+            powerdown-gpios = <&wcdpinctrl 2 0>;
+            #thermal-sensor-cells = <0>;
+        };
+    };
+
+...
-- 
2.21.0

