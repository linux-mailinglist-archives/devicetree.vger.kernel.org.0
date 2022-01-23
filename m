Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F4014497128
	for <lists+devicetree@lfdr.de>; Sun, 23 Jan 2022 12:17:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236357AbiAWLRM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jan 2022 06:17:12 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:38490
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236278AbiAWLRA (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 Jan 2022 06:17:00 -0500
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id DFE3F3F1E7
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 11:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642936619;
        bh=66G1PF8Q0lr5LRIbEYZW0Tv4PnJMOlbJQ4z7W8Ayj8M=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=mOOrFPaB7NK12JbqA1RJfp4LAxPp0l/w5M2vNCK6geVLim9Soq7V9HanQcm8JWGJI
         RC6PtM4g1WvaYye9u8IXqUD25JAhN5+h+nQoZXF4+iiLu8ZTkKs5mALuKy71Afqgfe
         XXRbFnePZn0kpcnIOh1nqP43HwBq9zL+GNr42OR5LE28t3lw8zY/Oa2/m7DJuWifzK
         tydE7dV4nYfjdbIZ7p61+Q3tc51AvYtN7/km+18e3jdYb6w96iKYpkcF66X2G9MWr8
         hCw3IDWD57zUpC+ScQOZ9B47UVjMZeu/h22bSAze51NCHoHqeXWbiqoOgrunIpCXVV
         bDqw+AS9IvFTw==
Received: by mail-wm1-f72.google.com with SMTP id l20-20020a05600c1d1400b0034c29cad547so12982560wms.2
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 03:16:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=66G1PF8Q0lr5LRIbEYZW0Tv4PnJMOlbJQ4z7W8Ayj8M=;
        b=7fr6goyVeYBUo8/DwPJ4t8UhZ9gooRN6cCWZkxjbUobEho3RI+b10KB5uk3noIsiRU
         2bPERnkFULKEXEfPqKokR4ksCoRw4jndKyCQsn2OH4VySFD0zxOwP6FlGbrUe2NzvNgY
         stLAo2mlksqrAXrMvSvrWrASPJJoPnLIdXqJRHiRyLDUDh1zlPbKZf3FVb47BTW1pxFT
         LHHHG9aEd9UY6ES+7P3gbHCJhLfexMfp0+bbqV6yzFNMB4s5mtmMeuSFsiZvUGl6FIqW
         7OeF3sp6gx4uAg1aYZ1ixRxHE7vacxZqBerS6LNTsEoVH59JPWzc8cA9oOvrNx4queCJ
         xX5w==
X-Gm-Message-State: AOAM532N2MvDNRlJ4QTk17k2GyJpOP37/sNKV/WzylJ61E1HtpRLFc4D
        mTQO+TsCZRmKVjbmJ7vUbM9frjI9lsgPACYgCTzwiRWtKynO0Z3YgTOahXH0DNMYLLJ8yx0Q7HT
        MqXaUlHmCWOxECJOWMZtsZwIXhyqU8h78HRMvpls=
X-Received: by 2002:a7b:c4da:: with SMTP id g26mr7689628wmk.191.1642936619326;
        Sun, 23 Jan 2022 03:16:59 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyEem2eKrggZGWq3zOh3tVCEin/9AMSkAxLad8GyWyumd6SS0jXIESrFaTiCvb+wPkBmGYPsw==
X-Received: by 2002:a7b:c4da:: with SMTP id g26mr7689615wmk.191.1642936619200;
        Sun, 23 Jan 2022 03:16:59 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id m5sm10143729wms.4.2022.01.23.03.16.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 03:16:58 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 09/12] ARM: dts: exynos: add USB DWC3 supplies to SMDK5420
Date:   Sun, 23 Jan 2022 12:16:41 +0100
Message-Id: <20220123111644.25540-10-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220123111644.25540-1-krzysztof.kozlowski@canonical.com>
References: <20220123111644.25540-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add required voltage regulators for USB DWC3 block on Exynos5420
SMDK5420 board.  Due to lack of board schematics, use same
regulators as on ArndaleOcta board.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5420-smdk5420.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5420-smdk5420.dts b/arch/arm/boot/dts/exynos5420-smdk5420.dts
index a4f0e3ffedbd..69ce3e430863 100644
--- a/arch/arm/boot/dts/exynos5420-smdk5420.dts
+++ b/arch/arm/boot/dts/exynos5420-smdk5420.dts
@@ -407,6 +407,16 @@ &rtc {
 	clock-names = "rtc", "rtc_src";
 };
 
+&usbdrd3_0 {
+	vdd10-supply = <&ldo11_reg>;
+	vdd33-supply = <&ldo9_reg>;
+};
+
+&usbdrd3_1 {
+	vdd10-supply = <&ldo11_reg>;
+	vdd33-supply = <&ldo9_reg>;
+};
+
 &usbdrd_phy0 {
 	vbus-supply = <&usb300_vbus_reg>;
 };
-- 
2.32.0

