Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 672804985B2
	for <lists+devicetree@lfdr.de>; Mon, 24 Jan 2022 18:04:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231234AbiAXREt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jan 2022 12:04:49 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:40290
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S244081AbiAXREZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 24 Jan 2022 12:04:25 -0500
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 602FF3F1B4
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 17:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643043863;
        bh=5FFlQVfiPYwOVz/qR1ttwGkalvSmqMhuguJRa3JpJFQ=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=BAbFdxTH+04zSV8f042I3CptWuCMotUqIfGbyLdOmCjYkBIoyIayG55/NICYbR3O/
         EmfBEghH/iYw6sAwmF2TCCC26Ki+zUOBY4qiDJeycDV8oRbUzqOgts4i1Prz7gXXum
         j39PgfstY8mPOrrQPrgPMeo2YkL/C4R5LIhvqbFAql3inu39urIwxL2x9owsOA4cnP
         BXSDC+QjGXb+r7CohFmsbQ4VMCd87kBG3kbFSH2Z04SK7g7AoDeynp7CPBgTbGE58w
         pAJhGBPZbRqkOkh+Jxa6KjyICoO4xnEjaSJACahQtTLSJCwOnYjNmMsz8DBS7+zm+4
         XSiY5MjSUS0LQ==
Received: by mail-ej1-f71.google.com with SMTP id 13-20020a170906328d00b006982d0888a4so2332892ejw.9
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 09:04:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5FFlQVfiPYwOVz/qR1ttwGkalvSmqMhuguJRa3JpJFQ=;
        b=PJD090mA69/mY8l42YKVubkuofOd10Bds0w937jx754OggFNEJXN6JJaojWWaScjjB
         JTaBsGpcP+gfKlyit4UIpOrU+165tpd4VAosYiR5l983W7sK4mcRkvNGhTnwD+3LKfm2
         m1cbEapKMkTFMwQYNqM+R3xB+FEh6guMcQPFS0m6BuCHH3oCNac1ZyhC0XJqO+R/DYTj
         tWz+Mn5K1sPMtzt/6DAd4uFRSDatX2KXYuA9TfCkOFzi51hngBkDGZDjccKD6M07Yv5h
         7enRLLIp4DQX+BsnZNb8MGxQsIFf3XW7DbyPtRyXNh22p/SFZvX1pUUg+3F86MqjdlLl
         E4EQ==
X-Gm-Message-State: AOAM530p+048tVer7m/VGpmsONowOjKzSuEXBZanLwnRH1Xi504yuyGF
        fv/MRFfuOJyODam4FHqN7BF6mSFRSv1+VnFWMVjNZBp3rA9TvsXUdWsQAI+G8InydiUKZ1dtEsm
        NarIxKlH4rljhxhIdMCvIZITjmBx+syHscdwIwvw=
X-Received: by 2002:a17:906:7003:: with SMTP id n3mr13196770ejj.160.1643043861297;
        Mon, 24 Jan 2022 09:04:21 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwSHmcPIiDwaWIhrNLyt3hgJ6DEahlcrBImfV1TaDHD72Fiq6kwC/08hZHQNxbcb99lYE/AuA==
X-Received: by 2002:a17:906:7003:: with SMTP id n3mr13196752ejj.160.1643043861075;
        Mon, 24 Jan 2022 09:04:21 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id o11sm6903846edh.75.2022.01.24.09.04.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jan 2022 09:04:20 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Jonathan Bakker <xc-racer2@live.ca>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/6] ASoC: dt-bindings: samsung,arndale: convert to dtschema
Date:   Mon, 24 Jan 2022 18:03:32 +0100
Message-Id: <20220124170336.164320-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220124170336.164320-1-krzysztof.kozlowski@canonical.com>
References: <20220124170336.164320-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the audio complex on Arndale boards with Samsung Exynos SoC to
DT schema format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/sound/arndale.txt     | 25 -----------
 .../bindings/sound/samsung,arndale.yaml       | 44 +++++++++++++++++++
 2 files changed, 44 insertions(+), 25 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/arndale.txt
 create mode 100644 Documentation/devicetree/bindings/sound/samsung,arndale.yaml

diff --git a/Documentation/devicetree/bindings/sound/arndale.txt b/Documentation/devicetree/bindings/sound/arndale.txt
deleted file mode 100644
index 17530120ccfc..000000000000
--- a/Documentation/devicetree/bindings/sound/arndale.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-Audio Binding for Arndale boards
-
-Required properties:
-- compatible : Can be one of the following:
-		"samsung,arndale-rt5631",
-		"samsung,arndale-wm1811"
-
-- samsung,audio-cpu: The phandle of the Samsung I2S controller
-- samsung,audio-codec: The phandle of the audio codec
-
-Optional:
-- samsung,model: The name of the sound-card
-
-Arndale Boards has many audio daughter cards, one of them is
-rt5631/alc5631. Below example shows audio bindings for rt5631/
-alc5631 based codec.
-
-Example:
-
-sound {
-		compatible = "samsung,arndale-rt5631";
-
-		samsung,audio-cpu = <&i2s0>
-		samsung,audio-codec = <&rt5631>;
-};
diff --git a/Documentation/devicetree/bindings/sound/samsung,arndale.yaml b/Documentation/devicetree/bindings/sound/samsung,arndale.yaml
new file mode 100644
index 000000000000..e7dc65637f02
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/samsung,arndale.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/samsung,arndale.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Insignal Arndale boards audio complex
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+  - Sylwester Nawrocki <s.nawrocki@samsung.com>
+
+properties:
+  compatible:
+    enum:
+      - samsung,arndale-rt5631
+      - samsung,arndale-wm1811
+
+  samsung,audio-codec:
+    description: Phandle to the audio codec.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  samsung,audio-cpu:
+    description: Phandle to the Samsung I2S controller.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  samsung,model:
+    description: The user-visible name of this sound complex.
+    $ref: /schemas/types.yaml#/definitions/string
+
+required:
+  - compatible
+  - samsung,audio-codec
+  - samsung,audio-cpu
+
+additionalProperties: false
+
+examples:
+  - |
+    sound {
+        compatible = "samsung,arndale-rt5631";
+        samsung,audio-cpu = <&i2s0>;
+        samsung,audio-codec = <&rt5631>;
+    };
-- 
2.32.0

