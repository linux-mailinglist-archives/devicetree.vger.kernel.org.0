Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74EE3480B69
	for <lists+devicetree@lfdr.de>; Tue, 28 Dec 2021 17:39:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236208AbhL1Qjn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Dec 2021 11:39:43 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:49240
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236122AbhL1Qjj (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 28 Dec 2021 11:39:39 -0500
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 3AF2B3F1AF
        for <devicetree@vger.kernel.org>; Tue, 28 Dec 2021 16:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640709578;
        bh=EJX+nrdFXv7J+QKJuyadx2drHvWDPpSnJQUjha4GC/A=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Yji2pqcAupDcO/qqsgJcj2cZB1uybNB4qkIGHtdg6wbzp3flqwLVxY/UskiPmlZGP
         mvtuLHKMeJLm4r7n90PJjBdpLqE7nRJ5/z8Uavt9rQTu6AuiKD7oMLyj/39ypFI1Yc
         vWOenQRiDaewrcu6nXDya5TnRBs0zLl6JEuEq/+h0DiZKbDg1YvcSgXqyYV/9itSsq
         GagSIYeXA/StrBaPRcNlhkBiAUbAvEkJTEaeVuKd8fB2gZzEYZP2z64jegaEhjZTEo
         MZNHlzFMP6F9Y7xDbmwRI1lhEKyy/D8+YXXMoXdIicqblLuS7wAtsVmQrmqic8IZOj
         P8mguwYDtN1Ag==
Received: by mail-lf1-f71.google.com with SMTP id h7-20020ac24da7000000b0042521f16f1fso4222471lfe.21
        for <devicetree@vger.kernel.org>; Tue, 28 Dec 2021 08:39:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EJX+nrdFXv7J+QKJuyadx2drHvWDPpSnJQUjha4GC/A=;
        b=2umyXr7oWSKWsI19WGbtNNA8ybP3bhXaZtlQY/4gcmjId6HlgLkWlYqU3DzU+Rxwxy
         Bha4Esak8VJSdXv+qYTwyOR9iSc//4L0L8Ja4elCKJfWNZbBD9r7AJQb4JKiaaDSGa/G
         K6VgoWSVjUjPer2dBlfD+H1+Tupaah+xMzUTH9NV9kcP5ljbhuHOR+zkt4Z+VhwjVCgt
         c7hiB9w5t8u5JD7ia8LInuShDT5rpD7C+/uPohNG97MVjmOPMe/pwd1+OKENtvJRa1nH
         OiBcSMCSgqIDRuI4Npr6WvGMbAMeAXcTfYF+OniLiSndWvu++LFPty4qP7UcbW6NFAox
         kC5w==
X-Gm-Message-State: AOAM533iQHeZasn/zraFg0l7raToHZqujNQNzV1siqmyt9OVCsEL8ytN
        CU9fbQAvjs71QBrt+rTFrX5+uGCuV23J7Z+5bknKYFCtabHCKK5JQD4+3lpSHiKZHWJyIA5C5FK
        S9aY1qe4lB4Q6FN8EdSESCaA8zuZnnZI1LntXOMg=
X-Received: by 2002:a19:4902:: with SMTP id w2mr20199207lfa.271.1640709577609;
        Tue, 28 Dec 2021 08:39:37 -0800 (PST)
X-Google-Smtp-Source: ABdhPJweglUZNFtDlgKoiaHZUAwkBYFEEXwL9sd2cRj+Y0X/bHe4wR/+2KyUY5tBkfn2JJPeHN3MCw==
X-Received: by 2002:a19:4902:: with SMTP id w2mr20199185lfa.271.1640709577400;
        Tue, 28 Dec 2021 08:39:37 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id d3sm1972876lfs.204.2021.12.28.08.39.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Dec 2021 08:39:36 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org
Subject: [PATCH 2/4] dt-bindings: power: supply: maxim,max77693: convert to dtschema
Date:   Tue, 28 Dec 2021 17:39:28 +0100
Message-Id: <20211228163930.35524-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211228163930.35524-1-krzysztof.kozlowski@canonical.com>
References: <20211228163930.35524-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the Charger bindings of Maxim MAX77693 MUIC to DT schema format.
The existing bindings were defined in ../bindings/mfd/max77693.txt.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/power/supply/maxim,max77693.yaml | 70 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/supply/maxim,max77693.yaml

diff --git a/Documentation/devicetree/bindings/power/supply/maxim,max77693.yaml b/Documentation/devicetree/bindings/power/supply/maxim,max77693.yaml
new file mode 100644
index 000000000000..a21dc1a8890f
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/supply/maxim,max77693.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/supply/maxim,max77693.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim MAX77693 MicroUSB and Companion Power Management IC Charger
+
+maintainers:
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
+  compatible:
+    const: maxim,max77693-charger
+
+  maxim,constant-microvolt:
+    description: |
+      Battery constant voltage in uV. The charger will operate in fast
+      charge constant current mode till battery voltage reaches this level.
+      Then the charger will switch to fast charge constant voltage mode.
+      Also vsys (system voltage) will be set to this value when DC power is
+      supplied but charger is not enabled.
+      Valid values: 3650000 - 4400000, step by 25000 (rounded down)
+    minimum: 3650000
+    maximum: 4400000
+    default: 4200000
+
+  maxim,min-system-microvolt:
+    description: |
+      Minimal system voltage in uV.
+    enum: [3000000, 3100000, 3200000, 3300000, 3400000, 3500000,
+           3600000, 3700000]
+    default: 3600000
+
+  maxim,thermal-regulation-celsius:
+    description: |
+      Temperature in Celsius for entering high temperature charging mode.
+      If die temperature exceeds this value the charging current will be
+      reduced by 105 mA/Celsius.
+    enum: [70, 85, 100, 115]
+    default: 100
+
+  maxim,battery-overcurrent-microamp:
+    description: |
+      Overcurrent protection threshold in uA (current from battery to
+      system).
+      Valid values: 2000000 - 3500000, step by 250000 (rounded down)
+    minimum: 2000000
+    maximum: 3500000
+    default: 3500000
+
+  maxim,charge-input-threshold-microvolt:
+    description: |
+      Threshold voltage in uV for triggering input voltage regulation loop.
+      If input voltage decreases below this value, the input current will
+      be reduced to reach the threshold voltage.
+    enum: [4300000, 4700000, 4800000, 4900000]
+    default: 4300000
+
+required:
+  - compatible
+
+additionalProperties: false
diff --git a/MAINTAINERS b/MAINTAINERS
index b5e4f14f6768..ead08768fb78 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11681,6 +11681,7 @@ M:	Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
 M:	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
 L:	linux-pm@vger.kernel.org
 S:	Supported
+F:	Documentation/devicetree/bindings/power/supply/maxim,max77693.yaml
 F:	drivers/power/supply/max14577_charger.c
 F:	drivers/power/supply/max77693_charger.c
 
-- 
2.32.0

