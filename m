Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E552648B81F
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 21:15:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242547AbiAKUPo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 15:15:44 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:37834
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S242953AbiAKUP1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jan 2022 15:15:27 -0500
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 6A9E03F198
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 20:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641932126;
        bh=zzMyOeYd4lATlu6SXmtUhZks+PFFAFcrD95at+LMCx4=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=oJRd6DpI4qoCucO1jEaDwHzJyEjsfhAQob1jOmMSP0DXuQE5U5wdQxOOVmov3xSsP
         d442F69vVPyOPiCAbLNIBDXLjBqGgfboLR0XafsNfYvnDMSOQPHlnigBxxLuSwrAKP
         pikB/yCRgEIuWAxxaP5PmGJk/8+Qlv4Osy/jFYUEtQyr9xKWtIrH+XLDpFhOK73zb4
         Rgaj205j0pYJKmQdCIwou3veMVMjQ1qrfegkSocrfLtxGHdVNX8naB00cyC52QyLRE
         pdauj3PFUbRZ4n2IAvDLruUS2FW16WmOO2zEYWDKxxTaAFo6nfNS5m+rGFV1jqdlBb
         bmSVyd5gHrO9A==
Received: by mail-ed1-f72.google.com with SMTP id b8-20020a056402350800b003f8f42a883dso164779edd.16
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 12:15:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zzMyOeYd4lATlu6SXmtUhZks+PFFAFcrD95at+LMCx4=;
        b=kt1uag30Fpx8J7yvbwrlOsTT5syoWVS71aeM3a7Vmih2+59oGl91QVtvEda75TY7eO
         abj8UftwissItkjZcQ4wNTgaukSQ/TKJUJZ8oUO50H3EcFn8o5BmuI+Oy/NJnxpgfeRn
         QMoihTuL+Pi7XGOoBIgv66FDgfcs4/t0R5u5N619uSW9Wrsi/VdXcm7hcFoR7Jo0ZEh5
         MF3xOo3bJAxKs1oXPSuvyP3h3WGcZ1MNuaxFi+hHCU/dnna7j6/WpK65GHOtc4ldyL1Y
         /tqjcUV+5SP8uxGYXPBuWyoDE64/U+Vu5FCaOb0MCShXItQronXCVwbk4XZ4WIIe5xU7
         OVWQ==
X-Gm-Message-State: AOAM531VivGjHcu0C1/2vn0b9RzqXSZF+cQPrv5RqoOXhAjXq5ZUetVq
        uEwVJAzBUnZ/c2MZErTRpwB81jMPO29CTJuikWA6DnIoQiyXNh3qt/W6TyiDd/m1wmImvYSQByw
        ALrl9Z0AYXWfNFC6viP2ektB4smTsHei7u8TidoE=
X-Received: by 2002:a17:907:6ea8:: with SMTP id sh40mr4902265ejc.585.1641932124330;
        Tue, 11 Jan 2022 12:15:24 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwqjRnzF/+d9jHmNpWhm2DKKgT/66sOUCKGXI9iCOvSb9auVL55voSk4GBjC8XgmId7y2NOUg==
X-Received: by 2002:a17:907:6ea8:: with SMTP id sh40mr4902244ejc.585.1641932124123;
        Tue, 11 Jan 2022 12:15:24 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id f23sm3852212ejj.128.2022.01.11.12.15.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 12:15:23 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Tomasz Figa <tomasz.figa@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Chanho Park <chanho61.park@samsung.com>,
        Alim Akhtar <alim.akhtar@gmail.com>
Subject: [PATCH v2 06/28] ARM: dts: exynos: simplify PMIC DVS pin configuration in Peach Pit
Date:   Tue, 11 Jan 2022 21:14:04 +0100
Message-Id: <20220111201426.326777-7-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220111201426.326777-1-krzysztof.kozlowski@canonical.com>
References: <20220111201426.326777-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The pin configuration for PMIC DVS (pmic-dvs-2 and pmic-dvs-3) are
exactly the same, so merge them.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5420-peach-pit.dts | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5420-peach-pit.dts b/arch/arm/boot/dts/exynos5420-peach-pit.dts
index 1ae5528e9ebf..e8819659081a 100644
--- a/arch/arm/boot/dts/exynos5420-peach-pit.dts
+++ b/arch/arm/boot/dts/exynos5420-peach-pit.dts
@@ -212,7 +212,7 @@ max77802: pmic@9 {
 		interrupts = <1 IRQ_TYPE_NONE>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&max77802_irq>, <&pmic_selb>,
-			    <&pmic_dvs_1>, <&pmic_dvs_2>, <&pmic_dvs_3>;
+			    <&pmic_dvs_1>, <&pmic_dvs_2>;
 		wakeup-source;
 		reg = <0x9>;
 		#clock-cells = <1>;
@@ -892,14 +892,7 @@ &sd1_cmd {
 
 &pinctrl_2 {
 	pmic_dvs_2: pmic-dvs-2 {
-		samsung,pins = "gpj4-2";
-		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
-		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
-		samsung,pin-drv = <EXYNOS5420_PIN_DRV_LV1>;
-	};
-
-	pmic_dvs_3: pmic-dvs-3 {
-		samsung,pins = "gpj4-3";
+		samsung,pins = "gpj4-2", "gpj4-3";
 		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
 		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
 		samsung,pin-drv = <EXYNOS5420_PIN_DRV_LV1>;
-- 
2.32.0

