Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36ED755B2D7
	for <lists+devicetree@lfdr.de>; Sun, 26 Jun 2022 18:34:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231403AbiFZQdf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Jun 2022 12:33:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231255AbiFZQdb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Jun 2022 12:33:31 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 912D865FB
        for <devicetree@vger.kernel.org>; Sun, 26 Jun 2022 09:33:29 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id z19so9914584edb.11
        for <devicetree@vger.kernel.org>; Sun, 26 Jun 2022 09:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=68B9lJ1vmzx8DGV8aIXPTfB6PMzhU14Z31jyK76XQi0=;
        b=ly/4ffXIoVL9bTAPzHFXDg2QSNnrZffTLrDrkkzDT8vaM0YC9Wa7o5fuyzBO4/afDW
         GA2JgZrRuOdlFGWZIuxnrD4wm/4lda5EYGfwcA3GiOpv5c+vEw3C8lJ7lMswbXx6WKT/
         3jalfdPMfeEBNknwo+rz8JoF/9GWRXP6WRiirkgnHsoAVfqoMGNsdywizXLK4KtQoRjn
         CZIkwbMDaUiUlkr70fC3CV5GD1xuT2rVZ4ujyS0FzAoRB6NOt38sFKY2XaMyjs82Ll4g
         e1asTcCqq+HUDlNDMOThZ/lCmMnvG2+w3y7J22IiuGjzSVXJoJD6DX1w7YKkI5/sE1kW
         OGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=68B9lJ1vmzx8DGV8aIXPTfB6PMzhU14Z31jyK76XQi0=;
        b=e0ueJ4xrveDH+9UxRPtVkjpJUXHSEUbBhBrth7XlznDI3Jzhi9Uk7Nf7kRM60o4VjH
         jLD94w1VT0ZwMTwT510hELfSrY3oumkQcFOqivoIY5gGnmiIQinwOoGpZhSFEbRfe2aH
         Bli/zX7iIPAyNPR8OyEFB6kzzXIim4eGaglvjHHX/6bx0POMaTc34+R0Qd38scSskLyV
         FCNycW3SVu6W85j/IvGoaIL2KjyTUGqfD5iGhkyVqRVDFNd+jAiEHWDS5UKxT3piwQbd
         ogriQ72ejhwauDqISVYz+f3YIYwn360wHsH7PSueCXPP/GHJA9IF0IZ4hfcsu5Z0mXYT
         /J1A==
X-Gm-Message-State: AJIora8dYDl2BZs5CuE2M6B7YcSUL5KSIaoegyp9UiO9UV5H5HMCeneL
        wcn5F5NSlY/nNoB7VxLrVZFLCw==
X-Google-Smtp-Source: AGRyM1u1ZfRB1y3TcPVT4N9WeFl3Dl2yUL5xcrrcr5hym04I/wxAO0O+zyDC7FUtggQl28BDAZhUUg==
X-Received: by 2002:a05:6402:1907:b0:435:c243:a66e with SMTP id e7-20020a056402190700b00435c243a66emr11638456edz.44.1656261208128;
        Sun, 26 Jun 2022 09:33:28 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id g5-20020a17090613c500b00722fb3c99bcsm3930403ejc.203.2022.06.26.09.33.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jun 2022 09:33:27 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Inki Dae <inki.dae@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] dt-bindings: remove Joonyoung Shim from maintainers
Date:   Sun, 26 Jun 2022 18:33:20 +0200
Message-Id: <20220626163320.6393-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220626163320.6393-1-krzysztof.kozlowski@linaro.org>
References: <20220626163320.6393-1-krzysztof.kozlowski@linaro.org>
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

Emails to Joonyoung Shim bounce ("550 5.1.1 Recipient address rejected:
User unknown"), so remove him from maintainers of DT bindings (display,
phy).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/display/samsung/samsung,exynos-hdmi-ddc.yaml        | 1 -
 .../devicetree/bindings/display/samsung/samsung,exynos-hdmi.yaml | 1 -
 .../bindings/display/samsung/samsung,exynos-mixer.yaml           | 1 -
 .../bindings/display/samsung/samsung,exynos5433-decon.yaml       | 1 -
 .../bindings/display/samsung/samsung,exynos5433-mic.yaml         | 1 -
 .../bindings/display/samsung/samsung,exynos7-decon.yaml          | 1 -
 .../devicetree/bindings/display/samsung/samsung,fimd.yaml        | 1 -
 .../devicetree/bindings/phy/samsung,exynos-hdmi-phy.yaml         | 1 -
 8 files changed, 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi-ddc.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi-ddc.yaml
index 919734c05c0b..458d399cb025 100644
--- a/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi-ddc.yaml
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi-ddc.yaml
@@ -8,7 +8,6 @@ title: Samsung Exynos SoC HDMI DDC
 
 maintainers:
   - Inki Dae <inki.dae@samsung.com>
