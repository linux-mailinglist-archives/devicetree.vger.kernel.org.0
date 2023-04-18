Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 243F96E5FE3
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 13:32:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231140AbjDRLca (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Apr 2023 07:32:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230384AbjDRLca (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Apr 2023 07:32:30 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12F7740FB
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 04:32:28 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3f17b967bfbso4837075e9.1
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 04:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1681817546; x=1684409546;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=D2PeO5e/Aox7QzhHkYSjxJqeqgTXFUOLxZJv9Qdfgrk=;
        b=RH+YGD10Qb+PdrpuxWIl9buclhbzz5Ju3+49P2MB/c7gpU4g2hk4+mSyz85yBYRsRu
         aKITw2+IQkCfCQ/0uSPr2JODdW+xMEbyEzwguAaWzn6UUjHGkfwYH84T18/xtv7AC7jI
         ed/gaTsAM/tl4cLmjAk9YYppNvDUMC8Uw4APXW+BrcTD2/sK8IlrdkN76zlQ97u0vuJY
         3V45h3AjW5ApD/uJ+zlRSGfolS1unFBNSLN4N87sx0Y4HZ9/rRiqxtDciIpXTH23zZVl
         NxiQgMQrushL1wTMbAMIKmFqzSuFFh0brDJ1t5z+YFLoEbXOW3zUtl8XM/e18Upje8Yt
         bJEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681817546; x=1684409546;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D2PeO5e/Aox7QzhHkYSjxJqeqgTXFUOLxZJv9Qdfgrk=;
        b=CZVsC+Xy3skyJrlvL86IADx1RoMfNMDVYvt3WzBIa/snF+VyJabbKHIbfk7XPDio+J
         vhGD8LXADjo2EXn22HxOnIEYtc+F5sxZHCsYqbW/WowcKDQ+PvE+bv1CYbv8ZnKp6KBi
         dcKRRD8eUii7ztYkN7dXVpsYjqVS5cOagwL9ESsCiwgtqlRkllQxpjjKPng+51wms6UI
         3J1ZoEjUoCd59bTea4+6MeKsyvJrWqQEcsX7uzDUcF80Mg/GEgKRLhOQ/wlRkpZXQ3Ic
         qbNW8a2lJ6TuNz2pWMPfj8pazzYw92u96Fpl7vjik3sVttuVn6wSvzb2ZL8H2UkAQSIE
         +RGg==
X-Gm-Message-State: AAQBX9eM+ER6iuhI2lk4UO6a/hj6g5Sy6FlfN2328mjjiEDItCMkZWTM
        5WGFs1AL35su1+tB0Rq3507OQA==
X-Google-Smtp-Source: AKy350ZZ7JKXwDmajPANDwbPxlCPBGMo6pL+KeoOJlnqA1YkpHnOvBcZY+OjgAj90miPiCIyerGrPQ==
X-Received: by 2002:adf:f7c5:0:b0:2fb:a0eb:feaa with SMTP id a5-20020adff7c5000000b002fba0ebfeaamr1619941wrq.17.1681817546464;
        Tue, 18 Apr 2023 04:32:26 -0700 (PDT)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id z18-20020adfd0d2000000b002da75c5e143sm12901633wrh.29.2023.04.18.04.32.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Apr 2023 04:32:26 -0700 (PDT)
From:   Naresh Solanki <naresh.solanki@9elements.com>
X-Google-Original-From: Naresh Solanki <Naresh.Solanki@9elements.com>
To:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Naresh Solanki <Naresh.Solanki@9elements.com>
Cc:     linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: hwmon: Add binding for max6639
Date:   Tue, 18 Apr 2023 13:32:16 +0200
Message-Id: <20230418113217.781524-1-Naresh.Solanki@9elements.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Devicetree binding documentation for Maxim MAX6639 temperature
monitor with PWM fan-speed controller.

Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
---
 .../bindings/hwmon/maxim,max6639.yaml         | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml b/Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml
new file mode 100644
index 000000000000..20b28cd36555
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+
+$id: http://devicetree.org/schemas/hwmon/maxim,max6639.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim max6639 Dual fan controller
+
+maintainers:
+  - Naresh Solanki <Naresh.Solanki@9elements.com>
+
+description: |
+  The MAX6639 is a 2-channel temperature monitor with dual, automatic, PWM
+  fan-speed controller.  It monitors its own temperature and one external
+  diode-connected transistor or the temperatures of two external diode-connected
+  transistors, typically available in CPUs, FPGAs, or GPUs.
+
+  Datasheets:
+    https://datasheets.maximintegrated.com/en/ds/MAX6639-MAX6639F.pdf
+
+properties:
+  compatible:
+    enum:
+      - maxim,max6639
+
+  reg:
+    maxItems: 1
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      max6639@10 {
+        compatible = "maxim,max6639";
+        reg = <0x10>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+      };
+    };
+...

base-commit: b8610e0fe08f1476895f141be60f8dd842f0adac
-- 
2.39.1

