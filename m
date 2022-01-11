Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E64248B836
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 21:18:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243646AbiAKUSJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 15:18:09 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:38032
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243294AbiAKUSF (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jan 2022 15:18:05 -0500
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E8CDF4004A
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 20:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641932282;
        bh=PGhCGHIzXCQK8AryrRyQ6DVaFN8DyDgbyb7ebCRERqc=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=CFWj/QnnUY3b9BLfoiu44U6/Po34Eu0ZY0T4uBWf0APhFEJya2rpkadhMmcsgA4rr
         iepWjmoMiV10hUzckfc0vSsTiWmYFaZEUh0j3rgimneom9VYb6g8SbFaV1N/585HZJ
         7ZSG4CxYHJmNjWC1PjPp+R52KIdRVobm0uaCwPxJiM2IfTsBbwEd5Vn7mRPJWPsw7D
         D3ORpI1a04nOOFWPjA3sVavu6FPwo0nXmqj6OBbbI70V5wVxUue63ycC/SG9JAitRy
         2xvbgVFOgmPInAOcEb9P4WR5bZbRKK7RAFOICJE9vPzLERgEUir+24Ib8qYq1wjwIS
         azMCJ0Cl+ickw==
Received: by mail-ed1-f69.google.com with SMTP id h11-20020a05640250cb00b003fa024f87c2so211298edb.4
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 12:18:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PGhCGHIzXCQK8AryrRyQ6DVaFN8DyDgbyb7ebCRERqc=;
        b=7n57PEhxfMY155N9O7zt90lYYOudSeR0IrV5eACGD+ZYXSfXHOYd9GmQvTIldqzmGf
         WK7l/vVDkfteXk4b6vkHnchpI9GqxjmenNeBTVSyTd8zmmsx3oT1WUChQCGQbJbwE94N
         DDd35NFVvnKLuH7RijZCeKujVvh8mERvm48PNDzpjFS3w482lyvHyMyXfO+XsXTpy5HE
         P5uV891MtYEhTkosyuSj2oCjrSpmBVSKriGRfwzcblzX+pTB7/ZX7POC5R6JHkQxhWr4
         MhUlzf+aRtVh229KV/3adYzWlpeMEVMZreFfbHkcFPc0PoB6fJGoPxsfvYEW5lJ7XxS1
         qIfQ==
X-Gm-Message-State: AOAM532oTqtxnv/Kr3YE6GQaONrMwUF1yiyEzwslHBFzmX7icbo0IPnM
        Z8ndvhL3SdVRjtuEHy0xJ95HNX2YQs3St2L0kYqCpQ3PvfHeH9d7Kl9p/weZxARPvPkLgGDSE0j
        zL5XNBPemS5GO2VE7d7G6dv7rMHi4dHuDfMahHn4=
X-Received: by 2002:a17:907:3d94:: with SMTP id he20mr4852846ejc.339.1641932281209;
        Tue, 11 Jan 2022 12:18:01 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzIdiGqTjRdbhrmv0zfCRs9CSoyD6hQUgu9NLRHIRRugCvqFsamAAB93Nka0c4uArWKniPbzQ==
X-Received: by 2002:a17:907:3d94:: with SMTP id he20mr4852831ejc.339.1641932281047;
        Tue, 11 Jan 2022 12:18:01 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id e4sm4030881ejs.13.2022.01.11.12.17.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 12:18:00 -0800 (PST)
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
        Alim Akhtar <alim.akhtar@gmail.com>,
        Alim Akhtar <alim.akhtar@samsung.com>
Subject: [PATCH v2 08/28] ARM: dts: exynos: simplify PMIC DVS pin configuration in Peach Pi
Date:   Tue, 11 Jan 2022 21:17:02 +0100
Message-Id: <20220111201722.327219-2-krzysztof.kozlowski@canonical.com>
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
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 arch/arm/boot/dts/exynos5800-peach-pi.dts | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5800-peach-pi.dts b/arch/arm/boot/dts/exynos5800-peach-pi.dts
index 01f310f387d6..eca805b83816 100644
--- a/arch/arm/boot/dts/exynos5800-peach-pi.dts
+++ b/arch/arm/boot/dts/exynos5800-peach-pi.dts
@@ -221,7 +221,7 @@ max77802: pmic@9 {
 		interrupts = <1 IRQ_TYPE_NONE>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&max77802_irq>, <&pmic_selb>,
-			    <&pmic_dvs_1>, <&pmic_dvs_2>, <&pmic_dvs_3>;
+			    <&pmic_dvs_1>, <&pmic_dvs_2>;
 		wakeup-source;
 		reg = <0x9>;
 		#clock-cells = <1>;
@@ -874,14 +874,7 @@ &sd1_cmd {
 
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