-  - Joonyoung Shim <jy0922.shim@samsung.com>
   - Seung-Woo Kim <sw0312.kim@samsung.com>
   - Kyungmin Park <kyungmin.park@samsung.com>
   - Krzysztof Kozlowski <krzk@kernel.org>
diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi.yaml
index 63379fae3636..e4a68c5a1a09 100644
--- a/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi.yaml
@@ -8,7 +8,6 @@ title: Samsung Exynos SoC HDMI
 
 maintainers:
   - Inki Dae <inki.dae@samsung.com>
-  - Joonyoung Shim <jy0922.shim@samsung.com>
   - Seung-Woo Kim <sw0312.kim@samsung.com>
   - Kyungmin Park <kyungmin.park@samsung.com>
   - Krzysztof Kozlowski <krzk@kernel.org>
diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,exynos-mixer.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,exynos-mixer.yaml
index 00e325a19cb1..25d53fde92e1 100644
--- a/Documentation/devicetree/bindings/display/samsung/samsung,exynos-mixer.yaml
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,exynos-mixer.yaml
@@ -8,7 +8,6 @@ title: Samsung Exynos SoC Mixer
 
 maintainers:
   - Inki Dae <inki.dae@samsung.com>
-  - Joonyoung Shim <jy0922.shim@samsung.com>
   - Seung-Woo Kim <sw0312.kim@samsung.com>
   - Kyungmin Park <kyungmin.park@samsung.com>
   - Krzysztof Kozlowski <krzk@kernel.org>
diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-decon.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-decon.yaml
index 7c37470bd329..921bfe925cd6 100644
--- a/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-decon.yaml
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-decon.yaml
@@ -8,7 +8,6 @@ title: Samsung Exynos5433 SoC Display and Enhancement Controller (DECON)
 
 maintainers:
   - Inki Dae <inki.dae@samsung.com>
-  - Joonyoung Shim <jy0922.shim@samsung.com>
   - Seung-Woo Kim <sw0312.kim@samsung.com>
   - Kyungmin Park <kyungmin.park@samsung.com>
   - Krzysztof Kozlowski <krzk@kernel.org>
diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-mic.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-mic.yaml
index c5c6239c28d0..7d405f2febcd 100644
--- a/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-mic.yaml
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-mic.yaml
@@ -8,7 +8,6 @@ title: Samsung Exynos5433 SoC Mobile Image Compressor (MIC)
 
 maintainers:
   - Inki Dae <inki.dae@samsung.com>
-  - Joonyoung Shim <jy0922.shim@samsung.com>
   - Seung-Woo Kim <sw0312.kim@samsung.com>
   - Kyungmin Park <kyungmin.park@samsung.com>
   - Krzysztof Kozlowski <krzk@kernel.org>
diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,exynos7-decon.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,exynos7-decon.yaml
index 320eedc61a5b..969bd8c563a5 100644
--- a/Documentation/devicetree/bindings/display/samsung/samsung,exynos7-decon.yaml
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,exynos7-decon.yaml
@@ -8,7 +8,6 @@ title: Samsung Exynos7 SoC Display and Enhancement Controller (DECON)
 
 maintainers:
   - Inki Dae <inki.dae@samsung.com>
-  - Joonyoung Shim <jy0922.shim@samsung.com>
   - Seung-Woo Kim <sw0312.kim@samsung.com>
   - Kyungmin Park <kyungmin.park@samsung.com>
   - Krzysztof Kozlowski <krzk@kernel.org>
diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,fimd.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,fimd.yaml
index c62ea9d22843..5d5cc220f78a 100644
--- a/Documentation/devicetree/bindings/display/samsung/samsung,fimd.yaml
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,fimd.yaml
@@ -8,7 +8,6 @@ title: Samsung S3C/S5P/Exynos SoC Fully Interactive Mobile Display (FIMD)
 
 maintainers:
   - Inki Dae <inki.dae@samsung.com>
-  - Joonyoung Shim <jy0922.shim@samsung.com>
   - Seung-Woo Kim <sw0312.kim@samsung.com>
   - Kyungmin Park <kyungmin.park@samsung.com>
   - Krzysztof Kozlowski <krzk@kernel.org>
diff --git a/Documentation/devicetree/bindings/phy/samsung,exynos-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,exynos-hdmi-phy.yaml
index 3e5f035de2e9..efc679c385ab 100644
--- a/Documentation/devicetree/bindings/phy/samsung,exynos-hdmi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,exynos-hdmi-phy.yaml
@@ -8,7 +8,6 @@ title: Samsung Exynos SoC HDMI PHY
 
 maintainers:
   - Inki Dae <inki.dae@samsung.com>
-  - Joonyoung Shim <jy0922.shim@samsung.com>
   - Seung-Woo Kim <sw0312.kim@samsung.com>
   - Kyungmin Park <kyungmin.park@samsung.com>
   - Krzysztof Kozlowski <krzk@kernel.org>
-- 
2.34.1

