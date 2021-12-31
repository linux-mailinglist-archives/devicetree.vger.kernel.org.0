Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21E264824E6
	for <lists+devicetree@lfdr.de>; Fri, 31 Dec 2021 17:22:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229757AbhLaQWO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Dec 2021 11:22:14 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:46766
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229723AbhLaQWN (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 31 Dec 2021 11:22:13 -0500
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com [209.85.208.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 40D0F3FFDA
        for <devicetree@vger.kernel.org>; Fri, 31 Dec 2021 16:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640967732;
        bh=mL18Z39QPfc2IdUN6x6/1fiaINT8SrvvNdTfHBPZ9SY=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=eEOXei/QJGf2tVKnMtCC3Q+qoiY20JIWY9fTyzXrfkjqYZATHL+lntqFYCTLZ85Hw
         v61eR3WIF++Wqr95NzxRVxcb/9h0LEXJU0zsfGuUrP5Mq/izma6GN6YjVA5343B+rn
         dNJ8QMLGvP4mSCQHoYCEcZZPIqR2oqRUdcK5ohPAw/uyVBRXCY1MPNmwGHjY33SNXl
         OeLSwEYep8Q7Yslril7fnkqo/ecyMD4w6CB6IuzkmI5XF4/MQ3Pl6SCqqmxKEf/vPc
         OD0IsX2CoRrZy0pwQe5Auti8Hwbvnjyn5yUsJFGO6gHPMzmqpYSLx3oxBLcrvk4oFC
         OsGZti3RblsWw==
Received: by mail-lj1-f200.google.com with SMTP id v19-20020a2e87d3000000b0022dbe4687f1so6709012ljj.7
        for <devicetree@vger.kernel.org>; Fri, 31 Dec 2021 08:22:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mL18Z39QPfc2IdUN6x6/1fiaINT8SrvvNdTfHBPZ9SY=;
        b=d9Aq7uHXMDVcJZLFCKWEX8UINcOB8hIfgJzJvgZsUOFx/CrbcR12gQXJFuEmlzE560
         Wb2iSiUKeXvWH1aBADDnOEBD8bWtXV/bgtpXnJpZurHSaOCuhuyvRUyDSW7j8gFWNVxo
         8bh45zJgYtc+o7NnDrjdF8yJh14A5AE0oCaTS/N5SAWRF+UfCnEkSrX3X4B6JDz9j2E/
         wPodvZi3mgHGd0tyKlXQV5kE/co3h/W/fUF7QRDWi4qQoSqfTr/RVbi1+rnxq2BmrNDb
         07nMdmRffm/r0aVawsq1qomYZNCdHdRfsJTwVD182yeMJliWca3ezX3O4Zo4suDQKWOu
         qK4g==
X-Gm-Message-State: AOAM530r9NmwXV/QGfMfAm3Xf4ak5YL5XBc1KSTchEwHjLvFiPX6j/mZ
        91oXECK65QOcdDLoA2iX/mv5LkaOQHjz446xL8J50jMgUZKzNWUhc+IrI2fQjl5o3RqlBloO7vH
        g7+Jj1Rpk0m7tlXlNfbCl04jcM0fyV8bamcmtYxk=
X-Received: by 2002:ac2:59c8:: with SMTP id x8mr31058740lfn.573.1640967731670;
        Fri, 31 Dec 2021 08:22:11 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz/FEr/wtUJWGC4oNBA2IyurE7WGnn0VSObMCIEkjcLZxN8PTJEPz+4mBcWEG+Cstck2ChusA==
X-Received: by 2002:ac2:59c8:: with SMTP id x8mr31058720lfn.573.1640967731503;
        Fri, 31 Dec 2021 08:22:11 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id y36sm2796514lfa.75.2021.12.31.08.22.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Dec 2021 08:22:11 -0800 (PST)
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
        Sylwester Nawrocki <snawrocki@kernel.org>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH 08/24] ARM: dts: exynos: simplify PMIC DVS pin configuration in Peach Pi
Date:   Fri, 31 Dec 2021 17:21:51 +0100
Message-Id: <20211231162207.257478-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211231161930.256733-1-krzysztof.kozlowski@canonical.com>
References: <20211231161930.256733-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The pin configuration for PMIC DVS (pmic-dvs-2 and pmic-dvs-3) are
exactly the same, so merge them.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5800-peach-pi.dts | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5800-peach-pi.dts b/arch/arm/boot/dts/exynos5800-peach-pi.dts
index 6bf3fd37fb2b..eca805b83816 100644
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
@@ -874,26 +874,20 @@ &sd1_cmd {
 
 &pinctrl_2 {
 	pmic_dvs_2: pmic-dvs-2 {
-		samsung,pins = "gpj4-2";
+		samsung,pins = "gpj4-2", "gpj4-3";
 		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
 		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
 		samsung,pin-drv = <EXYNOS5420_PIN_DRV_LV1>;
 	};
+};
 
-	pmic_dvs_3: pmic-dvs-3 {
-		samsung,pins = "gpj4-3";
-		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
-		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
-		samsung,pin-drv = <EXYNOS5420_PIN_DRV_LV1>;
-	};
+/* pinctrl_3*/
+/* Drive SPI lines at x2 for better integrity */
+&spi2_bus {
+	samsung,pin-drv = <EXYNOS5420_PIN_DRV_LV3>;
 };
 
 &pinctrl_3 {
-	/* Drive SPI lines at x2 for better integrity */
-	spi2-bus {
-		samsung,pin-drv = <EXYNOS5420_PIN_DRV_LV3>;
-	};
-
 	/* Drive SPI chip select at x2 for better integrity */
 	ec_spi_cs: ec-spi-cs {
 		samsung,pins = "gpb1-2";
-- 
2.32.0

