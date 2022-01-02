Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F58C482BC4
	for <lists+devicetree@lfdr.de>; Sun,  2 Jan 2022 16:58:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232469AbiABP6M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jan 2022 10:58:12 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:34718
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233329AbiABP6M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jan 2022 10:58:12 -0500
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id EE1A43F1F2
        for <devicetree@vger.kernel.org>; Sun,  2 Jan 2022 15:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641139090;
        bh=JsLUW9PBBaBZ0y++pKFR+MSeA/AChbSj0X9fhhwXYLw=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=ow880mQB115O/r0JPI0z9DZox8itDO4v2PwdT59GztFCgfb69so5eT+y1mxsm5WcI
         Nz68s7981hqJgwtzCbBnPv8wZtvPIlEHwF04MPUU8i+TxGcIcqQ8RvVNJa9CaEa2xS
         Oc4DU8SgD0eOWAYVW1+YmERByvHwXWYo/mJMcYNuhVryDx48jzVl0Kq/UCMn/GlEIp
         cVJXcKnS7SfdnH0B0pg0e9oz0Lahs4j2ypw+5TLOUkk0afMueNDVJRcqeRrTKp76jD
         WkLmbDmCJIzaPfbOxG5quCCR9wVqW8gtVOIs/AqkBtMoPJzrZNFbu8G8F7L6KXcGMI
         M5N8rJBCDR82Q==
Received: by mail-lf1-f71.google.com with SMTP id v139-20020a194891000000b0042a2927eaa8so1598775lfa.3
        for <devicetree@vger.kernel.org>; Sun, 02 Jan 2022 07:58:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JsLUW9PBBaBZ0y++pKFR+MSeA/AChbSj0X9fhhwXYLw=;
        b=qkB2rNpUGGN2WQE4CfnQUbIwvcj9MJyWtWnhfEyP7gepgIIJCXX4jGmlgc6BaZpOg7
         SmhKiJmDzTLvtAIAwKz7p1B78k0O1HtY3SLCCHd6rev2sN8+b5VT+OUpzHBRymNdT3I5
         6ynzN/E7c6LtbyCLLgfZoI5P7x3LzCgaDxVzcoedE/uIj3NSFFonAZGwFguW+NDEMbXZ
         xfrajWAckDjP1LMeyLFLlszlMPHWBaDsrGAB2XTPzhQw9GMkk+/Suq+u8ne1SjNDluBY
         3r0D8VJ626HZ+egADQj+W6TKqz7RfFGCcgoI5IOToZKaOmdDfznB+qRCHdHYg49VvrDY
         sWrg==
X-Gm-Message-State: AOAM532EU8VuyXxArjLHntdtF0peYJD+RZo+jGWU9asnbPkcwdmtPtMy
        ECefxnTiIqe+rv55WssPuJZ107AFQDrZ8zaFEjTZyUcn5kTIIkVQzWu+P0KWhWNZEA624msLFeF
        wo0dNYCASxUU6bvEFQ7udvJTyukH/0aPZlbiAWp4=
X-Received: by 2002:a2e:1f09:: with SMTP id f9mr29416348ljf.3.1641139090287;
        Sun, 02 Jan 2022 07:58:10 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxX3lM0GN8CO7Wt7w+dKtHIACUI0lhA4N61UxnAExYdI7f5b5cZpa55feEAFdFshfYVEdZIEw==
X-Received: by 2002:a2e:1f09:: with SMTP id f9mr29416343ljf.3.1641139090145;
        Sun, 02 Jan 2022 07:58:10 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id k19sm3377612lfv.87.2022.01.02.07.58.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jan 2022 07:58:09 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, linux-spi@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] ARM: dts: exynos: split dmas into array of phandles in Exynos5250
Date:   Sun,  2 Jan 2022 16:58:06 +0100
Message-Id: <20220102155807.42758-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"dmas" property should be rather an array of phandles, as dtschema
points.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
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

