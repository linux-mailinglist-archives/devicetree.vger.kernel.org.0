Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E84A49417A
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 21:10:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357265AbiASUKQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 15:10:16 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:58544
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243404AbiASUKN (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 19 Jan 2022 15:10:13 -0500
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id C3EA440045
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 20:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642623012;
        bh=OI1v3v2do2JpaG4iEWGXiW3KIkLzyCyv5Mi1khRNczo=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=TQrg4YnbKM/vt2oK8zcGLazqy7A/rK0TpcCU1lV9rHCRs7+oOlRsWH8zDyIfmyLuD
         zHvWU1AfMB/MSD1Kh7naE3Uy4CYqocaHVt7ZmdNjefZjVhInZoa8s68K7n3d9LDX9v
         bUk58eNSI9MnHRXM2yLpBVgQDQx8PxcXC3/67tbgzYu3SKKGwoUt980qEs64Mz406y
         5BqCqjuJlMUtdo5aNvmvfDKOXi6ayAMtRGRyBZSYYGi6EddjoA/V+AqzNV4xUTueeg
         H77A6ZSc3dvnjOZW4Uue9syUZvQsRnhSAcLXRC8fN7c5ytbcSW8GXmSTvYs7jbQFu0
         YfyTRqJ7VdmxA==
Received: by mail-ed1-f71.google.com with SMTP id t13-20020a05640203cd00b00403cefbefe7so3746436edw.7
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 12:10:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OI1v3v2do2JpaG4iEWGXiW3KIkLzyCyv5Mi1khRNczo=;
        b=of2qZ4GeQ82mWVP38e1NsvhS5sWX317CkdY9H1n8+GWt1fu9kV806xufEAwUUadzLA
         h6URAjR1TL1i9EK3773zSS3nbT3Lr2fcgelTnOrNabO/TsB+nAfOXNTbCcTpCnAbYv/p
         9sm/NjO8z9M2q/xlAozfdCGLrc067A9b90PyiYVe6IDPcEwN+ZyVl/8WavXosi157Emf
         TR33k5mlRekZCYcPg/b9UPfzvS9eCMIfcn0M28rcmOYDu2cY3cMfeb2iGakF93g9CinS
         Z0Ftu63H0Z+Fuig+q1ILZBBFFwbFJJU/Z9/1AcTTvwnxbLbeoRXkVZCgKeMSiytibmbJ
         asNA==
X-Gm-Message-State: AOAM5334J/U34f2WXDoH1YbHZoEUJ9gjrEdVw9+FeSGc42IUUhTiTXJF
        hXzuZsHNoOc6I33XnKTtfhrxfP3+9rLYtvcXZAZge6FgfGu76hf4eTrB1c6UAIB/G08CkKVI7eh
        PO5ew6Ro8gZ5kXbRXDvmkVUepScIV68REDC12hbE=
X-Received: by 2002:a17:907:6d9b:: with SMTP id sb27mr16562567ejc.139.1642623012133;
        Wed, 19 Jan 2022 12:10:12 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwbMDqql6veyRi+CRtgtcNlpTb3anuIsgG8+eGO4+VxQIYp/p5x9Z3ynE8z5H2EjzPVr7tcTw==
X-Received: by 2002:a17:907:6d9b:: with SMTP id sb27mr16562535ejc.139.1642623011894;
        Wed, 19 Jan 2022 12:10:11 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id a26sm215005ejr.213.2022.01.19.12.10.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 12:10:10 -0800 (PST)
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
Subject: [PATCH v4 1/5] ARM: dts: exynos: split dmas into array of phandles in Exynos5250
Date:   Wed, 19 Jan 2022 21:10:01 +0100
Message-Id: <20220119201005.13145-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220119201005.13145-1-krzysztof.kozlowski@canonical.com>
References: <20220119201005.13145-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"dmas" property should be rather an array of phandles, as dtschema
points.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Andi Shyti <andi@etezian.org>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 arch/arm/boot/dts/exynos5250.dtsi | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5250.dtsi b/arch/arm/boot/dts/exynos5250.dtsi
index 139778928b93..102bb57bf704 100644
--- a/arch/arm/boot/dts/exynos5250.dtsi
+++ b/arch/arm/boot/dts/exynos5250.dtsi
@@ -496,8 +496,7 @@ spi_0: spi@12d20000 {
 			status = "disabled";
 			reg = <0x12d20000 0x100>;
 			interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>;
-			dmas = <&pdma0 5
-				&pdma0 4>;
+			dmas = <&pdma0 5>, <&pdma0 4>;
 			dma-names = "tx", "rx";
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -512,8 +511,7 @@ spi_1: spi@12d30000 {
 			status = "disabled";
 			reg = <0x12d30000 0x100>;
 			interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
-			dmas = <&pdma1 5
-				&pdma1 4>;
+			dmas = <&pdma1 5>, <&pdma1 4>;
 			dma-names = "tx", "rx";
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -528,8 +526,7 @@ spi_2: spi@12d40000 {
 			status = "disabled";
 			reg = <0x12d40000 0x100>;
 			interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
-			dmas = <&pdma0 7
-				&pdma0 6>;
+			dmas = <&pdma0 7>, <&pdma0 6>;
 			dma-names = "tx", "rx";
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.32.0

