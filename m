Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80E544A319A
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 20:37:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353102AbiA2ThS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 14:37:18 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:37340
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1353097AbiA2ThH (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Jan 2022 14:37:07 -0500
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 83C573F1E6
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 19:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643485018;
        bh=Fc1eyAl7NybW6jYdngJRL9d8j3U5amMxubQkyGhXpG4=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=PgOrk954aJll0U8qHwyfFHfOjAnd61R9wrh74AJF9KhEm1VKcWLNLv6LYNnQxa4Kl
         OBKHAfLpQr6mMqNOkOt7MZ12D8JIpzdJZwitmkod/IX+bWSqmwRR5y/etP2U4Y3IsO
         JJtswVzJzczbxAcuq7YmIr85d+HYIuUrRw/Gv1iEamxL4GNbjn2BS/7Oq3dysUmRIH
         XeSrFw6VZg8k+zL43IzB3zh/fJAz3VlDv1AdvAbrbN3NVejkla4An8Y9hj58As6wFV
         kz3z6Jk1ETbAouWF7bYygJKC93haR7pkSKnUAvcHH+etCaZYbYhvN9wy4pkT1oBNDe
         M//K325mNHeWg==
Received: by mail-ed1-f70.google.com with SMTP id w23-20020a50d797000000b00406d33c039dso4776420edi.11
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 11:36:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Fc1eyAl7NybW6jYdngJRL9d8j3U5amMxubQkyGhXpG4=;
        b=ivvu0xp8TP2TdNLIkhFpAUv6yiu5jpa0NS4NoCrYV9Pev+V9tDekiEb2LE94bLtPoz
         /Ubq+I86gu8Cd5Hc+WZOMo33JEvFJ/HGmSiGDol6FaGyfzjAsAiLnxlmtjYdRCE1jIB3
         ZxVxl0eqPUf4RDqKN+b0wiztKDpaEa2+6P2yN+/oXn0fuAbCs7QpyjaSsKhUXS82B35w
         znAmC2SorAK7N7xN6ows9IgiwQ2aFHnIAWbvnXlZhYURBOXWFPZJpoxuYxnJLqPH1Jvz
         G0v1xfopUFjrkzm6wKFnkWqDWRzGzqZoxPkojWiAMIviLsf8xO5OYNAAbss3U1iPdS9i
         yphQ==
X-Gm-Message-State: AOAM530P5Iiqj6BVyUPQXGxgNi7SvcRaWBPXxUVio7wKAFlyrApRvyCn
        wXxMalmBuX0fWLOUsnn4qvmiQ6DT9L8aI6X14NUFS43rM6Wel8S+JDVvjp1IHvt9RWDIjh9S3bb
        T+B/oDrKrbQzejkO8ElCUOSSfNftmnz56xKnImmE=
X-Received: by 2002:a17:907:6096:: with SMTP id ht22mr11140555ejc.611.1643485018007;
        Sat, 29 Jan 2022 11:36:58 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw2C00tlFyQ3RoELXj4WirLkICa8agfl7xt6lK1t4z9axQaIvO2QsBaGqe8J3bXTyJSyrs97A==
X-Received: by 2002:a17:907:6096:: with SMTP id ht22mr11140538ejc.611.1643485017831;
        Sat, 29 Jan 2022 11:36:57 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id bf21sm14968026edb.2.2022.01.29.11.36.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jan 2022 11:36:56 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH 7/8] dt-bindings: phy: samsung: move SATA phy I2C to trivial devices
Date:   Sat, 29 Jan 2022 20:36:45 +0100
Message-Id: <20220129193646.372481-7-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
References: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The I2C interface for Samsung Exynos SoC SATA phy is a very simple and
limited, so move it to trivial devices.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/phy/samsung-phy.txt        | 14 --------------
 .../devicetree/bindings/trivial-devices.yaml       |  2 ++
 2 files changed, 2 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/samsung-phy.txt b/Documentation/devicetree/bindings/phy/samsung-phy.txt
index 1ee78016dc72..b0abeb4ac0a2 100644
--- a/Documentation/devicetree/bindings/phy/samsung-phy.txt
+++ b/Documentation/devicetree/bindings/phy/samsung-phy.txt
@@ -1,17 +1,3 @@
-Device-Tree bindings for sataphy i2c client driver
---------------------------------------------------
-
-Required properties:
-compatible: Should be "samsung,exynos-sataphy-i2c"
-- reg: I2C address of the sataphy i2c device.
-
-Example:
-
-	sata_phy_i2c:sata-phy@38 {
-		compatible = "samsung,exynos-sataphy-i2c";
-		reg = <0x38>;
-	};
-
 Samsung Exynos5 SoC series USB DRD PHY controller
 --------------------------------------------------
 
diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 091792ba993e..d53a4b2f81aa 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -283,6 +283,8 @@ properties:
           - renesas,isl29501
             # S524AD0XF1 (128K/256K-bit Serial EEPROM for Low Power)
           - samsung,24ad0xd1
+            # Samsung Exynos SoC SATA PHY I2C device
+          - samsung,exynos-sataphy-i2c
             # Sensirion low power multi-pixel gas sensor with I2C interface
           - sensirion,sgpc3
             # Sensirion multi-pixel gas sensor with I2C interface
-- 
2.32.0

