Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBB5A480B6D
	for <lists+devicetree@lfdr.de>; Tue, 28 Dec 2021 17:39:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236298AbhL1Qjq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Dec 2021 11:39:46 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:39468
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236143AbhL1Qjm (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 28 Dec 2021 11:39:42 -0500
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 9995B402FB
        for <devicetree@vger.kernel.org>; Tue, 28 Dec 2021 16:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640709580;
        bh=3/vCHuLU2olwZq+6aS9XDTfCwLrWAXWmzqRCmFjm31Q=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=d/itBfyKVw0ns7m3Ormj6ruqSuUrflgdKS7/pbLIOwEtTThftF0EjImBP4OdVe04e
         PTFInNk351DCuxFsXmqY6l/xxD+5KtTmMb2yf1IaT8PRssi+HKfai3hsF2ul3rhKfW
         6MaGLzTA6wYdvQH5AWEwHrL8EFTlY3B7Kj5aNE7nSlBXiC0NM9PCrwSJd+UbB9nwQV
         r2UeOPR+a7lGsp6wZT3OC4w7ALQOLgo3e960d0I/sCczUzvkpVrO9zQz6jvkQ6z2cj
         DsmVqUJurFxDcocE3Q1pd8l0/SFib+Q5sfHItc4LJocXsbvdthPuhfTSLGUwGmQy90
         94JDRmIIVWCJg==
Received: by mail-lf1-f71.google.com with SMTP id m8-20020a0565120a8800b00425edb1a456so4226904lfu.16
        for <devicetree@vger.kernel.org>; Tue, 28 Dec 2021 08:39:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3/vCHuLU2olwZq+6aS9XDTfCwLrWAXWmzqRCmFjm31Q=;
        b=rrKEYZ+lnmDRCoP6xoie1bwp5GZLqA2F6k1bCI07difFFyx+Sz+jwY37vnNlDZXHgY
         vad64T+2P5yMkPqVoiQBW/BcvhLl6iRNh5k8464lkbaumO173JpxVj++a5Q4URClHwgg
         Hcs7IT7diULJyA3Q301CJMU++j4eW33ek0fj4uZXFd2Skpak2KSlon8FXWmMX52lCVD9
         jU378vGyXhbugVzyDwoh2Fmj3yrEJdaGRjilmDdJICUiVQgydv+wjiyEK4Rw0Nn6Qq0k
         K4r7w6DTbVlGcn01IbsTTSH3uw7jM3Wnpp7ftYdBjTm7LPcLdW3yVIPuBdfvW23H+iNh
         FfEw==
X-Gm-Message-State: AOAM533+sDlmS/tIGBhHvh6dn20FTULlQFxPuoMftt6x2vezCCoqaELN
        fyQMzIBPoFhye39PPisQGk+T2rLkmWJ3yGrcICPBOOk02BeD579fBlOOrkfLzwJhwz9PQm6+XUq
        rAXBuGudlHaHzOhsBfrpoVsDSYdxBoLs/jv/ttC8=
X-Received: by 2002:a05:6512:1286:: with SMTP id u6mr20850790lfs.342.1640709579415;
        Tue, 28 Dec 2021 08:39:39 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzUIm63tQ1i2xPZhWNHW+jQYMkShWkPt/35yD+8djNtjXFgkoaNDLdZbKoC9UYgmfYxQoNdIw==
X-Received: by 2002:a05:6512:1286:: with SMTP id u6mr20850774lfs.342.1640709579251;
        Tue, 28 Dec 2021 08:39:39 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id d3sm1972876lfs.204.2021.12.28.08.39.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Dec 2021 08:39:38 -0800 (PST)
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
Subject: [PATCH 3/4] regulator: dt-bindings: maxim,max77693: convert to dtschema
Date:   Tue, 28 Dec 2021 17:39:29 +0100
Message-Id: <20211228163930.35524-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211228163930.35524-1-krzysztof.kozlowski@canonical.com>
References: <20211228163930.35524-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the regulator bindings of Maxim MAX77693 MUIC to DT schema format.
The existing bindings were defined in ../bindings/mfd/max77693.txt.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/regulator/maxim,max77693.yaml    | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77693.yaml

diff --git a/Documentation/devicetree/bindings/regulator/maxim,max77693.yaml b/Documentation/devicetree/bindings/regulator/maxim,max77693.yaml
new file mode 100644
index 000000000000..81242c8cd77c
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/maxim,max77693.yaml
@@ -0,0 +1,49 @@
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
+patternProperties:
+  "^ESAFEOUT[12]$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+    description: |
+      Safeout LDO regulator.
+
+    properties:
+      regulator-min-microvolt: true
+      regulator-max-microvolt: true
+
+    required:
+      - regulator-name
+
+  "^CHARGER$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+    description: |
+      Current regulator.
+
+    properties:
+      regulator-min-microamp: true
+      regulator-max-microamp: true
+
+    required:
+      - regulator-name
+
+additionalProperties: false
-- 
2.32.0

