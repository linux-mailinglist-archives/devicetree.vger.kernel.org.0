Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D87DC6E9252
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 13:21:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234064AbjDTLVW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 07:21:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234240AbjDTLU6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 07:20:58 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FB0EAF30
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 04:19:02 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id n31so465525wms.3
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 04:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1681989484; x=1684581484;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RziL4H96Ec3j032prmOzYzjQ6nh/ZxH/lsLBU5oyee0=;
        b=aWaeNs6T1pRUJx87FY4CL5DqfD3UrRFGn9M6V1V3WjPfy7SkOPPEXzX5mnBI7VI6SW
         RdGHP6TAeHOb7kUKZyeBvkJrKIbLpEDG4mb2cCqtRi134fu3YHR1hQJqM4MnoNIixTS6
         0PPKT60S8CUzPiTQdZWtJpiGCXYGlLM1vY4FTIXXwaE/F4iZoWqxP0ZLsNCOeaxEA7eX
         eqP2kOj53eQ/CCNjGp/yPPUauVDlmT3U07+mR3ONCVO7NoPGgAtXqQ4AYP8gcRYnfRgY
         K0PCR3b0xTkGlbXmdkbnezu8TLc83siwgYOvfVgEma9q/ri7PsN1FfMxnkhWtFqomGBW
         lD3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681989484; x=1684581484;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RziL4H96Ec3j032prmOzYzjQ6nh/ZxH/lsLBU5oyee0=;
        b=RHGjgT3qY/pVVM94rqCbOWTYy0UcO+r049r1WwMYfb+d45iCIt9EU+d7raW2Uc7wz2
         BAnvp1vJJS0JdeynxQhoFUPjUCpL1mKsymxoWdKIDmYe+daaBGw6HINWx5uxf4H7IGts
         6GHbOOCkSD7bvPM4k13fysCRnHzRMVW9oy3k3pJyJXrv495ZpLZiyL1Wc0CyqtXQzmI9
         w8RHs+BTD3aMwVIAQCjrJEP5d33nrY7FOkajFqIiVH3EF4CcA8OqK5uFRyfkbcm7HhRd
         vBTqbVDepiISitE8ti/h46KhajTPvQx/mlO7jWXNkq4gu9r+freVXKo6BUqN43TTM/Ni
         MWMg==
X-Gm-Message-State: AAQBX9e6d016k1P0+CUHoctuK8oXBdh5rXzx5uzXrMu35Fr+K7Y1/RhD
        RwRU7auXkqTWdf4E1XCBUg8M99cTyd8o7jS1sSixWQ==
X-Google-Smtp-Source: AKy350Y3dCHEWDy4Lzb3VbMaIMPpHjb7SfC/YYkzk5z5v/qCJqge+HiIoRmlD70/Msrwk/t0Rjd/3g==
X-Received: by 2002:a1c:7315:0:b0:3f1:70cf:a2d9 with SMTP id d21-20020a1c7315000000b003f170cfa2d9mr991160wmb.9.1681989484048;
        Thu, 20 Apr 2023 04:18:04 -0700 (PDT)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id h3-20020a5d5043000000b002c70ce264bfsm1680980wrt.76.2023.04.20.04.18.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 04:18:03 -0700 (PDT)
From:   Naresh Solanki <naresh.solanki@9elements.com>
X-Google-Original-From: Naresh Solanki <Naresh.Solanki@9elements.com>
To:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Naresh Solanki <Naresh.Solanki@9elements.com>
Cc:     Marcello Sylvester Bauer <sylv@sylv.io>,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: hwmon: Add max6639
Date:   Thu, 20 Apr 2023 13:17:57 +0200
Message-Id: <20230420111759.2687001-1-Naresh.Solanki@9elements.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Marcello Sylvester Bauer <sylv@sylv.io>

Add Devicetree binding documentation for Maxim MAX6639 temperature
monitor with PWM fan-speed controller.

Signed-off-by: Marcello Sylvester Bauer <sylv@sylv.io>
Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
...
Changes in V2:
- Update subject
- Drop blank lines
---
 .../bindings/hwmon/maxim,max6639.yaml         | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml b/Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml
new file mode 100644
index 000000000000..1aaedfd7cee0
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/maxim,max6639.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim max6639
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
+      fan-controller@10 {
+        compatible = "maxim,max6639";
+        reg = <0x10>;
+      };
+    };
+...

base-commit: b8610e0fe08f1476895f141be60f8dd842f0adac
-- 
2.39.1

