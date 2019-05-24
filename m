Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1728929C14
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 18:22:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390258AbfEXQWi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 12:22:38 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:44304 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389079AbfEXQWi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 12:22:38 -0400
Received: by mail-lj1-f196.google.com with SMTP id e13so9141190ljl.11
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 09:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CAbrTVrDd+vquw7c4UOJK7pyKOUo+ZWe2OOzzUZ1h+M=;
        b=RRFAbk1/fn6fqVdBDHZv41/1rP4KjDX9MQeZVdh8NwYyLAFLfy0skr1ChyqpbY+K5G
         No/o5iVpmSmFyklKX2LhnjRC4ST4qRTFE5kiFA3A8bpzt7R2qK5Kt35wVM+sTH98lsa4
         DwiOxsxS8p18KonDHsq4slei1wMNcoGQyk/8SaXCm8ib5pomXkq/2lbkLzZYGH8kmrPc
         Fc4T2tNEVlc30enZN1nHCMyhFZoS2TklS0eAQif4WGaVOBulaGFOAO7oD9ihX6P8IOtb
         pxJRm06c/fU/Iq1T8h21rgJmNxqPHfSy9Y4bsUKQm2p0ahwzsHDz/syimvD1/HEfPCxL
         AlHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CAbrTVrDd+vquw7c4UOJK7pyKOUo+ZWe2OOzzUZ1h+M=;
        b=Yz69ckbaM8JLUkF9tnq11taUAHQDluB2OqcpGoi3rG5PMgt4KarcqiNyu/2K7+vjPG
         AEvg6NRgxDnMYig8pxkeK9bqHa4hTXPEgIhaLvBHS/lgyi357bTTtSDRWjwxhG9LpPSm
         FFwgeCMSxEhjsn6MM+KXg7zql+0P6d18XbzvOfYvBGPzFumGRIs2a91nRb1x4k8y89DN
         hsDtMkamzJfTRp7JyqXJx7LriaHXafRqZxdNLDXMefggD1hTEqa2kJfo9hgoLaV5ET8i
         mMduv0Os8J7mAThmMAAITwYj8q5yJgiGdcde8wqAF4TvbGl7ee9jnd4i8F7TBuX4b6cx
         IKaA==
X-Gm-Message-State: APjAAAWdRUUqs7in3fhVbuC2vf+mj2IpnO4xo9qakeSYrX6Wsq7/jmPj
        aPsOWB/BVLxSK+8BGZ5cfZ2M5A==
X-Google-Smtp-Source: APXvYqwy5NkOc80dinOLqXFCZ8/kRPvO3QyaNJOiz2pAzMq0eUz0RXeO65cYVIHSM8BvUDQAxq3yNw==
X-Received: by 2002:a2e:2bd7:: with SMTP id r84mr21075134ljr.91.1558714956035;
        Fri, 24 May 2019 09:22:36 -0700 (PDT)
Received: from localhost.bredbandsbolaget (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
        by smtp.gmail.com with ESMTPSA id v20sm702466lfe.11.2019.05.24.09.22.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 24 May 2019 09:22:34 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>
Cc:     Krzysztof Halasa <khalasa@piap.pl>, devicetree@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 7/8] net: ethernet: ixp4xx: Add DT bindings
Date:   Fri, 24 May 2019 18:22:29 +0200
Message-Id: <20190524162229.9185-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds device tree bindings for the IXP4xx ethernet.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../bindings/net/intel,ixp4xx-ethernet.yaml   | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.yaml

diff --git a/Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.yaml b/Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.yaml
new file mode 100644
index 000000000000..4575a7e5aa4a
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2018 Linaro Ltd.
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/net/intel-ixp4xx-ethernet.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Intel IXP4xx ethernet
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |
+  The Intel IXP4xx ethernet makes use of the IXP4xx NPE (Network
+  Processing Engine) and the IXP4xx Queue Mangager to process
+  the ethernet frames. It can optionally contain an MDIO bus to
+  talk to PHYs.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+        - const: intel,ixp4xx-ethernet
+
+  reg:
+    maxItems: 1
+    description: Ethernet MMIO address range
+
+  queue-rx:
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    maxItems: 1
+    description: phandle to the RX queue on the NPE
+
+  queue-txready:
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    maxItems: 1
+    description: phandle to the TX READY queue on the NPE
+
+required:
+  - compatible
+  - reg
+  - queue-rx
+  - queue-txready
+
+examples:
+  - |
+    ethernet@c8009000 {
+        compatible = "intel,ixp4xx-ethernet";
+        reg = <0xc8009000 0x1000>;
+        status = "disabled";
+        queue-rx = <&qmgr 3>;
+        queue-txready = <&qmgr 20>;
+    };
-- 
2.20.1

