Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFC1E547BCE
	for <lists+devicetree@lfdr.de>; Sun, 12 Jun 2022 21:31:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234392AbiFLTbT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Jun 2022 15:31:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234948AbiFLTaP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Jun 2022 15:30:15 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C01CD41FBF
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:30:14 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id v4so1443151plp.8
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ssmxgu7/WVcfzUuifiGObu7zWoTqolOirVs5XPrVt3A=;
        b=Kzap7XLBwCwfSpamfeUSffG16sJvbz6zF7IytsvdbWKYE9MT4FMzGtU7FKCj7A21Px
         h8AGQ/GjAz/k8Sd1Q8OjKCIIrYnucTQ+TdTF7RPbYXxM6dU53Uzd3ieFbRmtq8nZNBR+
         q4SilJSh0QVuorQzbyB2QWOg4pRNsQwrIpC+Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ssmxgu7/WVcfzUuifiGObu7zWoTqolOirVs5XPrVt3A=;
        b=IoT5WbMd+D7dB2nLiWyVvisgpRWy4oweebHPR7m/qItYwL9lFcQGUYsLzn0uCr8wKS
         Qy+7jneLY9heqPleX3ca2NySXLCs3s/7JDNmwYK8FX129395EN5V4SLWoxG3ooLN67RZ
         vgSMMZyVx/36//l688SiBEi2txhEwo+sFdKxpf9mT9bAIpepTlP8C/DTBFGGpkvYs8VX
         FN8b1xlPdYdQw+Tri8L0NEYUeb3rVMV0VcSvlv5pt1XJnelcMmd9P4SSGmc/f7ChnsfZ
         mFiFa9xmZ9gJw9GKPnhhi8Ldf+eb0iVpz87Wvfc0SrvS3/Gy1PYrKEImEYXCi2H7ACFk
         LSmQ==
X-Gm-Message-State: AOAM533bTEpz9rovgsLFatbbxYXsMp/yiJWj/BnU5I/KUmbFQgWVq4K6
        AMSj9UMMviDKmi/DPH6SX1ScfOTYYhW97TuUJrPzAQ==
X-Google-Smtp-Source: ABdhPJzweDtxhwKJRSdLbgbvFVJldlf7U7zT4zMbctp+XLX8Qwlxs8JwOzOdJi31hXPUxMJC0sZ9JA==
X-Received: by 2002:a17:90a:7023:b0:1e8:a692:b3e9 with SMTP id f32-20020a17090a702300b001e8a692b3e9mr11592198pjk.176.1655062214211;
        Sun, 12 Jun 2022 12:30:14 -0700 (PDT)
Received: from localhost.localdomain ([50.45.132.243])
        by smtp.gmail.com with ESMTPSA id i62-20020a628741000000b0050dc76281bdsm3603607pfe.151.2022.06.12.12.30.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 12:30:14 -0700 (PDT)
From:   Doug Brown <doug@schmorgal.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH 08/12] clk: mmp: pxa168: fix GPIO clock enable bits
Date:   Sun, 12 Jun 2022 12:29:33 -0700
Message-Id: <20220612192937.162952-9-doug@schmorgal.com>
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

According to the datasheet, only bit 0 of APBC_GPIO should be controlled
for the clock enable. Bit 1 is marked as reserved (always write 0).

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 drivers/clk/mmp/clk-of-pxa168.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/mmp/clk-of-pxa168.c b/drivers/clk/mmp/clk-of-pxa168.c
index d779b3f89656..eb6a651d2366 100644
--- a/drivers/clk/mmp/clk-of-pxa168.c
+++ b/drivers/clk/mmp/clk-of-pxa168.c
@@ -182,7 +182,7 @@ static struct mmp_param_mux_clk apbc_mux_clks[] = {
 static struct mmp_param_gate_clk apbc_gate_clks[] = {
 	{PXA168_CLK_TWSI0, "twsi0_clk", "twsi0_mux", CLK_SET_RATE_PARENT, APBC_TWSI0, 0x3, 0x3, 0x0, 0, &twsi0_lock},
 	{PXA168_CLK_TWSI1, "twsi1_clk", "twsi1_mux", CLK_SET_RATE_PARENT, APBC_TWSI1, 0x3, 0x3, 0x0, 0, &twsi1_lock},
-	{PXA168_CLK_GPIO, "gpio_clk", "vctcxo", CLK_SET_RATE_PARENT, APBC_GPIO, 0x3, 0x3, 0x0, 0, &reset_lock},
+	{PXA168_CLK_GPIO, "gpio_clk", "vctcxo", CLK_SET_RATE_PARENT, APBC_GPIO, 0x1, 0x1, 0x0, 0, &reset_lock},
 	{PXA168_CLK_KPC, "kpc_clk", "kpc_mux", CLK_SET_RATE_PARENT, APBC_KPC, 0x3, 0x3, 0x0, MMP_CLK_GATE_NEED_DELAY, &kpc_lock},
 	{PXA168_CLK_RTC, "rtc_clk", "clk32", CLK_SET_RATE_PARENT, APBC_RTC, 0x83, 0x83, 0x0, MMP_CLK_GATE_NEED_DELAY, NULL},
 	{PXA168_CLK_PWM0, "pwm0_clk", "pwm0_mux", CLK_SET_RATE_PARENT, APBC_PWM0, 0x3, 0x3, 0x0, 0, &pwm0_lock},
-- 
2.25.1

