Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9AC9C48B81E
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 21:15:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242825AbiAKUPn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 15:15:43 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:59814
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243307AbiAKUP1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jan 2022 15:15:27 -0500
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id CB45040AA3
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 20:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641932123;
        bh=Yb4exiilZ6fWGtkNHAgUE2yCKFhigxo195C0Xf7w5qk=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=TyuDncoHJZFBh82qg72dSrn4PAsPQbq5YLEasQlqBfA/rJ3TkkkREeWdbxqqW5OPI
         nTtHY4NCo2r182rMQb8Viz/gxo1d5AA9FrUiq/ZkO0SO0EVH5WoYunWYvRpmSIIBFu
         r9K3uQB2bglAxKI54lMEsGY4z1tNbs0BE+TOn6fuEoH6fYMqq6C4V8Hb9yltgK2Fjo
         y2PMK+QHWFhwYbHrpxHIt/trgLJfX6uUrjH0KKr0HN+WmNUgaFhp7+5c4kKA9Xffww
         k/zFHYr8/No9RcShit/OhxZUnGY7MggrTxuTopb7j/OH0wu21YAGXjt66KKpND15a9
         gZE7AlGyVyBrA==
Received: by mail-ed1-f72.google.com with SMTP id z8-20020a056402274800b003f8580bfb99so183257edd.11
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 12:15:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Yb4exiilZ6fWGtkNHAgUE2yCKFhigxo195C0Xf7w5qk=;
        b=RC0xUGpQosAYbS0DqY6QT7xQHJzsQwNOVk27CsRaBM1DCqLSmtUZl4psw6rPwS+1ad
         U5IHlwpD9xGkHgb0goLs2ZmpQUu3tcbxSlrOtvXcVeiAfNjORiousEWAuNo2Zr1Lnf9X
         Z2f88Txvj2Xl2bqRnJmoIln+yia2fYhZDgOisF28nybV/DKV7tJxKhOnRqX6z29FVZAe
         AW1Czq8Yh0gzV/lOmR9UUIutHljK4on5FZYpsOjnyQlcyyc7nAEjbZUW6ATCH1PeWruM
         n3Llf65iYlaUY9fwa7xwv9hUBIsuXJBA/w4JczvxneZGitzkuhgf33yVSXA/jVrXZKNF
         bVxQ==
X-Gm-Message-State: AOAM533Jsvh/iIvJd72gszqMMVChEUhpf/A0L2/gwJ5Su7sRk96XzlcQ
        gev7dC6I2P2xmM4XDebLBVAb5aw050EhwQW32jeOLjtwy8/pb9itM/B0IiyqWZaMn3dKlslyW6c
        toZOGyrO6pHKX/gmlQ/RRCol6drXDK7KL3i4cj7U=
X-Received: by 2002:a05:6402:4249:: with SMTP id g9mr3571716edb.321.1641932121428;
        Tue, 11 Jan 2022 12:15:21 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxKM89NfIORT3ha11SDkyVnHYgokbq+oykjhh4MT8WCGODxHOOwQN7VsX2r9dpD4YcqNBYMyw==
X-Received: by 2002:a05:6402:4249:: with SMTP id g9mr3571696edb.321.1641932121287;
        Tue, 11 Jan 2022 12:15:21 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id f23sm3852212ejj.128.2022.01.11.12.15.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 12:15:20 -0800 (PST)
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
Subject: [PATCH v2 04/28] ARM: dts: exynos: simplify PMIC DVS pin configuration in Odroid XU
Date:   Tue, 11 Jan 2022 21:14:02 +0100
Message-Id: <20220111201426.326777-5-krzysztof.kozlowski@canonical.com>
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
 arch/arm/boot/dts/exynos5410-odroidxu.dts | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5410-odroidxu.dts b/arch/arm/boot/dts/exynos5410-odroidxu.dts
index 884fef55836c..9f2200dd5b43 100644
--- a/arch/arm/boot/dts/exynos5410-odroidxu.dts
+++ b/arch/arm/boot/dts/exynos5410-odroidxu.dts
@@ -188,8 +188,7 @@ max77802: pmic@9 {
 		interrupt-parent = <&gpx0>;
 		interrupts = <4 IRQ_TYPE_NONE>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&max77802_irq>, <&pmic_dvs_1>, <&pmic_dvs_2>,
-			    <&pmic_dvs_3>;
+		pinctrl-0 = <&max77802_irq>, <&pmic_dvs_1>, <&pmic_dvs_2>;
 		wakeup-source;
 		#clock-cells = <1>;
 
@@ -563,15 +562,8 @@ sd2_wp: sd2-wp {
 		samsung,pin-drv = <EXYNOS5420_PIN_DRV_LV4>;
 	};
 
-	pmic_dvs_3: pmic-dvs-3 {
-		samsung,pins = "gpx0-0";
-		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
-		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
-		samsung,pin-drv = <EXYNOS5420_PIN_DRV_LV1>;
-	};
-
 	pmic_dvs_2: pmic-dvs-2 {
-		samsung,pins = "gpx0-1";
+		samsung,pins = "gpx0-0", "gpx0-1";
 		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
 		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
 		samsung,pin-drv = <EXYNOS5420_PIN_DRV_LV1>;
-- 
2.32.0

