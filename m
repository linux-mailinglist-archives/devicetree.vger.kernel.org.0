Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 084134ADF2B
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 18:19:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352649AbiBHRTQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 12:19:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352692AbiBHRTP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 12:19:15 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D9C6C061579
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 09:19:15 -0800 (PST)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 3C16240053
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 17:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644340752;
        bh=ljNZXcV6Ym7/PH8vFjEM0hkawYJJLcPyRUsIX2ztPxc=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=MnenrchCcxbLqRXNFVnXEZWrQFjXNDWsAnL6fDhWQwsDq5xhJ1xfBVYZrF+M+ILbe
         D/zcwNuiJwNb2GigcGJ+tSIzvk/Kf0sNhjchrTu6oLe9DHlaqzP8FNi8z5D1CGTyZP
         KJZj8XSM25br/gafWV8rEIx+I6+Det9UJpfpOC31IF/MQGW2h7AAu82dgv0OukQQWQ
         mCcjUUdFziRn2jdxa0yN4rVXa7rXKgcJWBFYyPKvq11PZJVtsCNsPydiOF1ju1qOVm
         kmSVMfkA6e3Wnk19AMsQs43A/iXypgFjZeI1YNkJWErMJ3tdCwbPV/E29l0fnTtJFe
         5L7HMGWXdaDGA==
Received: by mail-ej1-f71.google.com with SMTP id ky6-20020a170907778600b0068e4bd99fd1so6042538ejc.15
        for <devicetree@vger.kernel.org>; Tue, 08 Feb 2022 09:19:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ljNZXcV6Ym7/PH8vFjEM0hkawYJJLcPyRUsIX2ztPxc=;
        b=gEwk1XvQZDBKSlJLNNl55U05seu3plYSzYIcc7iOeZfE8FGStjrHxrmkbNrZWQrYvO
         sr94JfhGVqIVjTLXYH70Rf9A9Gj5f5SOdHACkrdnDQT5DrbVrRo+ZOnYP31x4NmTjSFP
         gU/p0WYBtTkYjejtrJpLNts5DpBI277wZii3vtkOArT9dwVysjbtPsySl9ux2onoZpHt
         EYKvR/Ppr2Ae9HS+n0tK7M7hJEd2RGCDkvBHuAINqNVa7i2qieJWHxHPaupQbUZOcdid
         XRvG/DR+JWKdn8zpJRgnTZ0WDYUE+sWWiBmXLGLyRIBDM8cAEmieBNRwtR1KCT8O7UP5
         VATw==
X-Gm-Message-State: AOAM5339Z/3PnHzhI71mCFgVeZ4o/8y5Q8oYiW8Ft699ML0E2FI1kStw
        cG4I3Lkg2ENOlUA7x9RZx8/HzI6LQ9ocRKwwmAwxQiohYZycNNJbFO9YKNM3NdimdZ36qswHyGT
        oH5HYHvGWlu/0vNK007o6AP/zGcPOl9kI43Qjod8=
X-Received: by 2002:a50:fb94:: with SMTP id e20mr5723249edq.292.1644340751868;
        Tue, 08 Feb 2022 09:19:11 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzFtmSCjrFuZnV5QFldxP4RqEiUiHOeP0ej5h/rJ0gsHHDMvXDxxIkOQXiY9qgzDn7rJ1eDKQ==
X-Received: by 2002:a50:fb94:: with SMTP id e20mr5723234edq.292.1644340751717;
        Tue, 08 Feb 2022 09:19:11 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id r10sm5125550ejy.148.2022.02.08.09.19.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Feb 2022 09:19:11 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Inki Dae <inki.dae@samsung.com>,
        Joonyoung Shim <jy0922.shim@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>,
        stable@vger.kernel.org
Subject: [PATCH 01/10] ARM: dts: exynos: add missing HDMI supplies on SMDK5250
Date:   Tue,  8 Feb 2022 18:18:14 +0100
Message-Id: <20220208171823.226211-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add required VDD supplies to HDMI block on SMDK5250.  Without them, the
HDMI driver won't probe.  Because of lack of schematics, use same
supplies as on Arndale 5250 board (voltage matches).

Cc: <stable@vger.kernel.org> # v3.15+
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5250-smdk5250.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5250-smdk5250.dts b/arch/arm/boot/dts/exynos5250-smdk5250.dts
index 65d2474f83eb..21fbbf3d8684 100644
--- a/arch/arm/boot/dts/exynos5250-smdk5250.dts
+++ b/arch/arm/boot/dts/exynos5250-smdk5250.dts
@@ -118,6 +118,9 @@ &hdmi {
 	status = "okay";
 	ddc = <&i2c_2>;
 	hpd-gpios = <&gpx3 7 GPIO_ACTIVE_HIGH>;
+	vdd-supply = <&ldo8_reg>;
+	vdd_osc-supply = <&ldo10_reg>;
+	vdd_pll-supply = <&ldo8_reg>;
 };
 
 &i2c_0 {
-- 
2.32.0

