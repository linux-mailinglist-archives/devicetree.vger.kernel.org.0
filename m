Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC6F25ACDDF
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 10:34:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237128AbiIEIcl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 04:32:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237013AbiIEIcP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 04:32:15 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9208FAE4C
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 01:31:41 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id x23so7862167pll.7
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 01:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date;
        bh=YU1T+4ItypqC13KzotwkMdBINkHdY6ElFDyiDsgiSMA=;
        b=nNMuNeProX34RDrsnOSF/BtRNHaeyc7GAQa7GcuIU3JsvnbmieUL6SWAaDQ+evChiZ
         BNni/5dIqlJlRBtmOxUta8R767lUhkcQyYVD0O/SS6bb4mqGfq9hKJngI+YlSNH+ODB3
         Mjcc9iKS769m/u0NzDOwBu6i9DAZs/6z1UJA2Et4QPqA6y8nNHGDTU4ZKTCZpB0mYPRY
         97/obMJ0FR/56xLLkjeY+xyR/0PSHw0LbcE6xBG51vf5S0Q/1qwM+Km9sBDbHjmTlBAO
         Ms+xtQuHsRPuT5wDc9guJCTzsRvaghbdR6CzzhVc+x8v8h0b6aHg1WpPNr1k7YlBuBNt
         qHzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date;
        bh=YU1T+4ItypqC13KzotwkMdBINkHdY6ElFDyiDsgiSMA=;
        b=jazJ88L3FnQZag1UdNuFdi2m9ivEmmV0jMivVdoe2TxInlQZobTOFUpBYO9yRDTP4Q
         TE6atLcH9ped4GEHA8WK2EBp1TsT4Jlwn1DxPJBwdtB+spilBnkcYBl1RBX8zh4qII0O
         b3dri8MlKVlADP0aAxC8jtY2BM1m1tlc8+9PURQ7I0AiPwmZPuWOT0+6ceUDkIh/iG7W
         zc/k/2zdRO/TiRPwCs09Xgnff618Uba2v7DWMB2DwSyEDFNj+TdZMX9a4e6bQpqmxQMW
         lh/tbiWJ43wftNW+HobrrF9Qr9cCgd5Q0t8vgcCh81zeA47mrUw7LTUC2teZdaTYmM/w
         8WJg==
X-Gm-Message-State: ACgBeo17zkuRWZWBjfv9PQe8DHzcTx6WiCQeTvtsoCoShAt4vVintNyS
        1V/d5eq2sB8BiF9Z297B8UiipXcQNbz/lA==
X-Google-Smtp-Source: AA6agR4LF03FLh3g6astJCmw5kiDaKHkZHqjx7NtyxT/YQSsUe5vXkXmUES8QpWPLpQaTuxNhrQPDQ==
X-Received: by 2002:a17:902:e844:b0:172:d21c:3fe2 with SMTP id t4-20020a170902e84400b00172d21c3fe2mr47953924plg.43.1662366700991;
        Mon, 05 Sep 2022 01:31:40 -0700 (PDT)
Received: from localhost.localdomain (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id y3-20020aa79423000000b00537dfd6e67esm7089721pfo.48.2022.09.05.01.31.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Sep 2022 01:31:40 -0700 (PDT)
From:   Zong Li <zong.li@sifive.com>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        palmer@dabbelt.com, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, greentime.hu@sifive.com,
        conor.dooley@microchip.com, ben.dooks@sifive.com, bp@alien8.de,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-edac@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Zong Li <zong.li@sifive.com>
Subject: [PATCH v2 3/6] soc: sifive: ccache: determine the cache level from dts
Date:   Mon,  5 Sep 2022 08:31:22 +0000
Message-Id: <20220905083125.29426-4-zong.li@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220905083125.29426-1-zong.li@sifive.com>
References: <20220905083125.29426-1-zong.li@sifive.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Composable cache could be L2 or L3 cache, use 'cache-level' property of
device node to determine the level.

Signed-off-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
---
 drivers/soc/sifive/sifive_ccache.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/sifive/sifive_ccache.c b/drivers/soc/sifive/sifive_ccache.c
index 1b16a196547f..0e0eb85c94d8 100644
--- a/drivers/soc/sifive/sifive_ccache.c
+++ b/drivers/soc/sifive/sifive_ccache.c
@@ -38,6 +38,7 @@
 static void __iomem *ccache_base;
 static int g_irq[SIFIVE_CCACHE_MAX_ECCINTR];
 static struct riscv_cacheinfo_ops ccache_cache_ops;
+static int level;
 
 enum {
 	DIR_CORR = 0,
@@ -143,7 +144,7 @@ static const struct attribute_group priv_attr_group = {
 static const struct attribute_group *ccache_get_priv_group(struct cacheinfo *this_leaf)
 {
 	/* We want to use private group for composable cache only */
-	if (this_leaf->level == 2)
+	if (this_leaf->level == level)
 		return &priv_attr_group;
 	else
 		return NULL;
@@ -210,6 +211,9 @@ static int __init sifive_ccache_init(void)
 	if (!ccache_base)
 		return -ENOMEM;
 
+	if (of_property_read_u32(np, "cache-level", &level))
+		return -ENODEV;
+
 	intr_num = of_property_count_u32_elems(np, "interrupts");
 	if (!intr_num) {
 		pr_err("CCACHE: no interrupts property\n");
-- 
2.17.1

