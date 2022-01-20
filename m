Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 237574953B1
	for <lists+devicetree@lfdr.de>; Thu, 20 Jan 2022 18:58:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233207AbiATR55 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jan 2022 12:57:57 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:40620
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233165AbiATR54 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 20 Jan 2022 12:57:56 -0500
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 2209440024
        for <devicetree@vger.kernel.org>; Thu, 20 Jan 2022 17:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642701475;
        bh=OI1v3v2do2JpaG4iEWGXiW3KIkLzyCyv5Mi1khRNczo=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=ttuFDev1vQy8BIgnmjnFx9SC3mVOc8jh3xAFMa3EnDex9xqnSxJz3cCaM/BpVbPaz
         iSaOe8urJed97IeP0bOmpxix/xkiCOdisgpMKJGkx3yRY1X9OkC9drsmQ5xLELeI/I
         UIfgqLNSLYNNZjk6t8oSel+mQsg9UkaurEMzohJEh0Ju4fBtx3OMAe/Lp2suGzfy4b
         4u+lXzbjZtkCsZAxTm/zYZWhISYyqgiFDJXLqAKg2FN23usHyh9B0XBnyUwyoXVOqj
         5k9V56ZpjhF5HpKA6AYMJv/jxLYZRmzyhyu624TYx22qYoX6iOgL/tIXD6C+mXgawA
         g47XFOfb0QPhA==
Received: by mail-wm1-f70.google.com with SMTP id n14-20020a7bcbce000000b003488820f0d9so4562206wmi.8
        for <devicetree@vger.kernel.org>; Thu, 20 Jan 2022 09:57:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OI1v3v2do2JpaG4iEWGXiW3KIkLzyCyv5Mi1khRNczo=;
        b=1qIkHGASs6LnF+dYVb5wgmPodr0gmnA7UAbeFhlxwZdFdcSJNsIqtu6ywfSKpJUEgX
         kgC3QvSXN7kB6/qf4azQEe6ExR0qjE/HyaE8MNTIkC4++4cH+2I50nZLzXZ/5zOpKvlH
         VHYAvOgkWAfitQS4HMRcPwzPZf2lPdbX9utjT4Bk4kxbk+sPop/PImQ19mOZ7SyPqnXq
         vbNnitdryFmQmuDgrd761FI10EwSi913jDwazubqzQooiQiKC9sU774g59VWEIE6nYnk
         U9reFa7xVZfzxB2YSSncUXMV0o8jNUcpspMlG3/bsok14TgiT15icKXVdr3e5nmJ0CFq
         TlPQ==
X-Gm-Message-State: AOAM5333u0i0oVZeIsU85ZZNhZxlahF24h3YAc5dWi31fmetypjLxgfO
        ZqVY6NOSVar+pxk5itKoSs5xxlt0EGYqiJi6OyBmMoJHBsh8IQNBkxigNweFsV1BdE6gM2g2u1K
        0pDegsYIL4Y2Ul4DDJGmIEKD9T6bSlNDIACdUk4Q=
X-Received: by 2002:a1c:4d0e:: with SMTP id o14mr6731wmh.1.1642701473510;
        Thu, 20 Jan 2022 09:57:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzmTsqY8bb8HLxL6NNBjcVpHEecqLr4GeD0bg1kTvShl9on4V8QSt4DHHPqVOEBS9tMoc/Fcw==
X-Received: by 2002:a1c:4d0e:: with SMTP id o14mr6723wmh.1.1642701473346;
        Thu, 20 Jan 2022 09:57:53 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id a15sm3345248wrp.41.2022.01.20.09.57.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jan 2022 09:57:52 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Pratyush Yadav <p.yadav@ti.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-spi@vger.kernel.org
Cc:     Alim Akhtar <alim.akhtar@samsung.com>
Subject: [PATCH v5 1/4] ARM: dts: exynos: split dmas into array of phandles in Exynos5250
Date:   Thu, 20 Jan 2022 18:57:44 +0100
Message-Id: <20220120175747.43403-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220120175747.43403-1-krzysztof.kozlowski@canonical.com>
References: <20220120175747.43403-1-krzysztof.kozlowski@canonical.com>
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

