Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C2A9785505
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 12:11:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233363AbjHWKL4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 06:11:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234396AbjHWITk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 04:19:40 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB2563A97
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 01:15:14 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-52a069edca6so4195777a12.3
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 01:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692778513; x=1693383313;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XmrY7GQ2ZmU1Y6/4QT60GHEf7jmYt1E4LHJ/Pbf7whQ=;
        b=EpMLVcOTGZqveKGbAuLVEPgbej8ivmGXuWFDLivjS26RkUHKt2nLP4Przg6x+uNdYN
         IY/ZpXeZsLVtTvG9u/xiIRzy8VEf7dTFijbBeWMp3TK0X6D8v2y1S5zjUQRuTN6FfuA7
         9rx09NaC0yI3T+jzzYAk4heEbH8lqw4FUByOFZMQAlcD0qI0BfCiOm57xxDe8mQzhcEe
         xfFyB9+Hid+Tpzr7BBPocy2GEvwLgQQKYS87tltK4rtYWf+KXnTg4Ctmg0cgU9dwOqUw
         QdOgEFO92DEA8wOrincf5WHJ3mzEqHJmxYMe7O9DiGaZithpdmeqhCTfKNhNh64Uzu+c
         xslw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692778513; x=1693383313;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XmrY7GQ2ZmU1Y6/4QT60GHEf7jmYt1E4LHJ/Pbf7whQ=;
        b=Q0PpshZGmTRO3kxwTcFqaHFB1liNjmjPzkKn/5ZKhWlzemAYnDW5LRa7g1gqAT1Ql0
         jkjGU0XcY3uzMKVyBQgYxMPvo/17GVP7AbnaDaeWT0DimJEgiSmp+q1N/FRXvVkwFZDE
         hAveWKOnyLsZHX3tS0sdzqbITs5gpApj/aocOfvPZO64sMRbXtYXrAeePtROCG27cpRI
         hDkPT5VOw9HI370VXvwKUro4SuKneZgEuwwastX0mPO+XRkxxipmrtdTP5sQWZsScd2/
         cUOT/41iWr+PGrsIHT9h8wpvHkqorcW1dzzfOuaUMyw2OIoRLOR7yXhs2g6CugLHxaZ0
         wdXQ==
X-Gm-Message-State: AOJu0YweVby1QGhNYY1TcSvaRKPSshSaVkz8YGiUh3fftRfGXphbFwEs
        fOAEzSJiCLrBMrLwAnufgVAdzA==
X-Google-Smtp-Source: AGHT+IFTIG0ewo2lFsWWkU4AVFpjs9a7khJlWa2e43Ubalk/rJaATZ5e92WLTd1q2ikXfONtAWwMCw==
X-Received: by 2002:a17:907:20f0:b0:99e:1201:48bc with SMTP id rh16-20020a17090720f000b0099e120148bcmr9325335ejb.64.1692778512801;
        Wed, 23 Aug 2023 01:15:12 -0700 (PDT)
Received: from krzk-bin.. ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id v18-20020a170906b01200b0098e78ff1a87sm9539730ejy.120.2023.08.23.01.15.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 01:15:12 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jianhua Lu <lujianhua000@gmail.com>,
        Del Regno <angelogioacchino.delregno@somainline.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/3] dt-bindings: display: panel: add common dual-display schema
Date:   Wed, 23 Aug 2023 10:14:58 +0200
Message-Id: <20230823081500.84005-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add schema with common properties shared among dual display panel ICs.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

v2: https://lore.kernel.org/all/20230502120036.47165-1-krzysztof.kozlowski@linaro.org/
v1: https://lore.kernel.org/all/20230416153929.356330-1-krzysztof.kozlowski@linaro.org/

Changes since v2:
1. New Patch
---
 .../display/panel/panel-common-dual.yaml      | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/panel-common-dual.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/panel-common-dual.yaml b/Documentation/devicetree/bindings/display/panel/panel-common-dual.yaml
new file mode 100644
index 000000000000..83fcd643b5f5
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/panel-common-dual.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/panel-common-dual.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common Properties for Dual-Display Panels
+
+maintainers:
+  - Thierry Reding <thierry.reding@gmail.com>
+  - Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
+
+description:
+  Properties common for Panel IC supporting dual display panels.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    additionalProperties: false
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: First display panel
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Second display panel
+
+      "#address-cells": true
+      "#size-cells": true
+
+    required:
+      - port@0
+
+# Single-panel setups are still allowed.
+oneOf:
+  - required:
+      - ports
+  - required:
+      - port
+
+additionalProperties: true
-- 
2.34.1

