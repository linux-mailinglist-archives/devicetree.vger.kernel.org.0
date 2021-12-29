Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AEFA4812D3
	for <lists+devicetree@lfdr.de>; Wed, 29 Dec 2021 13:47:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238653AbhL2MrJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Dec 2021 07:47:09 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:34516
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238624AbhL2MrH (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 29 Dec 2021 07:47:07 -0500
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id CCC61407C2
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 12:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640782025;
        bh=NVZDNZbcxMe60AjIyWq0dP9vH4MaxZTaIUYRQc7qGok=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Omi+qO22L3hJW2xcbtWzULFS165huVz60aHfge2Bpw6ErPj5S4Pnw4VLhO3P1sKOE
         KjZJeXEGHEt5Nxt1pUImzFpLSgHpgnO4YSC4jmBmDdmIb/YzREMLJsb5Ni7tIdO7Tm
         disGyuN+15b8wBpE89xKShfZtwEdpRJdKjgWDcV72GuLW0d/srMKB67y3rGkYcDqPk
         JA4q4A4kJVDTzNnvMFefFlpRkh8MRkKjeH10f9bpRIb4cMmNLIsGehZQK1H4c6WqLp
         6cnVYvC1zMxOC4qwskdoj1MQBAGDPEDpmgbw7Jw6IGibUF2KOzMYzo42+emmRjCPed
         ySrImDitvPS0g==
Received: by mail-lj1-f198.google.com with SMTP id c20-20020a2e9d94000000b0021cf7c089d0so3173862ljj.21
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 04:47:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NVZDNZbcxMe60AjIyWq0dP9vH4MaxZTaIUYRQc7qGok=;
        b=hrFRi1xdiwXOOlMZRsyc/rJdL+me8KWUXCaloJR4Yq8uZv37hX4c9yz4XNhEP3+KVz
         xWp0rIKB5JtRMg7QFUXx0q5w3M+Uw5eU3uo1F/g2Zeay30U45ItU9t2wvj4dnTU4DmLH
         nG8Mgv4rrd5A5RAVizkHNux6KRf/KR1jOOLaTrOZyefPd7gAS4+NI9coPWJNKP3RZ0J1
         MI47v7l+jZhKpcKem+BG7uvYfL0JQiMn3x4IcOV5MOJszyXCrpqMESik0BHzda4Ijet5
         0TAPxVnWcN+Pzp1+17dljNjCs6gutBb7tk+Y2gITa+4JwMLQwEaoQ/ly0K7r7DQscIuB
         Q75Q==
X-Gm-Message-State: AOAM532yGfkS3BuV/+/U0/1KUEy/fK+R/OLfjMwyVwVBfZ7DAOfBs64z
        35t51rKyfls9B1poJ5BKQuipjzWYzvOTu/kf1MQjSy/l4tWvqJEpd9wPqQa3sG1aONtJDEZfx2C
        vh5xAgqU8GJI+ghebwAej63BJCCv4SfQ9roetfQs=
X-Received: by 2002:a2e:a58e:: with SMTP id m14mr9998759ljp.172.1640782024270;
        Wed, 29 Dec 2021 04:47:04 -0800 (PST)
X-Google-Smtp-Source: ABdhPJysgtAYCi/aDd+5Ib3QCtjvGG5GYx3B+fcDxG5/MXwsPeTVwy8kTmO4sA8Z7NWAnwKjLlaM4g==
X-Received: by 2002:a2e:a58e:: with SMTP id m14mr9998733ljp.172.1640782024076;
        Wed, 29 Dec 2021 04:47:04 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id e11sm711158ljn.73.2021.12.29.04.47.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Dec 2021 04:47:03 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>,
        Inki Dae <inki.dae@samsung.com>,
        Jaewon Kim <jaewon02.kim@samsung.com>,
        Beomho Seo <beomho.seo@samsung.com>
Subject: [PATCH 3/5] regulator: dt-bindings:  maxim,max77843: add MAX77843 bindings
Date:   Wed, 29 Dec 2021 13:46:29 +0100
Message-Id: <20211229124631.21576-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211229124631.21576-1-krzysztof.kozlowski@canonical.com>
References: <20211229124631.21576-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the bindings for MAX77843 regulator driver.  The bindings are
almost identical to MAX77693 bindings, except the actual names of
regulators.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/regulator/maxim,max77843.yaml    | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77843.yaml

diff --git a/Documentation/devicetree/bindings/regulator/maxim,max77843.yaml b/Documentation/devicetree/bindings/regulator/maxim,max77843.yaml
new file mode 100644
index 000000000000..1ab58c756d7c
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/maxim,max77843.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/maxim,max77843.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim MAX77843 MicroUSB and Companion Power Management IC regulators
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+
+description: |
+  This is a part of device tree bindings for Maxim MAX77843 MicroUSB Integrated
+  Circuit (MUIC).
+
+  See also Documentation/devicetree/bindings/mfd/maxim,max77843.yaml for
+  additional information and example.
+
+properties:
+  compatible:
+    const: maxim,max77843-regulator
+
+patternProperties:
+  "^SAFEOUT[12]$":
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
+required:
+  - compatible
+
+additionalProperties: false
-- 
2.32.0

