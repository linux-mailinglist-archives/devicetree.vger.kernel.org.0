Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58F9A4F9A87
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 18:23:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230401AbiDHQZg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 12:25:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230422AbiDHQZf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 12:25:35 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEEEC2F5AB1
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 09:23:30 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id n6-20020a17090a670600b001caa71a9c4aso10181965pjj.1
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 09:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zevXHTigISY3S4Y7YWLt05sAPhFkf3znQwcUqUtkS7M=;
        b=l/g4lICQF6R00l5uTIWffbRdYBrOeUhRDZdCMyfNp+uxQnkli3zy4HDKPR5rVFfsi6
         2G4Zo6uhnpO5bWTQP1D5aDacvaZIUq/bM25lZheu5YI86G8y5HTg+/MPrwvC+04KlH88
         s9NzGfr99QrPHC9zs96kxB0naSxnbTgChxvh8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zevXHTigISY3S4Y7YWLt05sAPhFkf3znQwcUqUtkS7M=;
        b=arF5DY7MhSQ+SZE+iZFvdnbRutv44pImnpsom3L9SoVqX7gz22yJ76+Gx0LG1bkcB1
         14mGPYFvpUEnbl9HRsWb1RZvq5oRAfv5hyw/TbPSye/c0YMCZQ5k5jNB4PW/VkYi8qAr
         m96mnH0UzaCaXxnfCnuXHlE/iA+/Txy27LNPtEUjq7qsZdPWCS2bf+hMpo7YGgtB0VJV
         /WeoeWNSrrNxrNJ2cNQ8XRr+ROJSMLquWueKVFTJkDRcX+mv6HnZ+csUHr/AUSYWXn1X
         LO7CJwR1nMkQxW74pfHLuF8U6uKPFdST9OW05+1Zrq/ukJ1BagQWV9mMXAENa3tHKuOf
         Drug==
X-Gm-Message-State: AOAM531Wi4QaCL0+TMqnSxEft/IbC9fckLq7vSPbe4ECk1voQ0xD9Sdv
        2i8zet89oYwFMKrOCm41WhDGnA==
X-Google-Smtp-Source: ABdhPJxbcNFz6feu4gz/RdE7X3DPLfhToLKj1lFn0nrHN3x1KnT3m4kix9EKiulW/MGlS1AGSCHY3A==
X-Received: by 2002:a17:90b:1805:b0:1c7:ba88:9550 with SMTP id lw5-20020a17090b180500b001c7ba889550mr22875005pjb.16.1649435010210;
        Fri, 08 Apr 2022 09:23:30 -0700 (PDT)
Received: from j-ThinkPad-E14-Gen-2.domain.name ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id n18-20020a056a0007d200b004fdac35672fsm24929863pfu.68.2022.04.08.09.23.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 09:23:29 -0700 (PDT)
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
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 10/11] dt-bindings: display: exynos: dsim: Add NXP i.MX8MM support
Date:   Fri,  8 Apr 2022 21:51:07 +0530
Message-Id: <20220408162108.184583-11-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220408162108.184583-1-jagan@amarulasolutions.com>
References: <20220408162108.184583-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Samsung MIPI DSIM bridge can also be found in i.MX8MM/i.MX8MN SoC.

Add dt-bingings for it.

v1:
* new patch

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt b/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt
index be377786e8cd..5133d4d39190 100644
--- a/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt
+++ b/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt
@@ -7,6 +7,7 @@ Required properties:
 		"samsung,exynos5410-mipi-dsi" /* for Exynos5410/5420/5440 SoCs */
 		"samsung,exynos5422-mipi-dsi" /* for Exynos5422/5800 SoCs */
 		"samsung,exynos5433-mipi-dsi" /* for Exynos5433 SoCs */
+		"fsl,imx8mm-mipi-dsim" /* for i.MX8M Mini/Nano SoCs */
   - reg: physical base address and length of the registers set for the device
   - interrupts: should contain DSI interrupt
   - clocks: list of clock specifiers, must contain an entry for each required
-- 
2.25.1

