Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92482530BEE
	for <lists+devicetree@lfdr.de>; Mon, 23 May 2022 11:03:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232382AbiEWI7m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 May 2022 04:59:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232329AbiEWI7l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 May 2022 04:59:41 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEE793EF3A
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 01:59:40 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id v11so13099967pff.6
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 01:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=N537kmXnIFF/B5MPYA58NfVjnsyjLkZ7UggoyVApuvw=;
        b=X2xZIXhmJUlFUqC3yKU35eJzJRk0/e3r+c8tWahEJf3KPE2r2Shc1G5fNKe8xOKqFj
         LPCOssfEm9wvBZ9+ufc07zRl5ZR/EeBa2ro1UOzK5bsJKGQn41AyMAyssS4QFwyZgkTw
         oWLAJARJfKXShDez4cvMjpfj+7pC3SKDDKLCM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N537kmXnIFF/B5MPYA58NfVjnsyjLkZ7UggoyVApuvw=;
        b=F7a6BVVJ+VAdhNayoQjdhyy5TIAb4H1ozWBtXnLcCai9m1PTQRJWeH0XjM/2UinLmG
         Qnz7JsxuRroVKRnVyv+XVBEDpk2/AYCLWN8W9T0UVRzivze+5Zs7R8NTB6eQo9fsvCpx
         GXXTI5ikvB9hXwJkGfNuYKm0GC6BBtJ9mzQ7oEXHYw7UrqhudbUcRdklCFMCpLueAMTC
         eKVwAeSYrSpqOIPsxL7ihhmvRJeEhzlt8bZh+7s7QHG6Jq9G+ZnruTlS0f0URLyo3GiE
         0HLJcHbubJd+GvP9cotu6iO26sn9aelJ3g+66AVJf91+MfESdK6kHv9nhxJ+3pca8Yon
         2znQ==
X-Gm-Message-State: AOAM533DwHjolkCsPRMtZlJtjbCy164loNZDaxn7MgFP+sMXMM1G3W+Z
        t2fY18JBnOun8vLIlubQOHJmOA==
X-Google-Smtp-Source: ABdhPJyKyy+R8cax5BnnVeWF2iS5z85uLAPJvTYypKsPeT5JuXm1sykaEWUSesO19CI0VaYkJIQvfw==
X-Received: by 2002:a63:5563:0:b0:3f6:89b:89f3 with SMTP id f35-20020a635563000000b003f6089b89f3mr19106153pgm.419.1653296380565;
        Mon, 23 May 2022 01:59:40 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:1b8:7eae:9793:ff95])
        by smtp.gmail.com with ESMTPSA id e11-20020a170902cf4b00b0015e8d4eb22csm4524719plg.118.2022.05.23.01.59.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 May 2022 01:59:40 -0700 (PDT)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        Miles Chen <miles.chen@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] arm64: dts: mt8183: Fix Mali GPU clock
Date:   Mon, 23 May 2022 16:59:20 +0800
Message-Id: <20220523085923.1430470-2-wenst@chromium.org>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
In-Reply-To: <20220523085923.1430470-1-wenst@chromium.org>
References: <20220523085923.1430470-1-wenst@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The actual clock feeding into the Mali GPU on the MT8183 is from the
clock gate in the MFGCFG block, not CLK_TOP_MFGPLL_CK from the TOPCKGEN
block, which itself is simply a pass-through placeholder for the MFGPLL
in the APMIXEDSYS block.

Fix the hardware description with the correct clock reference.

Fixes: a8168cebf1bc ("arm64: dts: mt8183: Add node for the Mali GPU")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 01e650251928..6ced76a60aab 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -1368,7 +1368,7 @@ gpu: gpu@13040000 {
 				<GIC_SPI 278 IRQ_TYPE_LEVEL_LOW>;
 			interrupt-names = "job", "mmu", "gpu";
 
-			clocks = <&topckgen CLK_TOP_MFGPLL_CK>;
+			clocks = <&mfgcfg CLK_MFG_BG3D>;
 
 			power-domains =
 				<&spm MT8183_POWER_DOMAIN_MFG_CORE0>,
-- 
2.36.1.124.g0e6072fb45-goog

