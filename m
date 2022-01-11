Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D32BC48B45C
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 18:49:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344579AbiAKRsz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 12:48:55 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:53858
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1344111AbiAKRst (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jan 2022 12:48:49 -0500
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 970CF406EA
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 17:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641923327;
        bh=KtzaeAS3vHdxLiX+UAOcYpw4x029KYpzx4CNQuL/lKY=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=QqoXNe126LMEbui0jdtl1XY0PTGNk+bQAEt+2X+dsgkPraYGEaH8ODy3nFVpReTRm
         gZxDcxV0m5t+2WLQVHINOjM88Nl78rL1kwcA5mBVBZ8kBJ4on6x3VzE8U0zIRx7Owx
         QRlJuuXBBiNLv7AaHDl6Jik5MFdrFNBekhC6FfqpsN+2Tmola4qBxwJTit2HpMQEC6
         +qy4wI0+u9hDNWQ4BPzLJ7KXgPiHfcavOT2TRQf3TITtWWYKCrmt7iXgcoCXRrO1Vi
         gwwRO6qWiSMUR0Kg4uRayhhya03/gQabXm3I2FFvjb9Px8J1qnwubLztaHT1t2jvv3
         fbHF8/DVmp6Dg==
Received: by mail-ed1-f69.google.com with SMTP id i9-20020a05640242c900b003fe97faab62so4153360edc.9
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 09:48:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KtzaeAS3vHdxLiX+UAOcYpw4x029KYpzx4CNQuL/lKY=;
        b=sAL7s9GJMAAvPZ/DSBJzJj+fPetY6M5iU7gsqm8oP/cGyRlvlUU/FSt7VQjn/o5MIK
         S5dMlDtr4VqsPW2bTxqLTjQE0mgW18tqqwAITbhxVVekkhvG6NrSuq+JFjLfO+bZa++n
         X3lAKmG8Gfmz4Hag9g5ZUK/8Yec3Ny1gDE6c/yOO4KNf/9LJUwx5tdaNUDCznyvBMwBX
         y9NvdUHFcNiIXKXjXqaWqO7bhPFpa0Bcn2cyYuj/gOHEL4C2FuDaJL+mP0AqG81r1mdb
         Ch6pTGX7cs9YKjHJafg19puN7dc4LOYMLrXclg/e/WSOui4dXWn78TnLZ6HkWTe39Pcu
         xayA==
X-Gm-Message-State: AOAM530SOrExM3qDVA7+XNcnSmuGTplOQgJDPX9rt8yj/nsckTcx76mF
        NFO1ep5LjHfSsYM6fyGRtjHmZ/FqQ18X027+e+AHyCW9MiXhSOYgMI/5fzi/TMJnEyjfG4BsXH6
        t22WIwWoj1ifoHCQ3iPcWJMlMClxCGJR5389tDGA=
X-Received: by 2002:a17:907:6da0:: with SMTP id sb32mr4730977ejc.455.1641923327248;
        Tue, 11 Jan 2022 09:48:47 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyOxlUAVlC4YuYQpRipmbsqUYnDmolm/iGG7kaEKNH1SQBIaGmimpIrXXHt3wLrnMj/QIsfRw==
X-Received: by 2002:a17:907:6da0:: with SMTP id sb32mr4730956ejc.455.1641923327047;
        Tue, 11 Jan 2022 09:48:47 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id i23sm5224489edt.93.2022.01.11.09.48.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 09:48:46 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>
Subject: [PATCH v2 2/5] dt-bindings: extcon: maxim,max77843: add MAX77843 bindings
Date:   Tue, 11 Jan 2022 18:48:02 +0100
Message-Id: <20220111174805.223732-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220111174805.223732-1-krzysztof.kozlowski@canonical.com>
References: <20220111174805.223732-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the bindings for MAX77843 MUIC/extcon driver, based on
Exynos5433 TM2 devicetree.  These are neither accurate nor finished
bindings but at least allow parsing existing DTS files.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/extcon/maxim,max77843.yaml       | 40 +++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/extcon/maxim,max77843.yaml

diff --git a/Documentation/devicetree/bindings/extcon/maxim,max77843.yaml b/Documentation/devicetree/bindings/extcon/maxim,max77843.yaml
new file mode 100644
index 000000000000..f9ffe3d6f957
--- /dev/null
+++ b/Documentation/devicetree/bindings/extcon/maxim,max77843.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/extcon/maxim,max77843.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim MAX77843 MicroUSB and Companion Power Management IC Extcon
+
+maintainers:
+  - Chanwoo Choi <cw00.choi@samsung.com>
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+
+description: |
+  This is a part of device tree bindings for Maxim MAX77843 MicroUSB
+  Integrated Circuit (MUIC).
+
+  See also Documentation/devicetree/bindings/mfd/maxim,max77843.yaml for
+  additional information and example.
+
+properties:
+  compatible:
+    const: maxim,max77843-muic
+
+  connector:
+    $ref: /schemas/connector/usb-connector.yaml#
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/port
+    description:
+      Any connector to the data bus of this controller should be modelled using
+      the OF graph bindings specified
+    properties:
+      port:
+        $ref: /schemas/graph.yaml#/properties/port
+
+required:
+  - compatible
+  - connector
+
+additionalProperties: false
-- 
2.32.0

