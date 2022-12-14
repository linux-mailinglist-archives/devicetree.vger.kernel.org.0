Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E173164C9A1
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 14:02:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238470AbiLNNCu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 08:02:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238450AbiLNNCO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 08:02:14 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A370210C0
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 05:01:38 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id u5so6816056pjy.5
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 05:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l8dC2Gsn7/DPw+06SvyPKXiLZl5J5e+MnQLJWr0R5lg=;
        b=C/CoxKrwgllUTgPoZwwqsWxbBjhZtbqeoP5H6TRO0VLQcRnrnz27cgh1gckODs6c4Y
         hjo/OgwrORxVMs+lneUR07jTMMyD06UxUsWzui1Dl2cz5AHMf2wezgZHAW9itVOKpJVE
         UfRhJmsZdywxBj0qj2Utiv0IGovp5fHumb29c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l8dC2Gsn7/DPw+06SvyPKXiLZl5J5e+MnQLJWr0R5lg=;
        b=EgRzp/N2XV7orF4QQKdCua+nC1q7GLb4QS1pRrzRPTQ4SfRxQXJh/20AeHBgfVHQGC
         rMjQRw/Ti57CUtiIfnC9XCkskgWwttDUaM+hHmlf+d+INDhz4WcKI8WY8QP1sA6m7/OU
         zzUj/BKl5LUhErQQQIngClPPuEgOkp8jEggrLpgAN80oufIfgrkCsCKs53tBoUoWX5mg
         rs1tGbSNpO+JuTq9NvLOZoGsjp5yHdPbeUrr8vqCUcLOnELe7drXxWDvJZ0VYeU7bAFe
         ZoAU8Y1C9uioGsMMvzdhxf+5XxLzui9XMc4qBcEPEGAUtOj5YhdpMwpF3VxpzIc1hxll
         jpEA==
X-Gm-Message-State: ANoB5pn6rtuJo+n/gQqqthpuJxxXsJ9UJVsRF8GviOQzN4Bx57ZEIfld
        wV8hAi7+WnBl/cHLzk4Tyb0cxA==
X-Google-Smtp-Source: AA0mqf6ckNSerlrEGekXR/9I5wplg+qXi2frZincM6Z8lCDtlsNIlHj2C/nPOVwF6cGNeV60yfii6Q==
X-Received: by 2002:a17:903:2412:b0:188:82fc:e277 with SMTP id e18-20020a170903241200b0018882fce277mr24851098plo.12.1671022898068;
        Wed, 14 Dec 2022 05:01:38 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:5e03:faf:846e:352d])
        by smtp.gmail.com with ESMTPSA id ix17-20020a170902f81100b001895f7c8a71sm1838651plb.97.2022.12.14.05.01.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Dec 2022 05:01:37 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Inki Dae <inki.dae@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Joonyoung Shim <jy0922.shim@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Fancy Fang <chen.fang@nxp.com>,
        Tim Harvey <tharvey@gateworks.com>,
        Michael Nazzareno Trimarchi <michael@amarulasolutions.com>,
        Adam Ford <aford173@gmail.com>,
        Neil Armstrong <narmstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Tommaso Merciai <tommaso.merciai@amarulasolutions.com>,
        Marek Vasut <marex@denx.de>
Cc:     Matteo Lisi <matteo.lisi@engicam.com>,
        dri-devel@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>,
        devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: [PATCH v10 17/18] dt-bindings: display: exynos: dsim: Add NXP i.MX8M Plus support
Date:   Wed, 14 Dec 2022 18:29:06 +0530
Message-Id: <20221214125907.376148-18-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221214125907.376148-1-jagan@amarulasolutions.com>
References: <20221214125907.376148-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Samsung MIPI DSIM bridge can also be found in i.MX8M Plus SoC.

Add dt-bingings for it.

Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v10, v9:
- none

 Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt b/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt
index 5133d4d39190..2a5f0889ec32 100644
--- a/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt
+++ b/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt
@@ -8,6 +8,7 @@ Required properties:
 		"samsung,exynos5422-mipi-dsi" /* for Exynos5422/5800 SoCs */
 		"samsung,exynos5433-mipi-dsi" /* for Exynos5433 SoCs */
 		"fsl,imx8mm-mipi-dsim" /* for i.MX8M Mini/Nano SoCs */
+		"fsl,imx8mp-mipi-dsim" /* for i.MX8M Plus SoCs */
   - reg: physical base address and length of the registers set for the device
   - interrupts: should contain DSI interrupt
   - clocks: list of clock specifiers, must contain an entry for each required
-- 
2.25.1

