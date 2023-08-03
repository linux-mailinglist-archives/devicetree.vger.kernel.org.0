Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A58376ECF8
	for <lists+devicetree@lfdr.de>; Thu,  3 Aug 2023 16:44:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236142AbjHCOof (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Aug 2023 10:44:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234420AbjHCOo0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Aug 2023 10:44:26 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B04E4234
        for <devicetree@vger.kernel.org>; Thu,  3 Aug 2023 07:44:07 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-99bcfe28909so143164266b.3
        for <devicetree@vger.kernel.org>; Thu, 03 Aug 2023 07:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1691073845; x=1691678645;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jJQoP+OlQsep7JicKgaIdwHZRhxScdcgkq1/BfxKseY=;
        b=QaXj4huY5XwJDj5dgKYPotJmlo6vd/UT1VwxEm6+zSboBzFWXaftbcixNgcNP/0Bhe
         jcJr4LgYdkNdTdy4P4pXBCUtbiBDxwzDWSLY4wb2rC8rdCTqrNXcvwnrrlpb3QIgCdGK
         FZlyfOwdf9XbCsqjr17Fqdppk3LAXTphgv3h498VIF5cD2Kt5YRa01zYumasyM9q+2cX
         eJfcPAOVACXJD7Upx/stiZmeKaLx04qF8vMCSo5Q5NxjvI6JP+TMY3fBSkc8brHQ7hKI
         WiX9O6K9UXzARZsILMIATPYro5c9VSsXLQ4gjIJf4gX8G9XiJ0knPECRhz5i9uDKEwKG
         uawQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691073845; x=1691678645;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jJQoP+OlQsep7JicKgaIdwHZRhxScdcgkq1/BfxKseY=;
        b=HMd8EPVF+u73dDVHpMnl3D4wWdNiBFy0PXerYfqXBrmi77V8wz3c5rhv7s6d6Ss1Zr
         Y7Pit9uwVuhn5ddTXXZz8pXsCuVwatHCgpL07nHFv25Mg1mlHOF557waZRAf+2F24IUl
         IdVuwPudHifgRoStjz5xvqW6i8VjHi1KvWsMnZjrww8nE/acRFdDZyrrGMcsuGK7CSaX
         eKIDq9jLBPxUHHMWNB4JjYu6JQumf4m+5bAo0YRrV9xjmmS1wpNwc3LV00fIpgEkSEDu
         8AzJwkDscPqECsi8vPaVEq/OMKoEN2OBW8yAQPfpPTzpCr8r+d1uX1ywCWxmKOy8TpeB
         pwaA==
X-Gm-Message-State: ABy/qLYQ2+mjk/UNdKUHuoXDxTFEiYaKrQCzHpoBXXiSzpgnX0CN+46V
        5L1x5nrQi7ouC4DBU4VADZXBgQ==
X-Google-Smtp-Source: APBJJlHA72M4h9rUEVgI/0cQsSvxZ4JN4xSFaGyCja+X/exWwEliU7yU+RAtXwl+xIWyYpBBAKrQ7Q==
X-Received: by 2002:a17:906:77d6:b0:992:b3a3:81f4 with SMTP id m22-20020a17090677d600b00992b3a381f4mr8361117ejn.50.1691073845548;
        Thu, 03 Aug 2023 07:44:05 -0700 (PDT)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id t26-20020a1709064f1a00b0099bd86f9248sm10629859eju.63.2023.08.03.07.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Aug 2023 07:44:05 -0700 (PDT)
From:   Naresh Solanki <naresh.solanki@9elements.com>
X-Google-Original-From: Naresh Solanki <Naresh.Solanki@9elements.com>
To:     Guenter Roeck <linux@roeck-us.net>,
        krzysztof.kozlowski+dt@linaro.org,
        Jean Delvare <jdelvare@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Naresh Solanki <Naresh.Solanki@9elements.com>
Cc:     Marcello Sylvester Bauer <sylv@sylv.io>,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: hwmon: Add MAX6639
Date:   Thu,  3 Aug 2023 16:43:59 +0200
Message-ID: <20230803144401.1151065-1-Naresh.Solanki@9elements.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Marcello Sylvester Bauer <sylv@sylv.io>

Add binding documentation for Maxim MAX6639 fan-speed controller.

Signed-off-by: Marcello Sylvester Bauer <sylv@sylv.io>
Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
---
Changes in V3:
- Update title
- Add pulses-per-revolution, supplies & interrupts
Changes in V2:
- Update subject
- Drop blank lines
---
 .../bindings/hwmon/maxim,max6639.yaml         | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml b/Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml
new file mode 100644
index 000000000000..b3292061ca58
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/maxim,max6639.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim MAX6639 Fan Controller
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
+  fan-supply:
+    description: Phandle to the regulator that provides power to the fan.
+
+  interrupts:
+    maxItems: 1
+
+  pulses-per-revolution:
+    description:
+      Define the number of pulses per fan revolution for each tachometer
+      input as an integer.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [1, 2, 3, 4]
+    default: 2
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

base-commit: cb7022b8976e3c4d12cea2e7bb820a2944e2fd7b
-- 
2.41.0

