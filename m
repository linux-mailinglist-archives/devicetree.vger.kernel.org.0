Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AB5C497A37
	for <lists+devicetree@lfdr.de>; Mon, 24 Jan 2022 09:24:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242179AbiAXIYA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jan 2022 03:24:00 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:58602
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S242163AbiAXIX6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 24 Jan 2022 03:23:58 -0500
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 807663F1B7
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 08:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643012636;
        bh=E9f604EUNMRc1K0x625ft9mXrJ60309YtLmhBOy5gsM=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=krpX14GcICWLsL0a/tgbafea99pUnZUgHIz+ijTHS6lDbyUWw9zQeofscY4yzobZo
         2SPO6V5Z/U+S1iJScsvSda+7sOZSb+NHdZvB4XblexwktgPKOMNVULtqlUmkEiiKJn
         0rBQK9CXOtPhP/d3B8WyDDh01A10SfxCbknFX7hP+IWQ8RBGescDiQ0cGalG/R/wws
         bidscfLJXqoMxaBukIxJ041DsUbLjbAyuNCqMYmS3LtAIAJMsmVfLaEXh22Nkzc7mX
         XK7HRBQPl3hCKuPvszym3aRDVhuZ1V4VxzGVLKHiYOJwOCFLFUFyIROkW/dry8LtZJ
         4JaoxbN6up26A==
Received: by mail-wm1-f72.google.com with SMTP id n7-20020a1c7207000000b0034ec3d8ce0aso3683069wmc.8
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 00:23:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=E9f604EUNMRc1K0x625ft9mXrJ60309YtLmhBOy5gsM=;
        b=iGjpsrMRLiNUrDa+lPe2HqkizaCb5gfEHJBi7QMd6CrAoYAtY/r6AYaA4jGX09xVjM
         rKBBE595khaaj5k/8y5VS2gUHYhWpmKBZ1iU0pxZwA4Zq4lMWgCc3RkbtbEZhnbqPsLl
         zJO3otTZa65PNRfclLFMTXCZfF57oXkvf2V9xTxXDyyfwnD57SfILHqVa8jL93yrGbpM
         3OcbzJlzHA+AR2JaIVmYD44eJWQCEGceKUS1oNQClNc5cZVogPdrgdY43HhTsOzhyPnq
         UTbJfGOYag4KOSUeCnpm4NAaF/kMsDEboCy8xLoi8M6tchLV2N5lWPrxyLw1BfmENsjI
         t7rw==
X-Gm-Message-State: AOAM530ucER2IGK/ZMY37M8cUB/2f23RY3s61tTI3PHeIMl4KGDTQSA3
        qltlULwFNsftrurBfAHY+KVS4hGG3vzCR3W7jy/j721TW93gI+V3ucgK+EwBMfLoysBDyfveofP
        V6VfsWFuEccyJU23u82rgOe/3AI1LTxhUT7xxP3M=
X-Received: by 2002:a5d:4803:: with SMTP id l3mr9501291wrq.339.1643012635037;
        Mon, 24 Jan 2022 00:23:55 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzpvjCvKyZkS3eDZZP0ZWE7Zg9akUafDchzT87csJ7JBjny0Ukmeg3wKlAmCj1K+MrEAi1FMw==
X-Received: by 2002:a5d:4803:: with SMTP id l3mr9501274wrq.339.1643012634897;
        Mon, 24 Jan 2022 00:23:54 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id m64sm7148550wmm.31.2022.01.24.00.23.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jan 2022 00:23:54 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Pratyush Yadav <p.yadav@ti.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-spi@vger.kernel.org
Subject: [PATCH v6 2/4] mfd: dt-bindings: google,cros-ec: reference Samsung SPI bindings
Date:   Mon, 24 Jan 2022 09:23:45 +0100
Message-Id: <20220124082347.32747-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220124082347.32747-1-krzysztof.kozlowski@canonical.com>
References: <20220124082347.32747-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ChromeOS Embedded Controller appears on boards with Samsung Exynos
SoC, where Exynos SPI bindings expect controller-data node.  Reference
SPI peripheral bindings which include now Samsung SPI peripheral parts.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/mfd/google,cros-ec.yaml          | 29 ++++++++++---------
 1 file changed, 16 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
index d1f53bd449f7..525ab18005b3 100644
--- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
+++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
@@ -31,7 +31,7 @@ properties:
 
   controller-data:
     description:
-      SPI controller data, see bindings/spi/spi-samsung.txt
+      SPI controller data, see bindings/spi/samsung,spi-peripheral-props.yaml
     type: object
 
   google,cros-ec-spi-pre-delay:
@@ -148,18 +148,21 @@ patternProperties:
 required:
   - compatible
 
-if:
-  properties:
-    compatible:
-      contains:
-        enum:
-          - google,cros-ec-i2c
-          - google,cros-ec-rpmsg
-then:
-  properties:
-    google,cros-ec-spi-pre-delay: false
-    google,cros-ec-spi-msg-delay: false
-    spi-max-frequency: false
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - google,cros-ec-i2c
+              - google,cros-ec-rpmsg
+    then:
+      properties:
+        google,cros-ec-spi-pre-delay: false
+        google,cros-ec-spi-msg-delay: false
+        spi-max-frequency: false
+    else:
+      $ref: /schemas/spi/spi-peripheral-props.yaml
 
 additionalProperties: false
 
-- 
2.32.0

