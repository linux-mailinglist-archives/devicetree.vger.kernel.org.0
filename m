Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4FD34985B3
	for <lists+devicetree@lfdr.de>; Mon, 24 Jan 2022 18:04:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244084AbiAXREu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jan 2022 12:04:50 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:40310
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S244090AbiAXRE0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 24 Jan 2022 12:04:26 -0500
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id D791D3F1D1
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 17:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643043864;
        bh=aFma7LFfbMy+pdLU8XgqpfQtVODFsB45EwHFjG4cPHo=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=SiQ4G+BFKx8MddiYx4chwyr2IFI6lXHfzKaLtP6uEhUsw0hSoUStiwrR+NPhOF1ux
         +ToWy/5kJ7TNxoipEcQCGhDKbZXZWCC5+W2obtdXdT4J+g1zwv6sx1v+At0rnzYKZI
         IFWAx/BQ6KAWTdbeWJhXsrPM9iU2LvqY9A2lS3ab543GBceZEEMRO1lePfuGyq339C
         CTTXPWHCNXFzWjd6UPMwA9RJO7q+XEilpARIfcvp9zfeJKQLtNM9XzQbqzMXstpxGy
         hFMVHskYG9713tw4ouiqd98Z3usGAAdA8rR+T2jcXBc+ioqPENU8QLrgHfWbZELv5s
         OS+GExtH5apXA==
Received: by mail-ej1-f72.google.com with SMTP id p16-20020a170906785000b006b5d9c3d47fso2345494ejm.21
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 09:04:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aFma7LFfbMy+pdLU8XgqpfQtVODFsB45EwHFjG4cPHo=;
        b=Ni1uEuADXlYtvXX3v7PHWme1KB4Gaq3213mEOj6ypnltCOwn8rhVMJZjpyw1XKiMXP
         Deyb85XDSqCdA0cxBFVkir+C1iXQjhN1C+nIjzId81nAexw1SxMBelSJqlHItL1KHCd6
         I+1IG5anDTGZEDj24Hw1Ak0r8MEmH5Bts1t7ixtz2fABKf2UfjIOw+vorA81GdEJgYUn
         FKtpcIYoAlpzXT1QuJtpzcilGTgPAISugEfYC71nkC8H6uZdTiYTQFhSnMrddWE1uLNH
         Dqc9524hrJFvvhXOMYJab4fRFKPIWlgg7hX+xsJOOnfLGtqBlslt5mw9WRAN2Hh5Bd/5
         llQg==
X-Gm-Message-State: AOAM530ILL7gq5gnEA7+QqcjYm2YBke/aZtxjP/pGLlHuRpHVOYhC1SM
        34xfWOpIcVpxXy6t2/9WxZT5tJHCs2xyHBCjWtcyAdkDZ/PFkf/B3dP9bL9pIsT4Sb2TKux3ywB
        bJ8YXirdSn6tCswN3xS74O+5jFeturJcdvq1tg/c=
X-Received: by 2002:a17:907:160d:: with SMTP id hb13mr2478834ejc.609.1643043864494;
        Mon, 24 Jan 2022 09:04:24 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy8dy0UNUYy8V7YlFigpm3/abtk7yXYoxh8/7MuNjbTZltb26qnfPnsmVYy3oKPQLI1sLWBSA==
X-Received: by 2002:a17:907:160d:: with SMTP id hb13mr2478820ejc.609.1643043864305;
        Mon, 24 Jan 2022 09:04:24 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id o11sm6903846edh.75.2022.01.24.09.04.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jan 2022 09:04:23 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Jonathan Bakker <xc-racer2@live.ca>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 4/6] ASoC: dt-bindings: samsung,smdk5250: convert to dtschema
Date:   Mon, 24 Jan 2022 18:03:34 +0100
Message-Id: <20220124170336.164320-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220124170336.164320-1-krzysztof.kozlowski@canonical.com>
References: <20220124170336.164320-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the audio complex on SMDK5250 boards with Samsung Exynos SoC to
DT schema format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/sound/samsung,smdk-wm8994.txt    | 14 -------
 .../bindings/sound/samsung,smdk5250.yaml      | 38 +++++++++++++++++++
 2 files changed, 38 insertions(+), 14 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/samsung,smdk-wm8994.txt
 create mode 100644 Documentation/devicetree/bindings/sound/samsung,smdk5250.yaml

diff --git a/Documentation/devicetree/bindings/sound/samsung,smdk-wm8994.txt b/Documentation/devicetree/bindings/sound/samsung,smdk-wm8994.txt
deleted file mode 100644
index 4686646fb122..000000000000
--- a/Documentation/devicetree/bindings/sound/samsung,smdk-wm8994.txt
+++ /dev/null
@@ -1,14 +0,0 @@
-Samsung SMDK audio complex
-
-Required properties:
-- compatible : "samsung,smdk-wm8994"
-- samsung,i2s-controller: The phandle of the Samsung I2S0 controller
-- samsung,audio-codec: The phandle of the WM8994 audio codec
-Example:
-
-sound {
-		compatible = "samsung,smdk-wm8994";
-
-		samsung,i2s-controller = <&i2s0>;
-		samsung,audio-codec = <&wm8994>;
-};
diff --git a/Documentation/devicetree/bindings/sound/samsung,smdk5250.yaml b/Documentation/devicetree/bindings/sound/samsung,smdk5250.yaml
new file mode 100644
index 000000000000..cb51af90435e
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/samsung,smdk5250.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/samsung,smdk5250.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung SMDK5250 audio complex with WM8994 codec
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+  - Sylwester Nawrocki <s.nawrocki@samsung.com>
+
+properties:
+  compatible:
+    const: samsung,smdk-wm8994
+
+  samsung,audio-codec:
+    description: Phandle to the audio codec.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  samsung,i2s-controller:
+    description: Phandle to the Samsung I2S controller.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+required:
+  - compatible
+  - samsung,audio-codec
+  - samsung,i2s-controller
+
+additionalProperties: false
+
+examples:
+  - |
+    sound {
+        compatible = "samsung,smdk-wm8994";
+        samsung,i2s-controller = <&i2s0>;
+        samsung,audio-codec = <&wm8994>;
+    };
-- 
2.32.0

