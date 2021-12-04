Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87E5A4687F4
	for <lists+devicetree@lfdr.de>; Sat,  4 Dec 2021 22:58:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239027AbhLDWBx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Dec 2021 17:01:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345118AbhLDWBv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Dec 2021 17:01:51 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 613ABC0611F7
        for <devicetree@vger.kernel.org>; Sat,  4 Dec 2021 13:58:25 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id a18so13710137wrn.6
        for <devicetree@vger.kernel.org>; Sat, 04 Dec 2021 13:58:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OIuM9QzqoLSFp3o3v/6I/jeSHjCIRjfuq2y/Qtcg3dU=;
        b=guEL/LYFODWZtYgGWTT82FmEEfrU1piwF61bAdA/kRXmwzUDlYhp/8Wa6MxeeUD938
         W3R3B6tq03zgy23TTDn1+r5kqsedC14k0Pl5XJxXLPPEelVzbwFhKt87cP2WGdCf7ED9
         NmDSsyugYA5Ri0uTA4QaOtWpr8T0KpY0fTMtzj3FGII6FTWL4XopYEx07jODF/kz/4xW
         WlUbHONDt2oR1hflwi5SORrp3OW57ZoNBmtlcpKRfMNg4u1DXHxoc09Rj9+atgOGztEh
         Mz6XNor2OwUd2bVYlT/iSbj/KzKbzGMvEwiesDF+WJrA7z45fJuCg3EPHSo5Hx2NRwn9
         veoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OIuM9QzqoLSFp3o3v/6I/jeSHjCIRjfuq2y/Qtcg3dU=;
        b=I6WWvuQhUomjca9talgcj2QyZP5lMXGa3QuKDPYQ0JhVFB+LtkkbxKNkj3nL6heu8K
         rOxx/ZeuVrat/o0kf2HiJcDGNQtTFebI9PdKZnNPvplSQA3tS2JShUCiqGZgayK7pHxC
         RxJnueGKFePHdV9nteAs/QqJ+HurRz8m0sXstd0z0RaNASXuuGSVZ+w+eDpb03wnULbF
         B+oaoCOot8K+BYQL/7pAoaezhsTFcbrAdcgjPQN1vD2Xhw4Xn3jvs8sXJB8B8IgyHJWK
         6xS1nGkH/JTgJNpCitglt0zmxXDCSWKQzMUsCC4PK4Q3ViLrsxvSqyAXqvvsX5QMcYzi
         ZKEQ==
X-Gm-Message-State: AOAM533PlRwk3ZVgrzZB+BiUjeWCKXMqQQX+///SeAGFw+BJZPFYTd4P
        CBDZ7j9MpO94Kkyx6p0Eh0samA==
X-Google-Smtp-Source: ABdhPJxbrDFxkUAOgWvM+44xRXXtgeVVavjqM36SNOAQ/Qz/wTliP9/VerP4TSuSWA9gKyhIWBbVZw==
X-Received: by 2002:a05:6000:1544:: with SMTP id 4mr32005740wry.358.1638655103992;
        Sat, 04 Dec 2021 13:58:23 -0800 (PST)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id c6sm11816119wmq.46.2021.12.04.13.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Dec 2021 13:58:23 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Jaewon Kim <jaewon02.kim@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        David Virag <virag.david003@gmail.com>,
        Youngmin Nam <youngmin.nam@samsung.com>,
        Wolfram Sang <wsa@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH v2 RESEND 2/8] dt-bindings: i2c: exynos5: Add exynosautov9-hsi2c compatible
Date:   Sat,  4 Dec 2021 23:58:14 +0200
Message-Id: <20211204215820.17378-3-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211204215820.17378-1-semen.protsenko@linaro.org>
References: <20211204215820.17378-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jaewon Kim <jaewon02.kim@samsung.com>

This patch adds new "samsung,exynosautov9-hsi2c" compatible.
It is for i2c compatible with HSI2C available on Exynos SoC with USI.

Signed-off-by: Jaewon Kim <jaewon02.kim@samsung.com>
Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
Changes in v2:
  - Added R-b tag by Krzysztof Kozlowski
  - Removed quotes around compatible strings
  - Added Exynos850 to comment

 Documentation/devicetree/bindings/i2c/i2c-exynos5.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-exynos5.yaml b/Documentation/devicetree/bindings/i2c/i2c-exynos5.yaml
index 16853f6edc53..bb6c22fbc442 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-exynos5.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-exynos5.yaml
@@ -13,6 +13,11 @@ description: |
   The Samsung's High Speed I2C controller is used to interface with I2C devices
   at various speeds ranging from 100kHz to 3.4MHz.
 
+  In case the HSI2C controller is encapsulated within USI block (it's the case
+  e.g. for Exynos850 and Exynos Auto V9 SoCs), it might be also necessary to
+  define USI node in device tree file, choosing "i2c" configuration. Please see
+  Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml for details.
+
 allOf:
   - $ref: /schemas/i2c/i2c-controller.yaml#
 
@@ -23,6 +28,7 @@ properties:
           - samsung,exynos5250-hsi2c    # Exynos5250 and Exynos5420
           - samsung,exynos5260-hsi2c    # Exynos5260
           - samsung,exynos7-hsi2c       # Exynos7
+          - samsung,exynosautov9-hsi2c  # ExynosAutoV9 and Exynos850
       - const: samsung,exynos5-hsi2c    # Exynos5250 and Exynos5420
         deprecated: true
 
-- 
2.30.2

