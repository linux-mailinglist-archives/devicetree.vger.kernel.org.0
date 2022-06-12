Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61CC8547BC5
	for <lists+devicetree@lfdr.de>; Sun, 12 Jun 2022 21:31:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234283AbiFLTbR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Jun 2022 15:31:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234871AbiFLTaL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Jun 2022 15:30:11 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1A9A41FBE
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:30:10 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id x138so3996023pfc.12
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9BD6fOCQDuXGNvvC7Eq1XdWqHijpUDxeMXf7cXPhn/U=;
        b=ekaOO6grv5yZSjOghiSIAjlDOGcAb0wyh+MxZ0id8V3LmNUBEPzMMpQ12bPnVe6yVS
         TvbYZdXPOqT5xIhZ/68CB6UlAw4w+G18Gt2DMh5RdiF2jyeAJHDQUHm2h+gTAVbzolCB
         ysrR9VidY0hW9ZOuS2R+J8Jjr5AKLayp0Q078=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9BD6fOCQDuXGNvvC7Eq1XdWqHijpUDxeMXf7cXPhn/U=;
        b=pRvSypjTRLN3nV51D3Hw6pk4J9rr9vCoy8R0zp361c9hj42yK9SuCWSp6Y7z6w9CMS
         bUQdD6v3/eaYBHagmTEx84lxHw5H6JrYXr5/7DZ7UM//j8ED+/U8hp+A6/xg/SSCyh32
         0qh1+/BBqAYYsIcgUtXpDMDOG3NrXsEWrtpRika6ecRghEQZi+SrZ4A4mfrF1oaJEdS5
         LERsrCAJ169gOg6D562taSj0HnVHxhrhmzT8qUNXir8AYdWCrnI4egk9vin3NxzB6EjI
         iUOWy8G2szsBtruDEWxgl+iqp/+UIIee7XX7QzpNyrKYoESl15f/wU0G5ZLP1GSg5DrX
         eX7g==
X-Gm-Message-State: AOAM531wan1GAKqNdrd0wHiPtSB1OgvX9qOBFifFI8pyh22hCGZnDkIS
        gxe3oQcQ1kj2vvzbgWXqUXnQqQ==
X-Google-Smtp-Source: ABdhPJwQfhdGxJV30Cbdr17NLWpeB0QvwXwA+v81ZoNaXLnOReUnmy/Zue4tDZXVeFwkx3v/d7TLng==
X-Received: by 2002:a63:2a16:0:b0:3fe:192a:2d3 with SMTP id q22-20020a632a16000000b003fe192a02d3mr23720346pgq.39.1655062210302;
        Sun, 12 Jun 2022 12:30:10 -0700 (PDT)
Received: from localhost.localdomain ([50.45.132.243])
        by smtp.gmail.com with ESMTPSA id i62-20020a628741000000b0050dc76281bdsm3603607pfe.151.2022.06.12.12.30.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 12:30:10 -0700 (PDT)
From:   Doug Brown <doug@schmorgal.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH 02/12] clk: mmp: pxa168: fix incorrect dividers
Date:   Sun, 12 Jun 2022 12:29:27 -0700
Message-Id: <20220612192937.162952-3-doug@schmorgal.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220612192937.162952-1-doug@schmorgal.com>
References: <20220612192937.162952-1-doug@schmorgal.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These two clocks had multipliers and dividers that didn't match their
names. A subsequent commit goes through all of the existing peripherals
and ensure the correct clocks are being used everywhere.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 drivers/clk/mmp/clk-of-pxa168.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/mmp/clk-of-pxa168.c b/drivers/clk/mmp/clk-of-pxa168.c
index c975a45f9bb6..42569cf3f42f 100644
--- a/drivers/clk/mmp/clk-of-pxa168.c
+++ b/drivers/clk/mmp/clk-of-pxa168.c
@@ -91,8 +91,8 @@ static struct mmp_param_fixed_factor_clk fixed_factor_clks[] = {
 	{PXA168_CLK_PLL1_96, "pll1_96", "pll1_48", 1, 2, 0},
 	{PXA168_CLK_PLL1_192, "pll1_192", "pll1_96", 1, 2, 0},
 	{PXA168_CLK_PLL1_13, "pll1_13", "pll1", 1, 13, 0},
-	{PXA168_CLK_PLL1_13_1_5, "pll1_13_1_5", "pll1_13", 2, 3, 0},
-	{PXA168_CLK_PLL1_2_1_5, "pll1_2_1_5", "pll1_2", 2, 3, 0},
+	{PXA168_CLK_PLL1_13_1_5, "pll1_13_1_5", "pll1_13", 1, 5, 0},
+	{PXA168_CLK_PLL1_2_1_5, "pll1_2_1_5", "pll1_2", 1, 5, 0},
 	{PXA168_CLK_PLL1_3_16, "pll1_3_16", "pll1", 3, 16, 0},
 };
 
-- 
2.25.1

