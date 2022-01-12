Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E595C48C1D3
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 11:01:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349698AbiALKBI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 05:01:08 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:58334
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239494AbiALKAz (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 12 Jan 2022 05:00:55 -0500
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 66B0C3F17B
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641981654;
        bh=QVrXucYojgYJ3MvsfMwPKw5wo2fuH+ML9mi4xwVkLOQ=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=O1QyNPs6KfPYhBwh9kzWU4B9W4jJV0yXuFA3rkevBrHTH4rL25nqModCfPL+A6hKP
         mw54KRhbVqNiWwSLYB8aJH8Z0ucYx3TaH7Lrw660ps3/cWTidLWSZz6u4CrIQtfpvE
         G9TX1F+eS1rd99zl1vVUTVBTX0xb+V3sckQKvhGC3t5iiD41prkkFPOAq4cVEsXg72
         96+WEOHSPMDB/ycDTtkbkE8+lE+Lh5F9uisVxZwD8Sx1jfJ7h0dQGtXNjqFxXfvTrx
         eLLcuHUJfBRLgjyghPV0VF083vQgvP3AjqL1oNJjkJH8VvkAd9syfAVJhVOelr4BgQ
         72N63gglAo7VQ==
Received: by mail-ed1-f70.google.com with SMTP id c8-20020a05640227c800b003fdc1684cdeso1805589ede.12
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 02:00:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QVrXucYojgYJ3MvsfMwPKw5wo2fuH+ML9mi4xwVkLOQ=;
        b=k/5f3P9cZtnWfh3rt6Z3Lnb4tn11Phoof3rTefANvVlOt1fJZFSm444X5wlg39wC8E
         Fk+Jojv01MvOx2c3vEUT3UX2++JohY/g9YCraykPblMwFgD6XGhhsYosMe4JHFmrKgr/
         JJhfVBEC571aaKYjFvIzmfisL9ge3ke0Y2MDiqbIVH9c4AcpR1y604CqO8tyUCCeS9rY
         KOasBH4GEZkXOWDr8aBME6myAEfghWIVzseTjfTog3xnH9+fDrueXSkjZZrDJ6gy6Shc
         TrfCwLWc6hTeB28oqblPCvGIyFrlcvlGmYaR5ZD6WX4cvuqNdX67Ebv2mem37Sa2lfT7
         G9dw==
X-Gm-Message-State: AOAM532Z1Sk3830FNn7XUGM9tJVcgwwAUQarpzqZ8cFAtdxWKnWL4zuu
        VymuXMP+h+lcQWCC6mvOjn9MgXVYZmrLYa6nf/oWRpt6fQcWAgOR7xvKOE+QITaVaCuc7NfOWtF
        D3Yra3CYBfDNqxGEGbO2zEWcGklaTkvB7XNkZ77Q=
X-Received: by 2002:aa7:c1d7:: with SMTP id d23mr8007139edp.25.1641981653223;
        Wed, 12 Jan 2022 02:00:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzKiVju5BY5SKliX0Vazs/LyzcIPx+Xnn1NeOt/kXgzB98trXRihJhGZ2eu1WJFRzbKvyKDGw==
X-Received: by 2002:aa7:c1d7:: with SMTP id d23mr8007050edp.25.1641981651551;
        Wed, 12 Jan 2022 02:00:51 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id hb11sm4311083ejc.33.2022.01.12.02.00.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jan 2022 02:00:50 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pratyush Yadav <p.yadav@ti.com>, linux-spi@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Sam Protsenko <semen.protsenko@linaro.org>
Subject: [PATCH v3 1/4] ARM: dts: exynos: split dmas into array of phandles in Exynos5250
Date:   Wed, 12 Jan 2022 11:00:43 +0100
Message-Id: <20220112100046.68068-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220112100046.68068-1-krzysztof.kozlowski@canonical.com>
References: <20220112100046.68068-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"dmas" property should be rather an array of phandles, as dtschema
points.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Andi Shyti <andi@etezian.org>
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

