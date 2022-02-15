Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A742A4B64C1
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 08:50:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234968AbiBOHsu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 02:48:50 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:37326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234943AbiBOHsn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 02:48:43 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EB018A303
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 23:48:34 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E9F774033D
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 07:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644911312;
        bh=MYN3RCgVIgzhyrJn9l29HblDmb8bQllkRqZgA3loBrM=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=OyMWp2eWIkA7svj/uKHkOIzYR0imzPiubEX7kfJn2HwhF032YfSrxL3M7H++kS6KE
         1fKGcgvgMX/nbVgPy6rddBPFc/xB/BdVYAzqbOQCroVxJEjqllCJ1ifwzGGXBhVNbI
         VAEFT0wbFyH+HA+xEbTbJjfYtMMTNYp1YsxZjUBKRVL2VpNJUjLX9ZpuTRB7gZfYWG
         g7eEF3gZCLzGIT6NAjsI7PStJYc4Qp/IbfHdA2gC7t6QRLhzrMSzMPE2jtSO4XrhFw
         BC3B3cXjLnqSGzrK9tAei3SOCE1VwPFdmxLhPMvTypT/h7t8iXxPn85JqcyT0fDccP
         XO/jeRjFF/Qxg==
Received: by mail-ed1-f69.google.com with SMTP id f9-20020a056402354900b0040fb9c35a02so11874523edd.18
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 23:48:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MYN3RCgVIgzhyrJn9l29HblDmb8bQllkRqZgA3loBrM=;
        b=osOZCEJEQFvZak571WZfiWAEzkI/fF7vTZabI3vU1pNLU+S8gbz705h/3jXKuhahzG
         gE/RZilYyDVqfK2pKU5sCCS4Q+B53cuNgKK8GOK7MHZByOZyNAGCW6boc//KKYviOj9e
         QIkUZRO04egt/yt1ONw3Mb2R0HwGYKhbDPJQpPVU2CPuqPS3mgF3WNT31b0Lom3s2gqB
         dtj0k7iG/skBnO4jEdLHn2pU4SK3rBGHOPHOj9sdeOPa/XZifG6ku1wI1mAJaQQlhDXe
         3Jk2K7ceKNSkEKmyYLZIHFadZsBA37BtXXg+XtWZXtpSQNnEO0thz5yK7goqkqNNZ9sr
         SV8A==
X-Gm-Message-State: AOAM531c8gYFS/jTDhae/NxJnFyRLCGN9dhKILFS3igKXqk3qpTMalFi
        lbsZZSa/PgYkfBQa++nvKZuGoW0IlT3Q2vhsN3CSIjSmgYCmiO4tzW2BOTDa/Ljj9C/az+dkPyr
        GCA6SPT0goVBGulP5uSGNCVq859BIJpmALeCJCMo=
X-Received: by 2002:a17:906:7812:: with SMTP id u18mr1938817ejm.335.1644911312262;
        Mon, 14 Feb 2022 23:48:32 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy8Qr0UXe2cAqKTYU54w4XfZCmHZ0ib2s13fYUuPKisoR881wXAkKdPTQwkmTJxSv2ebyrCyg==
X-Received: by 2002:a17:906:7812:: with SMTP id u18mr1938809ejm.335.1644911312097;
        Mon, 14 Feb 2022 23:48:32 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id c29sm1188357ejj.149.2022.02.14.23.48.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 23:48:31 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Sebastian Reichel <sre@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>
Subject: [PATCH v3 2/3] regulator: dt-bindings: maxim,max14577: convert to dtschema
Date:   Tue, 15 Feb 2022 08:47:58 +0100
Message-Id: <20220215074759.29402-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220215074759.29402-1-krzysztof.kozlowski@canonical.com>
References: <20220215074759.29402-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the regulator bindings of Maxim MAX14577/MAX77835 MUIC to DT
schema format.  The existing bindings were defined in
../bindings/mfd/max14577.txt.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/regulator/maxim,max14577.yaml    | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max14577.yaml

diff --git a/Documentation/devicetree/bindings/regulator/maxim,max14577.yaml b/Documentation/devicetree/bindings/regulator/maxim,max14577.yaml
new file mode 100644
index 000000000000..16f01886a601
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/maxim,max14577.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/maxim,max14577.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim MAX14577/MAX77836 MicroUSB and Companion Power Management IC regulators
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+
+description: |
+  This is a part of device tree bindings for Maxim MAX14577/MAX77836 MicroUSB
+  Integrated Circuit (MUIC).
+
+  See also Documentation/devicetree/bindings/mfd/maxim,max14577.yaml for
+  additional information and example.
+
+properties:
+  compatible:
+    enum:
+      - maxim,max14577-regulator
+      - maxim,max77836-regulator
+
+  CHARGER:
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+    description: |
+      Current regulator.
+
+    properties:
+      regulator-min-microvolt: false
+      regulator-max-microvolt: false
+
+  SAFEOUT:
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+    description: |
+      Safeout LDO regulator (fixed voltage).
+
+    properties:
+      regulator-min-microamp: false
+      regulator-max-microamp: false
+      regulator-min-microvolt:
+        const: 4900000
+      regulator-max-microvolt:
+        const: 4900000
+
+patternProperties:
+  "^LDO[12]$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+    description: |
+      Current regulator.
+
+    properties:
+      regulator-min-microamp: false
+      regulator-max-microamp: false
+      regulator-min-microvolt:
+        minimum: 800000
+      regulator-max-microvolt:
+        maximum: 3950000
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: maxim,max14577-regulator
+    then:
+      properties:
+        LDO1: false
+        LDO2: false
+
+additionalProperties: false
-- 
2.32.0

