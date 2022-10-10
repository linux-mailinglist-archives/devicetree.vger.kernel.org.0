Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F34A65FA658
	for <lists+devicetree@lfdr.de>; Mon, 10 Oct 2022 22:33:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230153AbiJJUdG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Oct 2022 16:33:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230048AbiJJUco (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Oct 2022 16:32:44 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7CCB7E305
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 13:31:21 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id qw20so26635262ejc.8
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 13:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2+BbBMg9bnq3BnSRdXRrSGALWvNpVdpy4Oqu9ZYTa7I=;
        b=UuaHM/XrDgeZhid/He2mkMqaHHs6TQku9LAwIUCrEpIJiwZ1ZCyhiOBIZfb+c+qQp9
         yzU+DBg10dcrEiNUM1LV+Y8quV6p+htp1wQSyBO4VBUjTkOLVVUJa50M5tivk+iw3yR8
         akHznF0ddDKMAAFv+f92ZIEJ0d+oxm5hY01bqB0gFnecIMM3lClvub+EYuObYvfBqznn
         Vmm+BzjaaW/4+DyftrupLX2Nexb8BlHPQATryce5Y+cURqYYxNkJgjZgPfn5N0ubg2EL
         JIvP0JL/B7Ulq7fqCffJvikjH5e/dl+VAuNG9foeegDkhpIaTdSpj1/ynvkosbZv95+s
         FScQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2+BbBMg9bnq3BnSRdXRrSGALWvNpVdpy4Oqu9ZYTa7I=;
        b=R4IV5ZiOGlUneCHR35OR38Fp+fax8L/+++d9xYnJxEBycSJctd+nTZH7EvxLnBSjcP
         HQrdjZ4qBmUoEUX4RQ1mu14U65jQhSRVe0KaF+a/07AhujFQl0aUkJzu6eNYsgd3BXQw
         qEnSdlImNYsydd/f3mrVH/rQ/k29/wgrRnBG9xVOY1xBXP0IGEoRoIHbAkFGFka0VLWB
         nRunoXBWy4p2aGIAq71J6eLYwHWdlCwNWj1eeLWQhv2eacEMWEjkADuoluUYFwOd7LUC
         A6LJ2ID6LMEmgpyXsr04NKWUfMDMmUC6VB3ubdBDU2gb7qrg0Rs6Xj7QAJ76kgXcDfDS
         Nw7w==
X-Gm-Message-State: ACrzQf1qH/V1Gl2joO2GytaryJckE91LoJa73MjljJcbLo9wN74SsW3z
        5M1YMRrlrZJKjltMk/6rMJupyWbNi/pfpHgj
X-Google-Smtp-Source: AMsMyM7Nxe4Irn+b842+31H5rOc53pLt8QjGwVXtUg24lnAx5C5B9uiRbIEKiYSDXLUsV8GddDd5Yw==
X-Received: by 2002:a17:907:8a24:b0:78d:cd60:1022 with SMTP id sc36-20020a1709078a2400b0078dcd601022mr2651222ejc.384.1665433881074;
        Mon, 10 Oct 2022 13:31:21 -0700 (PDT)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id c18-20020aa7d612000000b0045720965c7asm7670385edr.11.2022.10.10.13.31.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Oct 2022 13:31:20 -0700 (PDT)
From:   Naresh Solanki <naresh.solanki@9elements.com>
X-Google-Original-From: Naresh Solanki <Naresh.Solanki@9elements.com>
To:     devicetree@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        Patrick Rudolph <patrick.rudolph@9elements.com>,
        Naresh Solanki <Naresh.Solanki@9elements.com>
Subject: [PATCH 1/3] dt-bindings: hwmon: fan: Add fan binding to schema
Date:   Mon, 10 Oct 2022 22:30:44 +0200
Message-Id: <20221010203046.3673663-2-Naresh.Solanki@9elements.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221010203046.3673663-1-Naresh.Solanki@9elements.com>
References: <20221010203046.3673663-1-Naresh.Solanki@9elements.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add common fan properties bindings to a schema.

Bindings for fan controllers can reference the common schema for the
fan

child nodes:

  patternProperties:
    "^fan@[0-2]":
      type: object
      allOf:
        - $ref: fan-common.yaml#

Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
---
 .../devicetree/bindings/hwmon/fan-common.yaml | 77 +++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/fan-common.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/fan-common.yaml b/Documentation/devicetree/bindings/hwmon/fan-common.yaml
new file mode 100644
index 000000000000..6bb990f00e94
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/fan-common.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/fan-common.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common fan properties
+
+properties:
+  max-rpm:
+    description:
+      Max RPM supported by fan
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  pulse-per-revolution:
+    description:
+      The number of pulse from fan sensor per revolution.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  target-rpm:
+    description:
+      Target RPM the fan should be configured during driver probe.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  pwm-frequency:
+    description:
+      PWM frequency for fan.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  pwm-polarity-inverse:
+    description:
+      PWM polarity for fan.
+    type: boolean
+
+  label:
+    description:
+      Optional fan label
+    $ref: /schemas/types.yaml#/definitions/string
+
+additionalProperties: true
+
+examples:
+  - |
+
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        fan-controller@30 {
+            compatible = "maxim,max6639";
+            reg = <0x30>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            fan@0 {
+                reg = <0>;
+                label = "CPU0_Fan";
+                max-rpm = <32000>;
+                pulse-per-revolution = <2>;
+                target-rpm = <2000>;
+                pwm-frequency = <25000>;
+            };
+
+            fan@1 {
+                reg = <1>;
+                label = "PCIe0_Fan";
+                max-rpm = <32000>;
+                pulse-per-revolution = <2>;
+                target-rpm = <2000>;
+                pwm-frequency = <25000>;
+            };
+
+        };
+    };
+
+...
-- 
2.37.3

