Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C30579C517
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 06:53:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229638AbjILExI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 00:53:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229887AbjILEwj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 00:52:39 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C35C510C6
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 21:52:30 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-52bcd4db4c0so11174707a12.0
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 21:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1694494349; x=1695099149; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=guWRsEbW/fD7+Pcy25Stc1OLTXf0j4lTRRX1eGYVn5A=;
        b=YdXqa9jQW9o4bt7bYo+y+DJYHMT6kNXZpkeZFUbaniD3Q6qAoT9rbc2tJDoPeIJx59
         OvKlOQAomk45/7Gjh5ICFvIKiJGQlk5KPeXdiBA2p+ysfD7bY7AnQlvb2gCwqTg4QThE
         a7UHa5gNUYGY3OgUiLDN1G+Lp2QMdgj9ffY0B00s241uSMgZB8DaTfJf1m3IEqcJTx2F
         R9yTpASamYpEO14ZQApl9cTeolteK+1wT/s23hSW3WMDSsYdA3uyDLR0TqlT/jZcaeGO
         EuhH79pk6CIX2RN6xrZ0kIQpNSBjEN69f9XC9pPYoEfyTFFFYhhbW8wTPh9nevAYIiie
         9R7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694494349; x=1695099149;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=guWRsEbW/fD7+Pcy25Stc1OLTXf0j4lTRRX1eGYVn5A=;
        b=BOhuq7Zs/qZJoP2gsVjQDbZuKX8eCnlw7ACqEguwtndQ22Ksc1HCev2y+2f0JFls+C
         +WxBJxZXXGa30/aKhz/j8twD9uqlfdw/kJnIccFH011dTtBDaPYzSmO/VjhSOW2mWgGI
         ZgvTa51VGkAZN7DIXHMdR516yPj03tQqkbG/R+3V3/i10DGzofvCVc5aYuZbcOWI0pNZ
         HlJowy3fcbarX2jDRWZd7kpckUUNFw09swTeRX4aXOwh9wzBFL0l7rCgH95qK+qNO2hk
         e5im2iWvbCgvlwTNe+qgk2Z0apEDWVWGapJ9OYuPBrR5Q+AlMb15SQ4PoU1SryI77Tcs
         Nc1w==
X-Gm-Message-State: AOJu0YzxqRAXOP6THgnmXhAHtHpqaXICgIda4DxrerQYoVMRRcuLebIh
        CWjhhBqMUVOv5Fz/L4lLB4yT5Q==
X-Google-Smtp-Source: AGHT+IEw1IT73GHrwLm7IAaZHmPBXodeE0rXNMEu3NzoBzDPUmsX/AZnpuvTZE72xXRpwD0wUUGzyA==
X-Received: by 2002:a05:6402:35c1:b0:52b:db44:79e3 with SMTP id z1-20020a05640235c100b0052bdb4479e3mr2362828edc.4.1694494349309;
        Mon, 11 Sep 2023 21:52:29 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.145])
        by smtp.gmail.com with ESMTPSA id f21-20020a05640214d500b0051e22660835sm5422415edx.46.2023.09.11.21.52.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Sep 2023 21:52:29 -0700 (PDT)
From:   Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To:     geert+renesas@glider.be, mturquette@baylibre.com, sboyd@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, ulf.hansson@linaro.org,
        linus.walleij@linaro.org, gregkh@linuxfoundation.org,
        jirislaby@kernel.org, magnus.damm@gmail.com,
        catalin.marinas@arm.com, will@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        biju.das.jz@bp.renesas.com, quic_bjorande@quicinc.com,
        arnd@arndb.de, konrad.dybcio@linaro.org, neil.armstrong@linaro.org,
        nfraprado@collabora.com, rafal@milecki.pl,
        wsa+renesas@sang-engineering.com
Cc:     linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 06/37] clk: renesas: rzg2l: wait for status bit of SD mux before continuing
Date:   Tue, 12 Sep 2023 07:51:26 +0300
Message-Id: <20230912045157.177966-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com>
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hardware user manual of RZ/G2L (r01uh0914ej0130-rzg2l-rzg2lc.pdf,
chapter 7.4.7 Procedure for Switching Clocks by the Dynamic Switching
Frequency Selectors) specifies that we need to check CPG_PL2SDHI_DSEL for
SD clock switching status.

Fixes: eaff33646f4cb ("clk: renesas: rzg2l: Add SDHI clk mux support")
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/clk/renesas/rzg2l-cpg.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
index 47f488387f33..70d1c28ba088 100644
--- a/drivers/clk/renesas/rzg2l-cpg.c
+++ b/drivers/clk/renesas/rzg2l-cpg.c
@@ -188,7 +188,8 @@ static int rzg2l_cpg_sd_clk_mux_set_parent(struct clk_hw *hw, u8 index)
 	u32 off = GET_REG_OFFSET(hwdata->conf);
 	u32 shift = GET_SHIFT(hwdata->conf);
 	const u32 clk_src_266 = 2;
-	u32 bitmask;
+	u32 msk, val, bitmask;
+	int ret;
 
 	/*
 	 * As per the HW manual, we should not directly switch from 533 MHz to
@@ -203,9 +204,6 @@ static int rzg2l_cpg_sd_clk_mux_set_parent(struct clk_hw *hw, u8 index)
 	 */
 	bitmask = (GENMASK(GET_WIDTH(hwdata->conf) - 1, 0) << shift) << 16;
 	if (index != clk_src_266) {
-		u32 msk, val;
-		int ret;
-
 		writel(bitmask | ((clk_src_266 + 1) << shift), priv->base + off);
 
 		msk = off ? CPG_CLKSTATUS_SELSDHI1_STS : CPG_CLKSTATUS_SELSDHI0_STS;
@@ -221,7 +219,13 @@ static int rzg2l_cpg_sd_clk_mux_set_parent(struct clk_hw *hw, u8 index)
 
 	writel(bitmask | ((index + 1) << shift), priv->base + off);
 
-	return 0;
+	ret = readl_poll_timeout(priv->base + CPG_CLKSTATUS, val,
+				 !(val & msk), 100,
+				 CPG_SDHI_CLK_SWITCH_STATUS_TIMEOUT_US);
+	if (ret)
+		dev_err(priv->dev, "failed to switch clk source\n");
+
+	return ret;
 }
 
 static u8 rzg2l_cpg_sd_clk_mux_get_parent(struct clk_hw *hw)
-- 
2.39.2

