Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8917331609C
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 09:09:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233460AbhBJII5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 03:08:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233410AbhBJIIZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 03:08:25 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C31BAC061756
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 00:07:44 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id g6so1366114wrs.11
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 00:07:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ADCBKNEvDCsXJjSVMo0gh3Ha9p8ktO5jYuFtRysBMF0=;
        b=YQjWY+hxJxeD56cqq89+O+y3MDwbuTakyQLYHodtIrzbPq8PcNsRLO5z6jEf4udjmu
         9ipNyIapLAnvb6vdPjQRv7+BS25p3zD57IpUiX8gYoEp5j7iIfoASJnaTevZ+VY/cq1U
         ZZ24OOieq/HVm2ngAm56Gwx9bRCOakIGJ+raObziF0qDxw8VNQKr7JdSmpCY3YXy/1aQ
         BGtVGf4fxV8sqHgyv3Yx1IYvR3REvuwY0OcN1tSmZmXJo43fJnUfNAR1+72iEAC0328K
         lRNmzIyQfGkI9im1sO2OwzfnfVhvlcXNjqPSNOIhriQ82XHP6cm9OWv6RIl/TiHG8nMP
         yhBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ADCBKNEvDCsXJjSVMo0gh3Ha9p8ktO5jYuFtRysBMF0=;
        b=L9jcDNrQ5He/HkStOHZqqPqYJHyGwQcrAtznHkdoIPa7WssPYyVJh0Kwz1zUB5w+hM
         eRuhzjZbMUL2iXe6/Do4PcgXkCzlmccGiH8vjGky0bztgr6IrMQNqxRz9/uhxo1vbjL5
         F766XQB4P28QIU5nXfX2S6s2c1dN/qY3rPrICiZzHrQZONd9TupZm/jlT+zI4fUupoQo
         5hErf9L9BUS7wvPFureTPklnP1eazCaZ0E7P5DbpKlVWD9Zb0JyrZjX+eC0Z4Grp2c/x
         v+XX09r0yBvpEW6iYVKyqsaem0vbo4E9F7JSZ3vRnisFUDb5217mybQ6N6ydRU4yH77L
         b5OQ==
X-Gm-Message-State: AOAM533huMZ0Iu/uEKRbnIiY2b31zC5aw67loido4pUI1uFVtgpPI0n7
        OtZaZBtIo4xUn98cr75qZoomPw==
X-Google-Smtp-Source: ABdhPJxN7qsejNz3LbGpff6S3f17fETxX5jUqtrZgVWo2AQppiLn4e8WrPCGMJlCsA22dd/fAqA/IQ==
X-Received: by 2002:a5d:47af:: with SMTP id 15mr2171896wrb.205.1612944463308;
        Wed, 10 Feb 2021 00:07:43 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:90c:e290:d403:f5fa:8912:cba5])
        by smtp.gmail.com with ESMTPSA id c18sm12856597wmk.0.2021.02.10.00.07.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Feb 2021 00:07:42 -0800 (PST)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     vkoul@kernel.org, kishon@ti.com, devicetree@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v2 1/2] dt-bindings: phy: add Amlogic G12A Analog MIPI D-PHY bindings
Date:   Wed, 10 Feb 2021 09:07:35 +0100
Message-Id: <20210210080736.771803-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210210080736.771803-1-narmstrong@baylibre.com>
References: <20210210080736.771803-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Amlogic G12A SoCs embeds an Analog MIPI D-PHY to communicate with DSI
panels, this adds the bindings.

This Analog D-PHY works with a separate Digital MIPI D-PHY.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../phy/amlogic,g12a-mipi-dphy-analog.yaml    | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml

diff --git a/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml b/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml
new file mode 100644
index 000000000000..14bb8d78a860
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/amlogic,g12a-mipi-dphy-analog.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic G12A MIPI analog PHY
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+properties:
+  compatible:
+    const: amlogic,g12a-mipi-dphy-analog
+
+  "#phy-cells":
+    const: 0
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@0 {
+          compatible = "amlogic,g12a-mipi-dphy-analog";
+          #phy-cells = <0>;
+          reg = <0>;
+    };
-- 
2.25.1

