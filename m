Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72276494187
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 21:10:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357293AbiASUKV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 15:10:21 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:46328
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1357279AbiASUKT (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 19 Jan 2022 15:10:19 -0500
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D95F640056
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 20:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642623018;
        bh=GRu1K5Z3B26B9M12OsHXKA/4Epty9FsW9mnGuNMchEQ=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Ef73SsVzIsFg/zign28CXPuAF35dEXeYWtTH0hMuISwXS3XDW5GqZeM5QT5EsSL21
         0ZPcSsmvkOS70EA8g/Y+BrAc2yIoYEeF4qXVzck3jxOivBLIj6UvuFv3U4xFpoZ4YP
         TlRPH7hEz9nt29xkELqtvZqhftsGNi/AXByVDbyEv8q5P5KWCvdODiXhSx0EXeFR9J
         UN0bLVapgs9P43BTwtNyHX3RR8Fn+xsJFJHQWQ37eL/7uqAS6JQzyhbtMEaO/7ad9l
         8T1KG+weuPcvaH/cvUJCYKjj+TSBn6ZnKH07ssvQeCZ2BCPt8WTko/aGrDh2qWITha
         5snK7MkgsFfuQ==
Received: by mail-ed1-f69.google.com with SMTP id h21-20020aa7c955000000b0040390b2bfc5so3710076edt.15
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 12:10:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GRu1K5Z3B26B9M12OsHXKA/4Epty9FsW9mnGuNMchEQ=;
        b=ieOaJvSKawvXLpeLkkCokH5tGSeSEl1znFLHZFGQJEg97tFs5znFiS9KWBytvlTQ5z
         S4plrwTQEJoCAUog82gM78AP9sDEJPpO+dGJqs218brT6I/6or/gqsMeZCG6Mfo7w3iz
         WDB5NG5WmwAbCVeJpErx7Yw801dnTh1zdNQV/yjhCIZiesGy6Ql5o/jfP3F9caNQrvIR
         Ova8LdHXCqmZKvabnk7gyQNiQBdBNHAlB7tnWCMiKN+v3iBaopNKTcBJjxD+8xaZFSpQ
         7gdgRu8AlVhm2LowCBlSqcYhduRROfe6zD8gSB3p4bAL7A6rykm/xKxjSVBYW8UMmELf
         RrJA==
X-Gm-Message-State: AOAM532qHXoK8lbxHt7BDGbvAp0aLSbO072198+bnm5SOfCepHZLzIWs
        5gFwyRVaNHdSwyDNpQCJHDEr76AxPRfL28Ce1WSfZXO5nJ03gm4NIB6pBvITUBY2GGgvvWlPO2r
        HeVeH8C7lgvW2eJ1BQPGopx6ZeOHh/ZTRI1XZOIE=
X-Received: by 2002:a17:906:4fc4:: with SMTP id i4mr24859427ejw.81.1642623018351;
        Wed, 19 Jan 2022 12:10:18 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxat/3cH7VlKTaOJ6D43ir//wPM5jj+urjF4BtAx24WJHWak7JOycKsnfW1x835sJOSJKku+Q==
X-Received: by 2002:a17:906:4fc4:: with SMTP id i4mr24859404ejw.81.1642623018122;
        Wed, 19 Jan 2022 12:10:18 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id a26sm215005ejr.213.2022.01.19.12.10.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 12:10:15 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Balletbo i Serra <enric.balletbo@collabora.com>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Pratyush Yadav <p.yadav@ti.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-spi@vger.kernel.org
Cc:     Alim Akhtar <alim.akhtar@samsung.com>
Subject: [PATCH v4 4/5] mfd: dt-bindings: google,cros-ec: reference Samsung SPI bindings
Date:   Wed, 19 Jan 2022 21:10:04 +0100
Message-Id: <20220119201005.13145-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220119201005.13145-1-krzysztof.kozlowski@canonical.com>
References: <20220119201005.13145-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ChromeOS Embedded Controller appears on boards with Samsung Exynos
SoC, where Exynos SPI bindings expect controller-data node.  Reference
newly added dtschema for this property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/mfd/google,cros-ec.yaml          | 29 ++++++++++---------
 1 file changed, 16 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
index d793dd0316b7..e9c46430fd8a 100644
--- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
+++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
@@ -32,7 +32,7 @@ properties:
 
   controller-data:
     description:
-      SPI controller data, see bindings/spi/spi-samsung.txt
+      SPI controller data, see bindings/spi/samsung,spi-peripheral-props.yaml
     type: object
 
   google,cros-ec-spi-pre-delay:
@@ -149,18 +149,21 @@ patternProperties:
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
+
+  - $ref: /schemas/spi/samsung,spi-peripheral-props.yaml
 
 additionalProperties: false
 
-- 
2.32.0

