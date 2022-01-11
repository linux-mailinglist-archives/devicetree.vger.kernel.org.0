Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7E9948B483
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 18:51:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344836AbiAKRvJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 12:51:09 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:54168
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1344792AbiAKRvG (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jan 2022 12:51:06 -0500
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C4DEB405F2
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 17:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641923464;
        bh=0lTX/pRjq8fGrSEdb45cqNSVN0bzGZ2/ArUtBalm9jo=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=dc8kKipck8+4Ul6U6wHkC5y1YngnUAMAzuqxUNHJkr88ssvS8TpeFOsUfSc1+HQoC
         Tqpr2JIq339rAuFnOnSmKvonVbjbxx4JV4B7nqEIYMimyWThQk6hGhoAmlAbiMlYeN
         q/VZIn+9N5aEG0xnG2O+8UNicHtzpxXNf0J1T/HBnW9uo7M+oKDWT8ugXc4Rkvdeu4
         KvEN2ARS1Vo4qCREwl58wkTEbF5Ge6tyqYv2F4HgybP7G3u3Wuxl55QSbfelytxSGj
         TI3S9hw72VFn8Vt97yaQ8pCUI8/sZZPWH7Sk/2TLnvrf4nX5WmvKVYyUTP3erEX6fM
         /EAyY56Y/j5Wg==
Received: by mail-ed1-f69.google.com with SMTP id c8-20020a05640227c800b003fdc1684cdeso5983161ede.12
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 09:51:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0lTX/pRjq8fGrSEdb45cqNSVN0bzGZ2/ArUtBalm9jo=;
        b=QgP0qpIoRn73SeoA+J8lfCjHjix9fFeKFq1x5fbzdmO8nWJDVKSZXkPBQw5TgVd7ev
         i5ZbLjgpneRIYqMPig9MjDcJVAQuEUGWbQAlLA0ucvaVPDnEL8XiKRZpR2BMNPTrDzO6
         BYOcgw4G7MfdoGCqzlkGkRoD7PMik1QKLTnUG+CUXYcFoLIejnWU188uuWXjumcN1aw+
         TVmkW/U5lGf4pq73PVxL6G7HfNVm3hxeQVnTlum82/XOqg9PxEb2d0rZQDOMGxxBcF71
         v4jTB7acTtlnuLduQ8kcyZQPMwHZTr/Hd47tuHhwK4Sm4fTTisgQ8I1yZrUIyE9sM6Jj
         EV7w==
X-Gm-Message-State: AOAM533/0EGaq1LWGAdVuDN5EcUK1PYnJ8d3Qe5bIkdLIGmPJ3g/0cmk
        f2IX+b3JaVVdyWreX0DrF13RHv9Sjpbhc2Wy/nFTH7C69ScFhVtpIHDfJDMixfHQae9KmClenJv
        Ygnhyafoi6IM/I6jD/eyhpIEVxXwYx/+/9maKdVo=
X-Received: by 2002:a17:906:7199:: with SMTP id h25mr4637461ejk.734.1641923461940;
        Tue, 11 Jan 2022 09:51:01 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx1N007d3shEa8Ib3SDImdT17QSvZTGxNtwZXkqztluxz5huESUnu16sC4O6EqMG0YJnFlSOQ==
X-Received: by 2002:a17:906:7199:: with SMTP id h25mr4637445ejk.734.1641923461774;
        Tue, 11 Jan 2022 09:51:01 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id p25sm5265160edw.75.2022.01.11.09.51.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 09:51:01 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org
Subject: [PATCH v2 3/4] regulator: dt-bindings: maxim,max77693: convert to dtschema
Date:   Tue, 11 Jan 2022 18:50:16 +0100
Message-Id: <20220111175017.223966-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220111175017.223966-1-krzysztof.kozlowski@canonical.com>
References: <20220111175017.223966-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the regulator bindings of Maxim MAX77693 MUIC to DT schema format.
The existing bindings were defined in ../bindings/mfd/max77693.txt.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/regulator/maxim,max77693.yaml    | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77693.yaml

diff --git a/Documentation/devicetree/bindings/regulator/maxim,max77693.yaml b/Documentation/devicetree/bindings/regulator/maxim,max77693.yaml
new file mode 100644
index 000000000000..20d8559bdc2b
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/maxim,max77693.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/maxim,max77693.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim MAX77693 MicroUSB and Companion Power Management IC regulators
+
+maintainers:
+  - Chanwoo Choi <cw00.choi@samsung.com>
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+
+description: |
+  This is a part of device tree bindings for Maxim MAX77693 MicroUSB Integrated
+  Circuit (MUIC).
+
+  See also Documentation/devicetree/bindings/mfd/maxim,max77693.yaml for
+  additional information and example.
+
+properties:
+  CHARGER:
+    type: object
+    $ref: regulator.yaml#
+    additionalProperties: false
+    description: |
+      Current regulator.
+
+    properties:
+      regulator-name: true
+      regulator-always-on: true
+      regulator-boot-on: true
+      regulator-min-microamp:
+        minimum: 60000
+      regulator-max-microamp:
+        maximum: 2580000
+
+    required:
+      - regulator-name
+
+patternProperties:
+  "^ESAFEOUT[12]$":
+    type: object
+    $ref: regulator.yaml#
+    additionalProperties: false
+    description: |
+      Safeout LDO regulator.
+
+    properties:
+      regulator-name: true
+      regulator-always-on: true
+      regulator-boot-on: true
+      regulator-min-microvolt:
+        minimum: 3300000
+      regulator-max-microvolt:
+        maximum: 4950000
+
+    required:
+      - regulator-name
+
+additionalProperties: false
-- 
2.32.0

